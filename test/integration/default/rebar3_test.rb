# # encoding: utf-8

# Inspec test for recipe chef-rebar3::rebar3

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/


describe command( 'PATH=/bin:/usr/local/bin /usr/local/bin/rebar3 -v' ) do
  its( 'exit_status' ) { should eq 0 }
  its( 'stdout' )      { should match /rebar/ }
  its( 'stderr' )      { should eq '' }
end