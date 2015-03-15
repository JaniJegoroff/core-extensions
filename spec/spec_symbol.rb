require_relative 'spec_helper'

# Test class for Symbol core extension
class SpecSymbol < Minitest::Spec
  describe 'Symbol Core Extensions' do
    it 'should stringify symbol to camel case' do
      :saul.to_s_camel_case.must_be_kind_of(String)
      :mike.to_s_camel_case.must_equal('Mike')
      :better_call_saul.to_s_camel_case.must_equal('BetterCallSaul')
      :better_call_Saul_and_Mike.to_s_camel_case.must_equal('BetterCallSaulAndMike')
      :'better call Saul and Mike'.to_s_camel_case(' ').must_equal('BetterCallSaulAndMike')
    end

    it 'should stringify symbol to snake case' do
      :saul.to_s_snake_case.must_be_kind_of(String)
      :mike.to_s_snake_case.must_equal('mike')
      :betterCallSaul.to_s_snake_case.must_equal('better_call_saul')
    end
  end
end
