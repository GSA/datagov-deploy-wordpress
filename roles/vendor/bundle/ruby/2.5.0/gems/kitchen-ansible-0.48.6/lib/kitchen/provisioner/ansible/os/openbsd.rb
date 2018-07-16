# -*- encoding: utf-8 -*-
#
# Author:: Marcin Wolny (<marcin@wutanic.com>)
#
# Copyright (C) 2015 Marcin Wolny
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
        class Openbsd < Os

          def install_command
            <<-INSTALL
            sudo pkg_add ansible--
            INSTALL
          end

        end
      end
    end
  end
end
