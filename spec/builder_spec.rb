require './builder'

RSpec.describe Builder, "#build" do
  it "prints the thing" do
    tf_snippet = Builder.new('blah.tf').provider('aws').generate
    expect(tf_snippet).to eq (
<<~HEREDOC
  provider "aws" {

  }
HEREDOC
  )
  end
end
