# encoding: utf-8

require 'spec_helper'

module Rubocop
  module Cop
    describe IfWithSemicolon do
      let (:iws) { IfWithSemicolon.new }

      it 'registers an offence for one line if/;/end' do
        inspect_source(iws, '', ['if cond; run else dont end'])
        iws.offences.map(&:message).should ==
          ['Never use if x; Use the ternary operator instead.']
      end
    end
  end
end
