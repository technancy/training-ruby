class GuaranteedAddressLine
  def self.find(line)
    AddressLine.find(line) || MissingAddressLine.new
  end

  class AddressLine
    attr_reader :name

    def initialize(line)
      @name = line
    end

    def self.find(line)
      if line == '' || line == nil
        nil
      else
        new(line)
      end
    end
  end

  class MissingAddressLine
    def name
      'no value'
    end
  end
end
