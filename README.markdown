# whmcs-ruby
WHMCS API Ruby Bindings.

Initial fork of dotblock/whmcs-ruby with new(er) features added from his initial release.

whmcs-ruby provides Ruby bindings for the [WHMCS API](http://wiki.whmcs.com/API:Functions).

## Usage
```ruby
require 'whmcs'

WHMCS.configure do |config|
  config.api_url      = 'http://example.com/includes/api.php'
  config.api_username = 'someusername'
  config.api_password = 'c4ca4238a0b923820dcc509a6f75849b' # md5 hash
end

WHMCS::Client.get_clients_details(:clientid => '1')
```

See the [documentation](http://dotblock.github.com/whmcs-ruby/) for more
details.


## Installation

```bash
git clone https://github.com/charliedrage/whmcs && cd whmcs && gem build whmcs.gemspec && gem install *.gem
```

## Contact / Issues
Please email charlie@chalriedrage.com or open an issue.
