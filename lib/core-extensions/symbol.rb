#
# Core extensions to Symbol class
#
class Symbol
  #
  # :better_call_saul.to_s_camel_case => 'BetterCallSaul'
  # :'breaking bad'.to_s_camel_case(' ') => 'BreakingBad'
  #
  def to_s_camel_case(separator = '_')
    to_s.downcase.split(separator).map(&:capitalize).join
  end

  #
  # :betterCallSaul.to_s_snake_case => 'better_call_saul'
  #
  def to_s_snake_case
    regexp = /(?=[A-Z])/
    to_s.split(regexp).join('_').downcase
  end
end
