#
# Core extensions to String class
#
class String
  #
  # 'better_call_saul'.camel_case #=> 'BetterCallSaul'
  # 'breaking bad'.camel_case(' ') #=> 'BreakingBad'
  #
  def camel_case(separator = '_')
    split(separator).map!(&:capitalize).join
  end

  #
  # 'Better Call Saul'.snake_case #=> 'better_call_saul'
  #
  def snake_case
    downcase.gsub(/\s+/, '_')
  end

  #
  # 'Better Call Saul'.to_sym_snake_case #=> :better_call_saul
  #
  def to_sym_snake_case
    snake_case.to_sym
  end
end
