Gem::Specification.new do |s|
  s.name    = "md5-fips"
  s.authors = ["Sal Scotto"]
  s.version = '0.0.3'
  s.date    = '2020-08-26'
  s.description = %q{Provide a MD5 impl that will execture under a fips  enabled server for non communication functions}
  s.email   = 'sal.scotto@gmail.com'
  s.extra_rdoc_files = ['LICENSE', 'README']
  s.files = ["LICENSE", "README", "Rakefile", "ext/md5.h", "ext/md5.c", "ext/extconf.rb"]
  s.require_paths = ['lib','ext']
  s.summary = %q{Clean Room MD5 Digest}
  s.test_files = ["test/test.rb"]
  s.extensions << 'ext/extconf.rb'
  s.homepage = 'http://github.com/washu/md5-fips/tree/master'
  s.rdoc_options = ['--main', 'README']
  s.platform = Gem::Platform::RUBY
end
