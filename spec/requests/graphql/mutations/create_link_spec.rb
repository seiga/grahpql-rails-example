require 'rails_helper'
RSpec.describe Mutations::CreateLink, type: :request do
  subject { post graphql_path, params: { query: query } }

  let!(:link) { build(:link) }

  let(:query) do
    <<~QUERY
      mutation{
        createLink(
          description: "#{link.description}",
          url: "#{link.url}"
        ){
          id
          description
          url
        }
      }
    QUERY
  end

  it 'response body is Link data' do
    subject
    json = JSON.parse(response.body)
    data = json['data']['createLink']
    expect(data).to include(
      'id'          => be_present,
      'description' => link.description,
      'url'         => link.url,
    )
  end
end