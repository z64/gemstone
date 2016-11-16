module Bot
  # Represents a bot configuration.
  class Config
    # Initializes a new config.
    # This creates methods for each key in the supplied YAML file.
    def initialize(file)
      @config = YAML.load_file file
      @config.keys.each do |key|
        self.class.send(:define_method, key) do
          @config[key]
        end
      end
    end
  end
end
