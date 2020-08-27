require File.join(File.dirname(__FILE__), '..', 'ext', 'md5fips')
require 'test/unit'


class TestPartial < Test::Unit::TestCase
  def test_hash_funtion
    item = "this is some text".freeze
    hash_a = Digest::MD5Fips.hexdigest(item)
    hash_b = Digest::MD5.hexdigest(item)
    assert_equal hash_a, hash_b
  end

  def test_auto_patch
    x = Digest::MD5Fips.enable_fips
    if OpenSSL.fips_mode
      assert_true x, "fips was on, but lib didnt see it"
    else
      assert_false x, "fips was off!"
    end
  end
end
