require "../src/basic_window/app"

module BasicWindow
  VERSION = {{ `shards version "#{__DIR__}"`.chomp.stringify.downcase }}

  run
end
