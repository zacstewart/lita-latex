require "spec_helper"

describe Lita::Handlers::Latex, lita_handler: true do

  it { routes_command('latex me \Sigma').to(:latex) }

  it 'returns a url for the render latex' do
    send_command 'latex me \Sigma'
    expect(replies.last).to eq('http://chart.apis.google.com/chart?cht=tx&chl=%5CSigma#.png')
  end

end
