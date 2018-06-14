require_relative '../../services/greeter.rb'
require_relative '../../services/hello.rb'

describe Services::Greeter do
  let(:subject) { described_class.new(nil) }

  describe '#greet_using_factory' do
    it 'says hello in french' do
      expect(subject.greet_using_factory).to eq('Bonjour')
    end
  end

  describe '#greet_using_static' do
    it 'says hello in the language specified' do
      expect(subject.greet_using_static(:de)).to eq('Guten Tag')
    end
  end

  describe '#greet_using_di' do
    let(:hello) { instance_double('Services::Hello') }
    let(:subject) { described_class.new(hello) }

    before do
      allow(hello).to receive(:say_hello).and_return('Hello')
    end

    it 'says hello in the language specified' do
      expect(subject.greet_using_di).to eq('Hello')
    end
  end

  describe '#greet_using_constructor' do
    it 'says hello in the language specified' do
      expect(subject.greet_using_constructor(:en)).to eq('Hello')
    end
  end
end
