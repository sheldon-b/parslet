# Matches a string of characters.
#
# Example:
#
#   ignore # ignores subsequent input
#
class Parslet::Atoms::Ignore < Parslet::Atoms::Base
  attr_reader :str
  def initialize
    super
  end

  def try(source, context, consume_all)
    return succ(source.consume(source.chars_left))
  end

  def to_s_inner(prec)
    "ignore"
  end
end
