#!/usr/bin/env ruby

module FINDMEDIA

def self.videos
	puts "#{ENV['HOMEDRIVE']}#{ENV['HOMEPATH'].gsub /\\/, '/'}/videos/**/*.mts"
	Dir["#{ENV['HOMEDRIVE']}#{ENV['HOMEPATH'].gsub /\\/, '/'}/videos/**/*.MTS"]
end


if __FILE__ == $0
	v = videos
	puts v.size
end

end # module
