class Provider
  def initialize(provider_name)
    @name = provider_name
  end

  def build()
    # Create the providers block
    return(
<<~HEREDOC
  provider "#{@name}" {

  }
HEREDOC
)
  end

end
