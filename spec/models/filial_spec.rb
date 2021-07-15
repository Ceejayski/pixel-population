require 'rails_helper'

RSpec.describe Filial, type: :model do
  context 'Association' do 
    it 'belong to parent' do
      t = Filial.reflect_on_association(:parent)
      expect(t.macro).to eq( :belongs_to) 
    end

    it 'belong to child' do
      t = Filial.reflect_on_association(:child)
      expect(t.macro).to eq( :belongs_to) 
    end
  end
end
