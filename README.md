# A simple Rails app with a few tests

Feel free to fork this repo and try different configurations

## Ruby-specific things to note

* There are multiple ways to set a ruby version
  * via .rvmrc
  * via .ruby-version
  * via the top of the Gemfile
  * via circle.yml
    * unlike the other options, this applies to Circle only
    * If a developer uses this option, he'll likely use this plus one of the
      other 3 options
  * The 4 possibilities above aren't mutually exclusive, that means
    there are 2^4 = 16 different ways someone can set their ruby version
    (Technically 15 ways and 1 way to not-set a Ruby version)
* Dependency Version Management
  * Rubygems, provided by Ruby
  * Bundler, a Rubygem that most production Ruby projects will rely on for
    app dependencies
    * Bundler relies on the Gemfile and Gemfile.lock to specify dependencies
* Command line execution
  * Rubygems installs executables for some gems, which are usually globally
    available.
  * Bundler also does, but doesn't make them globally executable.
    * Bundler-installed executables are meant to be run with `bundle exec
     <cmd>`
  * Rvm provides its own dependency isolation environment called gemsets
  * RVM modifies the $PATH so that gem-executables search for a match in the
    following order:
    * current gemset
    * global
    * system-ruby gems (sudo gem install can put gems here)

## Branches

Branch `unpinned_dependencies` is just that--rebuilding this without any
caching on Circle will always fetch the latest versions of the contained gems.
The ruby version is still pinned by `.ruby-version`.
