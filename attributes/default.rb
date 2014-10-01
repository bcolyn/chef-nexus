default['nexus'] =
    {
        'download_url' => 'http://download.sonatype.com/nexus/oss/nexus-latest-bundle.tar.gz',
        'version' => '2.9.2',
        'sha256' => '2c03fb47bb4c3a48801e9a198b4f7445f6af270be02ee0d1ff9902ef70e255a7',
        'user' => 'nexus',
        'install_dir' => '/opt/nexus',
        'data_dir' => '/data/nexus',
        'jetty_port' => '8080',
        'jetty_iface' => '0.0.0.0',
        'cmd' => 'nexus',
        'opts' => 'start',
    }