require 'rails_helper'

RSpec.describe EventsController, type: :request do
  let(:event) { create(:event) }
  describe 'GET #index' do
    it 'returns http success' do
      get events_path
      expect(response).to have_http_status(:success)
    end
  end
end
