require 'test_helper'
require 'action_view'
require 'oga'

class CarenderTest < Minitest::Test
  module ViewContext
    include ActionView::Context
    include ActionView::Helpers::CaptureHelper

    attr_accessor :params
  end

  include Carender::Helper
  include ViewContext

  def setup
    @params = { year: 2018, month: 1 }
  end

  def test_carender
    html = carender do |date|
      date.to_s
    end

    document = Oga.parse_html(html)
    assert_equal 'Sun', document.xpath('table/tr[1]/th[1]').text
    assert_equal 'Sat', document.xpath('table/tr[1]/th[7]').text
    assert_empty document.xpath('table/tr[2]/td[1]').text
    assert_empty document.xpath('table/tr[6]/td[5]').text
    assert_equal '2018-01-01', document.xpath('table/tr[2]/td[2]').text
  end

  def test_carender_with_no_block
    html = carender
    document = Oga.parse_html(html)
    assert_empty document.xpath('table/tr[2]/td[2]').text
  end

  def test_carender_with_collection
    post = Struct.new(:title, :posted_on)

    posts = [
      post.new('Post #1', Date.new(2018, 1, 1)),
      post.new('Post #2', Date.new(2018, 1, 1)),
      post.new('Post #3', Date.new(2018, 1, 2))
    ]

    html = carender collection: posts, column: :posted_on do |_, posts|
      html = ''
      posts.each do |post|
        html << post.title
      end
      html
    end

    document = Oga.parse_html(html)
    assert_match /Post #1/, document.xpath('table/tr[2]/td[2]').text
    assert_match /Post #2/, document.xpath('table/tr[2]/td[2]').text
    assert_match /Post #3/, document.xpath('table/tr[2]/td[3]').text
  end
end
