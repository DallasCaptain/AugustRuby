require 'rails_helper'

RSpec.describe Pizza, type: :model do
 
  it 'should not save if sauce is blank' do
    pizza = Pizza.new(
      sauce: '',
      crust: 'thin',
      size: 12
    )
    expect(pizza).to be_invalid
  end

  it 'should not save if crust is blank' 

  it 'should not save if size is blank' 


end
