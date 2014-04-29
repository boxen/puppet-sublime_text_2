# Install Sublime Text 2 into /Applications
#
# Usage:
#
#     include sublime_text::v2
class sublime_text::v2 ($version = '2.0.2') {
  package { 'Sublime Text 2':
    provider => 'appdmg',
    source   => "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20${version}.dmg";
  }

  file { "${boxen::config::bindir}/subl2":
    ensure  => link,
    target  => '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl',
    mode    => '0755',
    require => Package['Sublime Text 2'],
  }
}

