#!/usr/bin/env ruby

module FINDMEDIA

def self.videos(dir = "#{ENV['HOMEDRIVE']}#{ENV['HOMEPATH'].gsub(/\\/, '/')}/videos")
	# puts "#{dir}/**/*.MTS" if $verbose
	Dir["#{dir}/**/*.MTS"]
end

def self.digest(path)
	Digest::MD5.file(path).to_s
end


if __FILE__ == $0
	v = videos
	puts v.size
end

end # module
