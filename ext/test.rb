require 'md5fips'

# read 10 bytes of this file at a time and compute a md5 partial of each chunk 

BUF_SIZE=1024

hasher = Digest::MD5Fips.new
offset = 0
total = File.size(__FILE__)

until offset >= total do
  buf = nil
  File.open(__FILE__, 'rb') do|io|
    io.seek(offset, IO::SEEK_SET)
    buf = io.readpartial(BUF_SIZE)
    hasher.update(buf)
  end
  # advance the offset
  offset += buf.size
end

puts hasher.hexdigest
system("md5sum #{__FILE__}")
