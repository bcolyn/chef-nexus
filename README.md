# nexus-oss Cookbook

Installs the Nexus maven repository manager.

## Supported Platforms

- centos-6.4

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['nexus']['download_url']</tt></td>
    <td>String</td>
    <td>where to download the nexus oss tarball</td>
    <td><tt>http://download.sonatype.com/nexus/oss/nexus-latest-bundle.tar.gz</tt></td>
  </tr>
  <tr>
    <td><tt>['nexus']['version']</tt></td>
    <td>String</td>
    <td>Version installed</td>
    <td><tt>2.9.2</tt></td>
  </tr>
  <tr>
    <td><tt>['nexus']['sha256']</tt></td>
    <td>String</td>
    <td>Checksum of downloaded tarball</td>
    <td><tt>2c03fb47bb4c3a48801e9a198b4f7445f6af270be02ee0d1ff9902ef70e255a7</tt></td>
  </tr>  
  <tr>
    <td><tt>['nexus']['user']</tt></td>
    <td>String</td>
    <td>User name to run as</td>
    <td><tt>nexus</tt></td>
  </tr>
  <tr>
    <td><tt>['nexus']['install_dir']</tt></td>
    <td>String</td>
    <td>Location of Nexus executables</td>
    <td><tt>/opt/nexus</tt></td>
  </tr>
  <tr>
    <td><tt>['nexus']['data_dir']</tt></td>
    <td>String</td>
    <td>Location of Nexus artefacts, indexes, conf files</td>
    <td><tt>/data/nexus</tt></td>
  </tr>
  <tr>
    <td><tt>['nexus']['jetty_port']</tt></td>
    <td>String</td>
    <td>TCP port to listen on for embedded jetty</td>
    <td><tt>8080</tt></td>
  </tr>  
  <tr>
    <td><tt>['nexus']['jetty_iface']</tt></td>
    <td>String</td>
    <td>network interface to listen on</td>
    <td><tt>0.0.0.0</tt></td>
  </tr>                
</table>

## Usage

### nexus::default

Include `nexus-oss` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[nexus-oss::default]"
  ]
}
```

## License and Authors

Author:: Benny Colyn (Benny.Colyn@gmail.com)
