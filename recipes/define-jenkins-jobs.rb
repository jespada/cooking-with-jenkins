#
# Cookbook Name:: cooking-with-jenkins
# Recipe:: define-jenkins-jobs
#
# Adds jobs in Jenkins for testing our cookbooks
#
# Copyright (C) 2013 Zachary Stevens
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Attribute  driven jenkins jobs creation for the cookbooks we want to test


node['cooking-with-jenkins']['jobs'].each { |k,v|
  cookbook_ci "#{k}" do
    repository "#{v[:repository]}"
    branch "#{v[:branch]}" unless v[:branch].nil?
    foodcritic "#{v[:foodcritic]}" unless v[:foodcritic].nil?
    chefspec "#{v[:chefspec]}" unless v[:chefspec].nil?
    kitchen "#{v[:kitchen]}" unless v[:kitchen].nil?
    junit_results "#{v[:junit_results]}" unless v[:junit_results].nil?
  end
}
