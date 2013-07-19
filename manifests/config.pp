# Internal: Prepare your system for Sublime Text 2 packages.
#
# Examples
#
#   include sublime_text_2::config
class sublime_text_2::config {
  $dir = "/Users/${::luser}/Library/Application Support/Sublime Text 2"
  $package_dir = "${dir}/Packages"
  $user_package_dir = "${package_dir}/User"
  $installed_package_dir = "${dir}/Installed Packages"

  file { [$dir, $package_dir, $user_package_dir, $installed_package_dir]:
    ensure => directory
  }
}
