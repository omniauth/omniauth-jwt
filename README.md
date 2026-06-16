# 🔐 Omniauth::JWT

`omniauth-jwt` is a compatibility shim for `omniauth-jwt2`.

New applications should depend on `omniauth-jwt2` directly. This gem exists so existing applications that still depend on `omniauth-jwt` can load the replacement implementation without changing all require paths at once.

## Installation

```ruby
gem "omniauth-jwt"
```

## Runtime behavior

Loading this gem requires `omniauth-jwt2` and leaves implementation behavior to `omniauth-jwt2`.

The generated compatibility require paths are:

```text
omniauth/strategies/jwt, omniauth/jwt
```

## Migration

When you are ready to remove the compatibility layer, replace `omniauth-jwt` with `omniauth-jwt2` in your dependency list and require `omniauth-jwt2` directly.
