# groovy cookbook

# Requirements

Platform:

CentOS

The following cookbooks are dependencies:

* Java - Groovy requires the JVM to work.
* ark - Used to unpack and install the Groovy tarball.

# Usage

Simply include the recipe where you want Groovy to be installed

# Attributes

* default[:groovy][:version] defaults to 2.0.1
* default[:groovy][:home] defaults to /usr/local/groovy
* default[:groovy][:url] the download url for the groovy binary zip
* default[:groovy][:checksum] the checksum for the groovy binary zip downloaded in the url

# Recipes

default

# Author

Author:: Kyle Allan (<kallan@riotgames.com>)
