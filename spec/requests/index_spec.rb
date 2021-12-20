# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'classNames', type: :request do
  it 'should be able to use in view.' do
    get '/'
    assert_select '#foo-baz' do |elems|
      expect(elems.first.attributes['class'].value).to eq('foo baz')
    end
  end
end
