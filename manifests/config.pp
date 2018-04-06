# generate one configuration file
define pubcrawler::config (
  $bgcolor           = $pubcrawler::bgcolor,
  $header_icon       = $pubcrawler::header_icon,
  $searches          = $pubcrawler::searches,
  $viewdays          = $pubcrawler::viewdays,
  $relentrezdate     = $pubcrawler::relentrezdate,
  $getmax            = $pubcrawler::getmax,
  $fullmax           = $pubcrawler::fullmax,
  $include_config    = $pubcrawler::include_config,
  $search_URL        = $pubcrawler::search_URL,
  $neighbour_URL     = $pubcrawler::neighbour_URL,
  $retrieve_URL      = $pubcrawler::retrieve_URL,
  $work_dir          = $pubcrawler::work_dir,
  $extra_range      =  $pubcrawler::extra_range,
  $check             = $pubcrawler::check,
  $prompt            = $pubcrawler::prompt,
  $verbose           = $pubcrawler::verbose,
  $mute              = $pubcrawler::mute,
  $log_file          = $pubcrawler::log_file,
  $base_URL          = $pubcrawler::base_URL,
  $mail_features     = $pubcrawler::mail_features,
  $lynx              = $pubcrawler::lynx,
  $prefix            = $pubcrawler::prefix,
  $system            = $pubcrawler::system,
  $proxy_port        = $pubcrawler::proxy_port,
  $proxy_auth        = $pubcrawler::proxy_auth,
  $proxy_pass        = $pubcrawler::proxy_pass,
  $time_out          = $pubcrawler::time_out,
  $test_URL          = $pubcrawler::test_URL,
  $no_test           = $pubcrawler::no_test,
  $indent            = $pubcrawler::indent,
  $no_decap          = $pubcrawler::no_decap,
  $spacer            = $pubcrawler::spacer,
) {

  file {"/etc/pubcrawler/${name}.config":
    content => template('pubcrawler/product.config.erb'),
    require => Package['pubcrawler'],
  }

}