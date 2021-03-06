
module CouchDB

  # The Row class acts as a wrapper for a CouchDB view result row.
  class Row

    attr_reader :database
    attr_reader :id
    attr_reader :key
    attr_reader :value

    def initialize(database, attributes = { })
      @database, @id, @key, @value, @document = database, *attributes.values_at("id", "key", "value", "doc")
    end

    def document
      Document.new @database, @document
    end

  end

end
