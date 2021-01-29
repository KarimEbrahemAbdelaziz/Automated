BUNDLER := $(shell command -v bundle 2>/dev/null)

# Default target, if no is provided
default: setup

# Pre-setup steps
setup: \
	install_bundler_gem \
	install_ruby_gems \
	install_cocoapods


# Install Bundler Gem
install_bundler_gem:
	$(info Checking and install bundler ...)

ifeq ($(BUNDLER),)
	gem install bundler -v '2.2.6'
endif

# Install Ruby Gems
install_ruby_gems:
	$(info Install RubyGems ...)

	bundle install
	
# Install Cocopods dependencies
install_cocoapods:
	$(info Install Cocoapods ...)

	bundle exec pod install