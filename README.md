There's no excuse for using `OpenSSL::SSL::VERIFY_NONE`. This gem will prevent
that from happening because your application will die a fiery death if you or
any library you use ever attempts to set the `verify_mode` to
`OpenSSL::SSL::VERIFY_NONE`.

```
$ gem install openssl-dont_be_stupid
$ irb
> require 'openssl/dont_be_stupid'
> ctx = OpenSSL::SSL::SSLContext.new
> ctx.verify_mode = OpenSSL::SSL::VERIFY_NONE
/cue fiery death
```
