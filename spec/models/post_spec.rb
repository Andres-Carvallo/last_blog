require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'is not valid without an author' do
    post = Post.create(title: 'Prueba 1', content: '1 2 3 4 5 6')
    expect(post).to_not be_valid 
  end
end
