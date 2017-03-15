require "jumphash/version"
require "jumphash/jumphash"

module JumpHash
  def self.hash_string(str, buckets)
    JumpHash.hash_key(yield(str), buckets)
  end
end
