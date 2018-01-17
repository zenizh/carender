module Carender
  class Core
    def initialize(view_context, options)
      @view_context = view_context
      @collection = Carender::Collection.new(*options.values_at(:collection, :column)).grouped
    end

    def render(&block)
      calendar = Carender::Calendar.new(*view_context.params.values_at(:year, :month).map(&:to_i))
      calendar.render(view_context, collection, &block).html_safe
    end

    private

    attr_reader :view_context, :collection
  end
end
