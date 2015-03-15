#
# Core extensions to Symbol class
#
class Symbol
  #
  # :better_call_saul.to_s_camel_case => 'BetterCallSaul'
  # :'breaking bad'.to_s_camel_case(' ') => 'BreakingBad'
  #
  def to_s_camel_case(aSeparator = '_')
    to_s.downcase.split(aSeparator).map(&:capitalize).join
  end

  #
  # :betterCallSaul.to_s_snake_case => 'better_call_saul'
  #
  def to_s_snake_case
    regExp = /(?=[A-Z])/
    to_s.split(regExp).join('_').downcase
  end
end
