#!/usr/bin/env ruby
# Show Ruby build configuration info

require 'rbconfig'

c = RbConfig::CONFIG

puts "=== Ruby Build Info ==="
puts
puts "Ruby:     #{RUBY_VERSION} (#{RUBY_RELEASE_DATE})"
puts "Platform: #{RUBY_PLATFORM}"
puts "Prefix:   #{c['prefix']}"
puts

puts "=== Compiler ==="
puts "CC:       #{c['CC']}"
puts "CXX:      #{c['CXX']}"
puts "CFLAGS:   #{c['CFLAGS']}"
puts "CXXFLAGS: #{c['CXXFLAGS']}"
puts "CPPFLAGS: #{c['CPPFLAGS']}"
puts "LDFLAGS:  #{c['LDFLAGS']}"
puts

puts "=== Optimization Flags ==="
puts "optflags:   #{c['optflags']}"
puts "debugflags: #{c['debugflags']}"
puts "warnflags:  #{c['warnflags']}"
puts

puts "=== Configure ==="
puts c['configure_args']
puts

puts "=== Libraries ==="
puts "LIBS:     #{c['LIBS']}"
puts "DLDLIBS:  #{c['DLDLIBS']}"
puts "SOLIBS:   #{c['SOLIBS']}"
puts

puts "=== Paths ==="
puts "bindir:     #{c['bindir']}"
puts "libdir:     #{c['libdir']}"
puts "includedir: #{c['includedir']}"
puts "sitedir:    #{c['sitedir']}"
