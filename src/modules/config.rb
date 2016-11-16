module Bot
  # Represents a bot configuration.
  class Config
    # Initializes a new config.
    # This creates methods for each key in the supplied `config.yaml` file.
    def initialize
      @config = YAML.load_file("#{Dir.pwd}/data/config.yaml")
      @config.keys.each do |key|
        self.class.send(:define_method, key) do
          @config[key]
        end
      end
    end
  end
end
