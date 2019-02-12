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

  describe '#pop' do
    subject { stack.pop }
    context '空のstack' do
      describe 'nilを返す' do
        it { expect(subject).to be nil }
      end
      describe 'lengthは0' do
        it do
          subject
          expect(stack.length).to eq 0
        end
      end
    end
    context '1をpush済のstack' do
      before do
        stack.push 1
      end
      describe '1を返す' do
        it { expect(subject).to eq 1}
      end
      describe 'lengthは0' do
        it do
          subject
          expect(stack.length).to eq 0
        end
      end
    end
    context '1と5push済のstack' do
      before do
        stack.push 1
        stack.push 5
      end
      describe '5を返す' do
        it { expect(subject).to eq 5 }
      end
      describe 'lengthは1' do
        it do
          subject
          expect(stack.length).to eq 1
        end
      end
    end
  end

  describe '#peek' do
    subject { stack.peek }
    context '1をpush済のstack' do
      before { stack.push 1 }
      it '1を返す' do
        expect(subject).to eq 1
      end
    end
  end
end
