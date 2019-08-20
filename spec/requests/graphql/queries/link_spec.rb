require 'rails_helper'
RSpec.describe Queries::AllLinks, type: :request do
  subject { post graphql_path, params: { query: query } }

  let!(:links) { create_list(:link, 3) }

  let(:query) do
    <<~QUERY
      query{
        allLinks{
          id
          description
          url
        }
      }
    QUERY
  end

  it 'response body is all Links' do
    subject
    json = JSON.parse(response.body)
    data = json['data']['allLinks']
    expect(data.size).to eq links.size
  end
end