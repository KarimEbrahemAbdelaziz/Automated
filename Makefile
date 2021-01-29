BUNDLER := $(shell command -v bundle 2>/dev/null)

# Default target, if no is provided
default: setup

# Pre-setup steps
setup:
    install_bundler_gem
	bundle install
	bundle exec pod install


# Install Bundler Gem
install_bundler_gem:
	$(info Checking and install bundler ...)

ifeq ($(BUNDLER),)
	gem install bundler -v '2.2.6'