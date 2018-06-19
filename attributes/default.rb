#
# Author:: Jörgen Brandt <joergen.brandt@onlinehome.de>
# Cookbook:: chef-cuneiform
# Attributes:: default
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

default['erlang']['install_method']     = 'source'
default['erlang']['source']['version']  = '20.3'
default['erlang']['source']['checksum'] = '4e19e6c403d5255531c0b870f19511c8b8e3b080618e4f9efcb44d905935b2a1'

default['rebar3']['version']            = '3.5.3'
