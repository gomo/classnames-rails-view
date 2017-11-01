require 'rails_helper'

describe 'Classnames::Rails::View::Core' do
  let(:core) { Classnames::Rails::View::Core.new }

  context 'string args' do
    it 'should be join by a space delimiter.' do
      expect(core.exec).to eq('')
      expect(core.exec('')).to eq('')
      expect(core.exec('foo')).to eq('foo')
      expect(core.exec('foo bar')).to eq('foo bar')
    end
  end

  context 'hash args' do
    it 'should be output the class when the value is true.' do
      expect(core.exec(foo: false)).to eq('')
      expect(core.exec(foo: true)).to eq('foo')
      expect(core.exec(foo: true, bar: false)).to eq('foo')
      expect(core.exec(foo: true, bar: true)).to eq('foo bar')
      expect(core.exec(foo: false, bar: true)).to eq('bar')
      expect(core.exec(foo: false, bar: false)).to eq('')

      expect(core.exec({ foo: false }, { bar: true })).to eq('bar')
      expect(core.exec({ foo: true }, { bar: true })).to eq('foo bar')
      expect(core.exec({ foo: true, qux: false }, { bar: true, quux: false })).to eq('foo bar')
      expect(core.exec({ foo: true, qux: true }, { bar: true, quux: false })).to eq('foo qux bar')
      expect(core.exec({ foo: true, qux: true }, { bar: true, quux: true })).to eq('foo qux bar quux')
      expect(core.exec({ foo: true, qux: true }, { bar: false, quux: true })).to eq('foo qux quux')
      expect(core.exec({ foo: false, qux: true }, { bar: false, quux: true })).to eq('qux quux')
      expect(core.exec({ foo: false, qux: false }, { bar: false, quux: true })).to eq('quux')
      expect(core.exec({ foo: false, qux: false }, { bar: false, quux: false })).to eq('')
    end
  end

  context 'mixed args' do
    it 'should be output the class attribute with space according as the argument.' do
      expect(core.exec('baz', foo: false, bar: false)).to eq('baz')
      expect(core.exec('baz', foo: true, bar: false)).to eq('baz foo')
      expect(core.exec('baz', foo: true, bar: true)).to eq('baz foo bar')

      expect(core.exec({ foo: true, bar: true }, 'baz')).to eq('foo bar baz')
      expect(core.exec({ foo: true, bar: false }, 'baz')).to eq('foo baz')
      expect(core.exec({ foo: false, bar: false }, 'baz')).to eq('baz')
    end
  end

  context 'nil and false args' do
    it 'should be ignored.' do
      expect(core.exec(nil, { foo: nil, bar: true }, false)).to eq('bar')
    end
  end
end
