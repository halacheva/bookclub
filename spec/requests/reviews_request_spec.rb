require 'rails_helper'

RSpec.describe 'Reviews', type: :request do
  fixtures(:users, :books)

  let(:user) { User.first }
  let(:valid_params) { { book_id: Book.first.id, title: 'New title', description: 'New description', } }
  let(:invalid_params) { {book_id: '', title: 'Title', description: 'Description'} }

  it 'creates a new review' do
    sign_in user

    get '/reviews/new'

    expect(response).to have_http_status :ok
    expect(response).to render_template(:new)

    post '/reviews', params: {review: valid_params}
    expect(response).to redirect_to('/')
    follow_redirect!

    expect(response.body).to include('Successfully saved your review!')
  end

  it 'does not creates a new review when not valid' do
    sign_in user

    get '/reviews/new'

    expect(response).to have_http_status :ok
    expect(response).to render_template(:new)

    post '/reviews', params: {review: invalid_params}
    expect(response).to render_template(:new)

    expect(response.body).to include('Your review could not be saved!')
    expect(response.body).to include('Book must exist')
  end
end
