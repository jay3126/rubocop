# encoding: utf-8

require 'spec_helper'

module Rubocop
  module Cop
    describe SpaceAfterComma do
      let (:space) { SpaceAfterComma.new }

      it 'registers an offence for block argument commas' do
        inspect_source(space, 'file.rb', ['each { |s,t| }'])
        space.offences.map(&:message).should ==
          ['Space missing after comma.']
      end
    end
  end
end
