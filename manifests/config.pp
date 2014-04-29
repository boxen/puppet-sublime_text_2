# Internal: Prepare your system for Sublime Text packages.
#
# Examples
#
#   include sublime_text::config
class sublime_text::config {
  $dir = "/Users/${::luser}/Library/Application Support/Sublime Text"
  $packagedir = "${dir}/Packages"

  file { [$dir, $packagedir]:
    ensure => directory
}
