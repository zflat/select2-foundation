require 'rails/generators'

module Select2Foundation
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc "Install Select2-Foundation within a Rails project"
      source_root File.join(File.dirname(__FILE__), "templates")
      class_option :singular, :desc => "When true, create settings that do not import from Zurb scss", :type => :boolean

      def add_assets
        create_app_scss true
        insert_into_file File.join(stylesheets_base_dir, "application#{detect_css_format[0]}"), "#{detect_css_format[1]} require select2/select2-foundation\n", :after => "foundation_and_overrides\n"
        if not options.singular?
          insert_into_file  File.join(stylesheets_base_dir, "_settings_select2.scss"), "\n@import 'settings';\n@import 'foundation';\n", :after => "// foundation settings"
        end
      end

      def detect_css_format
        %w(.css .css.sass .sass .css.scss .scss).each do |ext|
          if File.exist?(File.join(stylesheets_base_dir, "application#{ext}"))
            if ext.include?(".sass") || ext.include?(".scss")
              return [ext, "//="]
            else
              return [ext, " *="]
            end
          end
        end
      end

      def create_app_scss(call=false)
        if call
          template "_settings_select2.scss", File.join(stylesheets_base_dir, "_settings_select2.scss")
        end
      end

      private

      def stylesheets_base_dir
        File.join("app", "assets", "stylesheets")
      end

    end
  end
end
