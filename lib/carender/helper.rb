module Carender
  module Helper
    def carender(options = {}, &block)
      carender = Carender::Core.new(self, options)
      carender.render(&block)
    end
  end
end
