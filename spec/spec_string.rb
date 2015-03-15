require_relative 'spec_helper'

# Test class for String core extension
class SpecString < Minitest::Spec
  describe 'String Core Extensions' do
    it 'should return camel case string' do
      'better_call_saul'.camel_case.must_be_kind_of(String)
      'saul'.camel_case.must_equal('Saul')
      'better_call_saul'.camel_case.must_equal('BetterCallSaul')
      'better call saul and mike'.camel_case(' ').must_equal('BetterCallSaulAndMike')
    end

    it 'should return snake case string' do
      'Better Call Saul'.snake_case.must_be_kind_of(String)
      'Saul'.snake_case.must_equal('saul')
      'Better Call Saul'.snake_case.must_equal('better_call_saul')
      'better call Saul and Mike'.snake_case.must_equal('better_call_saul_and_mike')
    end

    it 'should symbolize string to snake case' do
      'Better Call Saul'.to_sym_snake_case.must_be_kind_of(Symbol)
      'saul'.to_sym_snake_case.must_equal(:saul)
      'Better Call Saul'.to_sym_snake_case.must_equal(:better_call_saul)
      'better call Saul and Mike'.to_sym_snake_case.must_equal(:better_call_saul_and_mike)
    end
  end
end
