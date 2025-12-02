require 'rspec'
require './2024/1/solution.rb'

RSpec.describe Solution do
  let(:input) do
    [
      [3, 4],
      [4, 3],
      [2, 5],
      [1, 3],
      [3, 9],
      [3, 3],
    ]
  end
  describe 'Part One' do
    let(:expected_output) { 11 }
    subject { described_class.new(1, input) }

    describe '#call' do
      it do
        expect(subject.call).to eq expected_output
      end
    end
  end

  describe 'Part Two' do
    let(:expected_output) { 31 }
    subject { described_class.new(2, input) }

    describe '#call' do
      it do
        expect(subject.call).to eq expected_output
      end
    end
  end
end
