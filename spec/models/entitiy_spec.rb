require 'rails_helper'

RSpec.describe Entity, type: :model do
  describe 'validates' do
    subject { Entity.new name: 'test entity', amount: 250, user_id: 1 }

    before { subject.save }

    it 'should have a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'should have an amount' do
      subject.amount = nil
      expect(subject).to_not be_valid
    end

    it 'should not have a blank name' do
      subject.name = ''
      expect(subject).to_not be_valid
    end
  end
end
