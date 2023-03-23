require 'spec_helper'

RSpec.describe Label do
  let(:title) { 'Label title' }
  let(:color) { 'red' }

  describe '::new' do
    subject { described_class.new(title, color) }

    it 'instantiates the class with 4 arguments' do
      expect(subject).to be_an_instance_of(described_class)
    end
  end
end

describe Label do
  before :each do
    @label_item = Label.new('TEST LABEL NAME', 'RED')
  end
  context 'Label class' do
    it 'A newly created Label has a title of type String' do
      expect(@label_item.title).not_to be_nil
      expect(@label_item.title).to be_a(String)
    end

    it ' detect the Label color' do
      expect(@label_item.color).to eq 'RED'
    end

    it ' detect the Label name' do
      expect(@label_item.title).to eq 'TEST LABEL NAME'
    end
  end
end
