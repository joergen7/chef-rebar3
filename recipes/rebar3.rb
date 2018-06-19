#
# Cookbook:: chef-rebar3
# Recipe:: rebar3
#
# Copyright:: 2018 Jörgen Brandt
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


include_recipe 'erlang::default'


rebar3_vsn = node['rebar3']['vsn']
rebar3_githuburl = "https://github.com/erlang/rebar3.git"
rebar3_dir = "/tmp/rebar3-#{rebar3_vsn}"


# install git
package 'git'

# clone github repository
git "git_clone_rebar3" do
  action :checkout
  repository rebar3_githuburl
  destination rebar3_dir
  revision rebar3_vsn
end

# bootstrap
bash 'bootstrap_rebar3' do
  code './bootstrap'
  cwd rebar3_dir
  creates "#{rebar3_dir}/rebar3"
  environment 'PATH' => "/usr/local/bin:#{ENV['PATH']}"
end

# install
bash 'install_rebar3' do
  code 'cp rebar3 /usr/local/bin'
  cwd rebar3_dir
  creates '/usr/local/bin/rebar3'
end
