module Carender
  class Railtie < ::Rails::Railtie
    initializer 'carender' do
      ActionView::Base.send(:include, Carender::Helper)
    end
  end
end
