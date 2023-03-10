#Apache is returning a 500 error, Fix Issue
exec {'automate_fix_500Issue':
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:\
/sbin:/bin',
  command => "sed -i 's/phpp/php/g' /var/www/html/wp-settings.php \
&& service apache2 reload"
}
