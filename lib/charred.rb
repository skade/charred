%w(readline tinder).each {|l| require l }

module Charred
  def self.campfire; @campfire ||= Tinder::Campfire.new ARGV[0], :token => ARGV[1]; end

  def self.room; @room ||= campfire.rooms.first; end
end