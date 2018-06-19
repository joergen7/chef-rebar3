# # encoding: utf-8

# Inspec test for recipe chef-rebar3::rebar3

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/


describe command( 'rebar3 -v' ) do
  its( :stdout ) { should match /rebar [0-9]+\.[0-9]+\.[0-9]+ on Erlang\/OTP [0-9]+ Erts [0-9]+\/[0-9]+/ }
  its( :stderr ) { should match '' }
  set :path, '/usr/local/bin:$PATH'
end