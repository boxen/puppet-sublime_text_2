# Sublime Text Puppet Module for Boxen

[![Build Status](https://travis-ci.org/boxen/puppet-sublime_text_2.png?branch=master)](https://travis-ci.org/boxen/puppet-sublime_text_2)

Install [Sublime Text 3](http://www.sublimetext.com/3) or [Sublime Text 2](http://www.sublimetext.com/), a text-editor/IDE for Mac

## Usage

```puppet
# For the latest build of v3
include sublime_text
sublime_text::package { 'Emmet':
  source => 'sergeche/emmet-sublime'
}

# For the latest version of v2
include sublime_text_2
sublime_text_2::package { 'Emmet':
  source => 'sergeche/emmet-sublime'
}
```

## Required Puppet Modules

None.
