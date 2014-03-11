require 'openssl'

class OpenSSL::SSL::SSLContext
  if not method_defined?(:insecure_openssl_verify_mode=)
    alias :insecure_openssl_verify_mode= :verify_mode= 

    def verify_mode=(mode)
      if mode == OpenSSL::SSL::VERIFY_NONE
        STDERR.puts "insecure SSL verify mode called from #{caller}, exiting"
        Kernel.exit!
      else
        insecure_openssl_verify_mode=(mode)
      end
    end
  end
end
