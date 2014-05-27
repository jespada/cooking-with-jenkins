#
# Cookbook Name:: cooking-with-jenkins{
# Default:: default
#
default['cooking-with-jenkins']['jobs'] = {
  :managed_directory => {
    :repository => 'https://github.com/zts/chef-cookbook-managed_directory.git',
    :branch => 'master',
    :foodcritic => true,
    :chefspec => true,
    :kitchen => true,
    :junit_results => true
  },
  :mcollectice => {
    :repository => 'https://github.com/zts/cookbook-mcollectice.git',
    :branch => 'master',
    :foodcritic => true,
    :chefspec => true,
    :kitchen => true
  },
  :test => {
    :repository => 'https://github.com/zts/test.git',
    :branch => 'master',
    :foodcritic => true,
    :chefspec => true,
    :kitchen => false,
    :junit_results => true
  }
}
