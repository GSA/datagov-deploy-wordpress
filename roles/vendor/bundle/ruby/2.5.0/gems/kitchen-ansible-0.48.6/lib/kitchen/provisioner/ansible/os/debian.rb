# -*- encoding: utf-8 -*-
#
# Author:: Michael Heap (<m@michaelheap.com>)
#
# Copyright (C) 2015 Michael Heap
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

module Kitchen
  module Provisioner
    module Ansible
      class Os
        class Debian < Os
          def update_packages_command
            @config[:update_package_repos] ? "#{sudo_env('apt-get')} update" : nil
          end

          def ansible_debian_version
            if @config[:ansible_version] == 'latest' || @config[:ansible_version] == nil
              ''
            else
              "=#{@config[:ansible_version]}"
            end
          end

          def install_command
            <<-INSTALL

            if [ ! $(which ansible) ]; then
              #{update_packages_command}

              ## Install apt-utils to silence debconf warning: http://serverfault.com/q/358943/77156
              ## Install dirmngr to handle GPG key management for stretch, addressing https://github.com/neillturner/kitchen-ansible/issues/257
              #{sudo_env('apt-get')} -y install apt-utils git dirmngr

              ## Fix debconf tty warning messages
              export DEBIAN_FRONTEND=noninteractive

              if [ -f /etc/os-release ] && [ `grep 'ID=debian' /etc/os-release` ]; then
                #{sudo_env('echo')} "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list
                #{sudo_env('apt-key')} adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
              else
                ## 13.10, 14.04 include add-apt-repository in software-properties-common
                #{sudo_env('apt-get')} -y install software-properties-common

                ## 10.04, 12.04 include add-apt-repository in
                #{sudo_env('apt-get')} -y install python-software-properties

                ## 10.04 version of add-apt-repository doesn't accept --yes
                ## later versions require interaction from user, so we must specify --yes
                ## First try with -y flag, else if it fails, try without.
                ## "add-apt-repository: error: no such option: -y" is returned but is ok to ignore, we just retry
                #{sudo_env('add-apt-repository')} -y #{@config[:ansible_apt_repo]} || #{sudo_env('add-apt-repository')} #{@config[:ansible_apt_repo]}
              fi
              #{sudo_env('apt-get')} update
              #{sudo_env('apt-get')} -y install ansible#{ansible_debian_version}
            fi
            INSTALL
          end
        end
      end
    end
  end
end
