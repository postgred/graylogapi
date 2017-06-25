describe GraylogAPI::Client::Response, vcr: true do
  include_context 'graylogapi'

  subject(:response) { graylogapi.client.json_request(:get, '/') }

  it 'have code' do
    expect(response.code.class).to eq Fixnum
  end

  it 'have body' do
    expect(response.body.class).to eq Hash
  end

  it 'get field like a hash' do
    expect(response['cluster_id']).to eq response.body['cluster_id']
  end

  it 'have fields from body' do
    expect(response.keys).to eq response.body.keys
  end

  it 'check success' do
    expect(response.success?).to eq true
  end
end
