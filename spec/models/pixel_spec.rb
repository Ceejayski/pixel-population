require 'rails_helper'

RSpec.describe Pixel, type: :model do
  context 'Check Validations' do
    subject { build(:pixel) } 
    it { should validate_presence_of(:R) }
    it { should validate_presence_of(:G) }
    it { should validate_presence_of(:B) }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
    it 'should fail if Gene sequence is between not 0-255' do 
      @pixel2 = build(:pixel,name: 'stellar', R: -1)
      expect(@pixel2).to_not be_valid
    end
  end

  context 'Check Association' do

    it 'have many parents' do
      t = Pixel.reflect_on_association(:parents)
      expect(t.macro).to eq( :has_many) 
    end
    it 'have many children' do
      t = Pixel.reflect_on_association(:children)
      expect(t.macro).to eq( :has_many) 
    end
  end

end
