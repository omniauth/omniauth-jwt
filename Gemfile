# frozen_string_literal: true

source "https://rubygems.org"

shimmed_gem_path = ENV["KETTLE_JEM_SHIMMED_GEM_PATH"].to_s
gem "omniauth-jwt2", path: shimmed_gem_path unless shimmed_gem_path.empty?
gem "omniauth-jwt2", git: "https://github.com/omniauth/omniauth-jwt2.git" if shimmed_gem_path.empty?

gemspec
