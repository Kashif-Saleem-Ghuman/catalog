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
end