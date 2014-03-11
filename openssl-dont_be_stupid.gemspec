Gem::Specification.new do |s|
  s.name = 'openssl-dont_be_stupid'
  s.version = '0.0.1'
  s.date = '2014-03-11'
  s.summary = "Causes applications to die in a fire if they use OpenSSL::SSL::VERIFY_NONE"
  s.authors = ['Jeff Weiss']
  s.email = 'openssl-dont_be_stupid-gem@jeffweiss.org'
  s.files = ['lib/openssl/dont_be_stupid.rb']
  s.license = 'MIT'
  s.homepage = "https://github.com/jeffweiss/openssl-dont_be_stupid"
  s.description = "OpenSSL::SSL::VERIFY_NONE is *horrible*. Don't use it and don't allow any other libraries to use it either."
end
