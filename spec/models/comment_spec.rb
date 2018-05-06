require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Database table' do
    it { is_expected.to have_db_column :commenter }
    it { is_expected.to have_db_column :body }
    it { should belong_to :article }
  end

  describe 'Factory' do
    it 'has a valid' do
      expect(FactoryBot.create(:article)).to be_valid
    end
  end
end
