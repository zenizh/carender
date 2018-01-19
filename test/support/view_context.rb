module ViewContext
  include ActionView::Context
  include ActionView::Helpers::CaptureHelper

  attr_accessor :params
end
