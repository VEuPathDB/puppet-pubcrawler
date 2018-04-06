Installs Pubcrawler from EuPathDB-specific RPM and manages
`/etc/pubcrawler/` configuration files.

The RPM includes a `/etc/cron.d` job that runs all *.config in `/etc/pubcrawler`.

`pubcrawler::params` defines the common set of configuration parameters.
See `templates/product.config.erb` in this module for documentation on
each parameter.

A configuration file will be generated in `/etc/pubcrawler` for each
key in the `$site_specific_params` hash. All site-specific configuration
files will use values in `$default_params` unless overridden in the
`$site_specific_params`. For example, AmoebaDB will use '14' for
`viewdays` whereas CryptoDB will use '120' because it is has been
overriden in the `$site_specific_params` hash for the `CryptoDB` key.

    ...
    $viewdays         = '14'
    ...

    $site_specific_params = {
      'AmoebaDB' => {
        'bgcolor' => '#C8C5A2',
        'header_icon' => '/a/images/AmoebaDB/title_s.png',
        'searches' => [
          ...
        ],
      },

      'CryptoDB' => {
        'bgcolor' => '#ffcccc',
        'header_icon' => '/a/images/CryptoDB/title_s.png',
        'viewdays' => '120',
        'searches' => [
          ...
        ],
      },
    ...
    }

### Hiera

The values in `::pubcrawler::params` can be overridden in heira.

    pubcrawler::site_specific_params:
      AmoebaDB:
        bgcolor: '#C8C5A2'
        header_icon: '/a/images/AmoebaDB/title_s.png'
        searches: 
          - database: pubmed
            alias: Entamoeba
            term: Entamoeba [ALL]
          - database: pubmed
            alias: Acanthamoeba
            term: Acanthamoeba [ALL]

In this example, the `$site_specific_params` in  `::pubcrawler::params`
will be replaced with a hash containing only AmoebaDB - so only
AmoebaDB will be configured.

Other individual params can be set in heira.

    pubcrawler::fullmax: 666

### Configuration Testing

To run a single configuration manually, use

    PRODUCT=TrichDB
    sudo -u nobody  /usr/share/pubcrawler/bin/pubcrawler.pl -c /etc/pubcrawler/${PRODUCT}.config

Results are written to `/usr/share/pubcrawler/html/ToxoDB/`