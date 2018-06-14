require_relative '../../services/hello.rb'

describe Services::Hello do
  describe '#create_in_french' do
    it 'says hello in french' do
      hello = described_class.create_in_french
      expect(hello.say_hello).to eq('Bonjour')
    end
  end

  describe '#say_hello_static' do
    it 'says hello in the language specified' do
      expect(described_class.say_hello_static(:de)).to eq('Guten Tag')
    end
  end

  describe '#say_hello' do
    let(:hello) { described_class.new(:en) }

    it 'says hello in the language specified' do
      expect(hello.say_hello).to eq('Hello')
    end
  end
end
