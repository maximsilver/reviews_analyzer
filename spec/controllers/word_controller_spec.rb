require 'rails_helper'

RSpec.describe WordController, type: :controller do
  describe 'GET' do
    it 'index' do
      get :index
      expect(response).to be_success
    end
  end
end
