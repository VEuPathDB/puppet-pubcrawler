# Install pubcrawler and configuration files.
class pubcrawler (
  $site_specific_params = $pubcrawler::params::site_specific_params,
  $bgcolor              = $pubcrawler::params::bgcolor,
  $header_icon          = $pubcrawler::params::header_icon,
  $searches             = $pubcrawler::params::searches,
  $viewdays             = $pubcrawler::params::viewdays,
  $relentrezdate        = $pubcrawler::params::relentrezdate,
  $getmax               = $pubcrawler::params::getmax,
  $fullmax              = $pubcrawler::params::fullmax,
  $include_config       = $pubcrawler::params::include_config,
  $search_URL           = $pubcrawler::params::search_URL,
  $neighbour_URL        = $pubcrawler::params::neighbour_URL,
  $retrieve_URL         = $pubcrawler::params::retrieve_URL,
  $work_dir             = $pubcrawler::params::work_dir,
  $extra_range          = $pubcrawler::params::extra_range,
  $check                = $pubcrawler::params::check,
  $prompt               = $pubcrawler::params::prompt,
  $verbose              = $pubcrawler::params::verbose,
  $mute                 = $pubcrawler::params::mute,
  $log_file             = $pubcrawler::params::log_file,
  $base_URL             = $pubcrawler::params::base_URL,
  $mail_features        = $pubcrawler::params::mail_features,
  $lynx                 = $pubcrawler::params::lynx,
  $prefix               = $pubcrawler::params::prefix,
  $system               = $pubcrawler::params::system,
  $proxy_port           = $pubcrawler::params::proxy_port,
  $proxy_auth           = $pubcrawler::params::proxy_auth,
  $proxy_pass           = $pubcrawler::params::proxy_pass,
  $time_out             = $pubcrawler::params::time_out,
  $test_URL             = $pubcrawler::params::test_URL,
  $no_test              = $pubcrawler::params::no_test,
  $indent               = $pubcrawler::params::indent,
  $no_decap             = $pubcrawler::params::no_decap,
  $spacer               = $pubcrawler::params::spacer,
) inherits pubcrawler::params {

  package { 'pubcrawler':
    ensure => installed,
  }

  file { '/etc/httpd/conf.d/pubcrawler.conf':
    owner   => 'root',
    group   => 'root',
    content => template('pubcrawler/http.pubcrawler.conf.erb'),
  }

  file { '/etc/cron.d/pubcrawler':
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('pubcrawler/cron.erb'),
  }

  create_resources(pubcrawler::config, $site_specific_params)
}



