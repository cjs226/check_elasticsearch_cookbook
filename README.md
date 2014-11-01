## Description

Chef cookbook to install the check_elasticsearch Nagios plugin

### Platform

Tested on Ubuntu 12.04 running Chef 11.4.0.

### Attributes

* `default['check_elasticsearch']['git']['branch']`     - Branch to clone
* `default['check_elasticsearch']['git']['repository']` - Repository to clone
* `default['check_elasticsearch']['install_dir']`       - Directory the check will be installed to
  * The repo will be cloned to node['check_elasticsearch']['install_dir']/git then the plugin will be linked to node['check_elasticsearch']['install_dir']/check_elasticsearch

## License and Author

Author: Clif Smith(clif@texicans.us)

Copyright 2014, Clif Smith

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
