require 'spec_helper'

RSpec.describe Stack do
  let(:stack) { Stack.new }
  describe '#push'do
    subject { stack.push 1 }
    it { expect(subject).to eq stack}
  end
  context '1をpush済のstack'do
    before { stack.push 1}
    describe 'lengthが1'do
      subject { stack.length }
      it { expect(subject).to eq 1}
    end
  end
end
