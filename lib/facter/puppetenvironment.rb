# Fact: puppetenvironment
#
# Purpose: Return the environment of puppet.
#
# Resolution:
#   First attempts to use the puppet gem, then falls back to...
#
# Caveats:
#
# puppetenvironment.rb
# Additional Facts for puppet environment
#
# Copyright (C) 2013 CloudHealth Tech
# Author: Steve Frank <steve@cloudhealthtech.com>
#

Facter.add(:puppetenvironment) do
  setcode do
    begin
      require 'puppet'
      Puppet[:environment]
    rescue LoadError
      #Puppet gem is not installed, so
    end
  end
end
