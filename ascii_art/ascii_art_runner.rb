require_relative "lib/commandlineapp"
require_relative "lib/ascii_art_cli"

AsciiArt.new($stdin, $stdout).run
