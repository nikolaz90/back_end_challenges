module Transaction
  class ActionTransaction
    def initialize(attributes = {})
      @who = attributes[:who]
      @type = attributes[:type]
      @amount = attributes[:amount]
    end

    def self.create(attributes = {})
      new(attributes).hashify_self
    end

    def hashify_self
      {
        who: @who,
        type: @type,
        amount: @amount
      }
    end
  end
end
