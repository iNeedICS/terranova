require './provider'

class Builder
  def initialize(name)
    @name = name
    @providers = []
  end

  def provider(provider_name)
    @providers << Provider.new(provider_name)
    return self
  end

  def generate()
    stringio = StringIO.new("", "r+")
    # Generate file
    @providers.each do |prov|
      stringio.write(prov.build)
    end
    return stringio.string
  end

  def build()
    File.open(@name, "w") do |f|
      f.write(generate)
    end
  end

end
