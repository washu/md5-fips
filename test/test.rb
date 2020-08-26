require File.join(File.dirname(__FILE__), '..', 'ext', 'md5fips')
require 'test/unit'


class TestPartial < Test::Unit::TestCase
  def test_hash_funtion
    item = "this is some text".freeze
    hash_a = Digest::MD5Fips.hexdigest(item)
    hash_b = Digest::MD5.hexdigest(item)
    assert_equal hash_a, hash_b
  end

end
