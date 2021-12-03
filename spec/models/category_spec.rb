require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'validates' do
    subject { Category.new name: 'test category', user_id: 1 }

    before { subject.save }

    it 'should have a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'should not have a blank name' do
      subject.name = ''
      expect(subject).to_not be_valid
    end
  end
end
