require 'rails_helper'

RSpec.describe Sandwhiche, type: :model do
  it 'should save with valid attributes' do
    expect(build(:sandwhich)).to be_valid
  end

  it 'should be spicy and a sub' do
    expect(build(:sandwhich, :spicy, :sub).bread).to eq("French")
    expect(build(:sandwhich, :spicy, :sub).cheese).to eq("PepperJack")
  end

  context "with invalid attributes" do
    
    it 'should not save if bread is blank' do
      expect(build(:sandwhich, bread: "")).to be_invalid
    end

  end
end
