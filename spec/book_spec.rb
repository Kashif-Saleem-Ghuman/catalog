require 'spec_helper'

RSpec.describe Book do
  let(:publisher) { 'Kashif' }
  let(:cover_state) { 'good' }
  let(:publish_date) { '2018-01-01' }
  let(:name) { 'Ruby' }

  describe '::new' do
    subject { described_class.new(name, publisher, cover_state, publish_date) }

    it 'instantiates the class with 4 arguments' do
      expect(subject).to be_an_instance_of(Book)
    end
  end

  describe '#can_be_archived?' do
    subject { described_class.new(name, publisher, cover_state, publish_date) }


    context 'when cover_state is good' do
      let(:cover_state) { 'good' }

      it 'returns false' do
        expect(subject.can_be_archived?).to be false
      end
    end

    context 'when cover_state is bad' do
      let(:cover_state) { 'bad' }

      it 'returns true' do
        expect(subject.can_be_archived?).to be true
      end
    end

    context 'when publish_date is 2022-01-01' do
      let(:publish_date) { '2022-01-01' }

      it 'returns false' do
        expect(subject.can_be_archived?).to be false
      end
    end
  end
end