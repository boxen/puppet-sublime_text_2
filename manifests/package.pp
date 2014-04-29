# Public: Install a Sublime Text package.
#
# namevar - The name of the package.
# source  - The location of the git repository containing the package.
#
# Examples
#
#   sublime_text::package { 'Emmet':
#     source => 'sergeche/emmet-sublime'
#   }
define sublime_text::package($source) {
  require sublime_text::config

  repository { "${sublime_text::config::packagedir}/${name}":
    source => $source
  }
}
