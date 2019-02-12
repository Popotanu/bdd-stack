require 'spec_helper'

RSpec.describe Stack do
  let(:stack) { Stack.new }

  describe '#push'do
    subject { stack.push 1 }
    it { expect(subject).to eq stack}
  end

  describe '#length' do
    context '1をpush済のstack'do
      before { stack.push 1}
      describe 'lengthが1'do
        subject { stack.length }
        it { expect(subject).to eq 1}
      end
    end
    context '1と5をpush済のstack' do
      before do
        stack.push 1
        stack.push 5
      end
      describe 'lengthが2' do
        subject { stack.length }
        it { expect(subject).to eq 2}
      end
    end
  end
end
