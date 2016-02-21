# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Gist.destroy_all

Gist.create(
  name: "preprend.md",
  description: "some gist",
  content: "module Bar
            def my_method
              'inside module'
            end
          end

          class Foo
            include Bar

            def my_method
              'inside class'
            end
          end

          x = Foo.new
          p x.my_method
          > 'inside class'
          ```
          Time to prepend !
          ```ruby
          module Bar
            def my_method
              'inside module'
            end
          end

          class Foo
            prepend Bar

            def my_method
              'inside class'
            end
          end

          x = Foo.new
          p x.my_method
          > 'inside module'",
  category_id: 1
)

Gist.create(
  name: "conf_sublime.css",
  description: "some other gist",
  content: "'always_show_minimap_viewport': true,
            'color_scheme': 'Packages/User/enlightened.tmTheme',
            'default_line_ending': 'unix',
            'draw_white_space': 'all',
            'ensure_newline_at_eof_on_save': true,
            'font_face': 'Source Code Pro for Powerline',
            'font_size': 14,
            'highlight_modified_tabs': true,
            'rulers': [80],
            'ignored_packages':['Vintage'],
            'indent_guide_options': ['draw_normal', 'draw_active'],
            'line_padding_bottom': 2,
            'line_padding_top': 2,
            'material_theme_tabs_autowidth': true,
            'overlay_scroll_bars': 'enabled',
            'scroll_past_end': true,
            'tab_size': 2,
            'theme': 'Dark-Material.sublime-theme',
            'translate_tabs_to_spaces': true,
            'trim_trailing_white_space_on_save': true",
  category_id: 2
)

Gist.create(
  name: "conf_sublime.css",
  description: "some other gist",
  content: "Remove old kernels files
            You can see should restart the server when you see *** System restart required *** when you start ssh
            You can restart with sudo shutdown -r now
            You can see your current kernel version with uname -r
            You can see all kernel versions in /lib/modules/

            1) Delete perimated packages

            sudo apt-get autoclean

            2) Delete cache

            sudo apt-get clean

            3) Delete installed packages as dependencies which have been unused

            sudo apt-get autoremove",
  category_id: 3
)
