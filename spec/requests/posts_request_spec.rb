require 'rails_helper'

RSpec.describe "Posts", type: :request do

  describe 'GET index' do
    it 'returns a successful response' do
      get "/posts/"
      expect(response).to be_successful
    end
    it 'assigns @posts' do
        post = Post.create(title: 'Post Title', content: 'asdf', author: 'Jhon Doe')
        posts = Post.all
        get "/posts/"
        expect(assigns(:posts)).to eq(posts)
    end
    it 'renders the index template' do
      get "/posts/"
        expect(response).to render_template('index')
    end
end

end
