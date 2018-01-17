module Carender
  class Collection
    def initialize(collection, column)
      @collection = collection || []
      @column = column
      @grouped = {}
    end

    def grouped
      return @grouped unless @grouped.empty?

      collection.each do |c|
        date = c.send(column).to_date
        @grouped[date] = [] unless @grouped[date]
        @grouped[date] << c
      end

      @grouped
    end

    private

    attr_reader :collection, :column
  end
end
