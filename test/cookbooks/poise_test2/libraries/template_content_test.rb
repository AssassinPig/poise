 #
# Author:: Noah Kantrowitz <noah@coderanger.net>
#
# Copyright 2013-2014, Noah Kantrowitz
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

class Chef
  # Test with cookbook auto-detect
  class Resource::TemplateContentTestSix < Resource
    include Poise::Resource::TemplateContent

    def initialize(*args)
      super
      @resource_name = :template_content_test_six
      @action = :run
    end

    attribute('', template: true, default_source: 'template_content_test_six.erb')
  end

  class Provider::TemplateContentTestSix < Provider
    def load_current_resource
    end

    def action_run
    end
  end
end
