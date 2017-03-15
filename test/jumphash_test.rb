require "test_helper"

class JumpHashTest < Minitest::Test
  def setup
    @buckets = 256
  end

  def test_hash_key
    assert_equal 80, JumpHash.hash_key(314159265359, @buckets)
  end

  def test_hash_string
    hash = JumpHash.hash_string("foobar", @buckets) { |str| XXhash.xxh64(str) }
    assert_equal 76, hash
  end
end
