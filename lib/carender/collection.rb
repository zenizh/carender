module Carender
  class Collection
    def initialize(collection, column)
      @collection = collection || []
      @column = column
    end

    def group
      grouped_collection = Hash.new([])

      collection.each do |c|
        date = c.send(column).to_date
        grouped_collection[date] = [] if grouped_collection[date].empty?
        grouped_collection[date] << c
      end

      grouped_collection
    end

    private

    attr_reader :collection, :column
  end
end
