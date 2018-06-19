# chef-rebar3

[![Cookbook Version](https://img.shields.io/cookbook/v/git.svg)](https://supermarket.chef.io/cookbooks/chef-rebar3)

Manages installation of Rebar3.

## Requirements

### Platforms

- CentOS
- Debian
- Fedora
- openSUSE
- Ubuntu

### Chef

- Chef 12.14+

### Cookbooks

- erlang
  - build-essential
  - mingw
  - seven_zip
  - windows
  - yum-epel
  - yum-erlang_solutions

## Usage

Add `chef-rebar3::default` or `chef-rebar3::rebar3` to your run_list OR add `depends 'chef-rebar3', '0.0.1'` to your cookbook's metadata.rb and include_recipe one of the recipes from this cookbook.

## Recipes

- `chef-rebar3::default` calls `chef-rebar3::rebar3`
- `chef-rebar3::rebar3` installs Git and Erlang, downloads the Rebar3 sources and bootstraps them. The resulting executable is deposited in `/usr/local/bin`.

## Attributes

- `node['rebar3']['vsn']` The Rebar3 version to install. Defaults to `'3.5.3'`.

## Integration Tests

Run the integration tests by entering

    kitchen verify

## Authors

- Jörgen Brandt ([@joergen7](https://github.com/joergen7/)) [joergen.brandt@onlinehome.de](mailto:joergen.brandt@onlinehome.de)

## License

[Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0.html)