module Carender
  class Core
    def initialize(view_context, options)
      @view_context = view_context
      @collection = options[:collection] || []
      @column = options[:column]
    end

    def render(&block)
      calendar = Carender::Calendar.new(year, month)
      calendar.render(view_context, grouped_collection, &block).html_safe
    end

    private

    attr_reader :view_context, :collection, :column

    def year
      view_context.params[:year].to_i
    end

    def month
      view_context.params[:month].to_i
    end

    def grouped_collection
      Hash.new([]).tap do |hash|
        collection.each do |c|
          date = c.send(column).to_date
          hash[date] = [] if hash[date].empty?
          hash[date] << c
        end
      end
    end
  end
end
