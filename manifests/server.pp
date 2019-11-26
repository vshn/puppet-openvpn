#
# @summary This define creates the openvpn server instance which can run in server or client mode.
#
# @param country Country to be used for the SSL certificate, mandatory for server mode.
# @param province Province to be used for the SSL certificate, mandatory for server mode.
# @param city City to be used for the SSL certificate, mandatory for server mode.
# @param organization Organization to be used for the SSL certificate, mandatory for server mode.
# @param email Email address to be used for the SSL certificate, mandatory for server mode.
# @param remote List of OpenVPN endpoints to connect to.
# @param common_name Common name to be used for the SSL certificate
# @param compression Which compression algorithim to use
# @param dev TUN/TAP virtual network device
# @param user Group to drop privileges to after startup
# @param group User to drop privileges to after startup
# @param ipp Persist ifconfig information to a file to retain client IP addresses between sessions
# @param duplicate_cn Allow multiple connections on one cn
# @param local Interface for openvpn to bind to.
# @param logfile Logfile for this openvpn server
# @param manage_logfile_directory Manage the directory that the logfile is located in
# @param logdirectory_user The owner user of the logfile directory
# @param logdirectory_group The owner group of the logfile directory
# @param port The port the openvpn server service is running on#
# @param portshare The address and port to which non openvpn request shall be forwared, e.g. 127.0.0.1 8443
# @param proto What IP protocol is being used.
# @param status_log Logfile for periodic dumps of the vpn service status
# @param status_version Choose the status file format version number.
# @param server Network to assign client addresses out of. Required in tun mode, not in tap mode
# @param server_ipv6 IPv6 network to assign client addresses out of
# @param server_bridge Server configuration to comply with existing DHCP server
# @param push Options to push out to the client. This can include routes, DNS servers, DNS search domains, and many other options.
# @param route Add route to routing table after connection is established. Multiple routes can be specified.
# @param route_ipv6  Add IPv6 route to routing table after connection is established. Multiple routes can be specified.
# @param keepalive Add keepalive directive (ping and ping-restart) to server. Should match the form "n m".
# @param ssl_key_size Length of SSL keys (in bits) generated by this module.
# @param topology  Define the network topology type
# @param c2c Enable client to client visibility
# @param tcp_nodelay Enable/Disable.
# @param ccd_exclusive Enable/Disable.
# @param pam Enable/Disable.
# @param pam_module_arguments Arguments to pass to the PAM module. For FreeIPA, set this to "openvpn login USERNAME password PASSWORD" and create HBAC Service "openvpn".
# @param management Enable management interface
# @param management_ip  IP address where the management interface will listen
# @param management_port Port where the management interface will listen
# @param up Script which we want to run when openvpn server starts. If the path to the scirpt does not contain a slash, it will be assumed to be in `openvpn/${name}/scripts` directory.
# @param down  Script which we want to run when openvpn server stops. If the path to the scirpt does not contain a slash, it will be assumed to be in `openvpn/${name}/scripts` directory.
# @param client_connect  Script which we want to run when a client connects. If the path to the scirpt does not contain a slash, it will be assumed to be in `openvpn/${name}/scripts` directory.
# @param client_disconnect  Script which we want to run when a client disconnects. If the path to the scirpt does not contain a slash, it will be assumed to be in `openvpn/${name}/scripts` directory.
# @param username_as_common_name If true then set username-as-common-name
# @param client_cert_not_required If true then set client-cert-not-required
# @param ldap_enabled If ldap is enabled, do stuff
# @param ldap_server URL of LDAP server. ie. ldap://URL:PORT
# @param ldap_binddn LDAP DN to bind as#
# @param ldap_bindpass LDAP password for ldapbinddn
# @param ldap_u_basedn Place in the LDAP tree to look for users
# @param ldap_u_filter User SearchFilter for LDAP accounts
# @param ldap_g_basedn Place in the LDAP tree to look for groups
# @param ldap_gmember  If defined use group block in ldap.conf
# @param ldap_g_filter Group SearchFilter for LDAP accounts
# @param ldap_memberatr Attribute for MemberAttribute. Used with ldapfilter
# @param ldap_tls_enable Enable TLS for the LDAP authentication
# @param ldap_tls_ca_cert_file LDAP TLS authentication: path to the CA certificate.
# @param ldap_tls_ca_cert_dir  LDAP TLS authentication: path to the CA certificates.
# @param ldap_tls_client_cert_file LDAP TLS authentication: path to the tls client certificate
# @param ldap_tls_client_key_file  LDAP TLS authentication: path to the tls client key
# @param verb Level of logging verbosity
# @param cipher Cipher to use for packet encryption
# @param tls_cipher TLS Ciphers to use
# @param persist_key Try to retain access to resources that may be unavailable because of privilege downgrades
# @param persist_tun  Try to retain access to resources that may be unavailable because of privilege downgrades
# @param key_expire The number of days to certify the server certificate for
# @param ca_expire The number of days to certify the CA certificate for
# @param key_name Value for name_default variable in openssl.cnf and  KEY_NAME in vars
# @param key_ou Value for organizationalUnitName_default variable in openssl.cnf and KEY_OU in vars
# @param key_cn Value for commonName_default variable in openssl.cnf and KEY_CN in vars
# @param tls_auth  Activates tls-auth to Add an additional layer of HMAC authentication on top of the TLS control channel to protect against DoS attacks.
# @param tls_crypt Encrypt and authenticate all control channel packets with the key from keyfile. (See --tls-auth for more background.)
# @param tls_server If proto not tcp it lets you choose if the parameter tls-server is set or not.
# @param override_tls_server Override the default tls_server behaviour. If set to false, tls_server will not be set. If set to true, it will be set explicitely
# @param tls_client Allows you to set this server up as a tls-client connection.
# @param server_poll_timeout Value for timeout before trying the next server.
# @param ping_timer_rem Do not start clocking timeouts until a remote peer connects.
# @param sndbuf Set the TCP/UDP socket send buffer size.
# @param rcvbuf Set the TCP/UDP socket receive buffer size.
# @param shared_ca Name of a openssl::ca resource to use config with
# @param crl_verify Enable CRL checking. Disabling this is not recommended.
# @param crl_auto_renew Enables automatic renewing of crl.pem.
# @param crl_renew_schedule_period Sets the "period" Parameter of the schedule for renewing the CRL. Since changing the expiry of 30 days is not possible with easy-rsa2, twice a month should be good
# @param crl_renew_schedule_repeat  Sets the "repeat" Parameter of the schedule for renewing the CRL. Since changing the expiry of 30 days is not possible with easy-rsa2, twice a month should be good
# @param extca_enabled Turn this on if you are using an external CA solution, like FreeIPA. Once enabled, you must configure the remaining extca_* parameters.
# @param extca_ca_cert_file External CA: Path to the CA certificate.
# @param extca_ca_crl_file External CA: Path to the CA's CRL file. For FreeIPA-based CAs, CRLs expire every four hours, which means you may need your own solution for maintaining a local copy of your CA's CRL. Otherwise, you can set crl_verify to false (not recommended).
# @param extca_server_cert_file External CA: Path to the external CA issued OpenVPN server certificate.
# @param extca_server_key_file External CA: Path to the key file that corresponds to $extca_server_cert_file
# @param extca_dh_file External CA: Path to your Dillie-Hellman parameter file. You will need to create one yourself. Make sure key-size matches the public key size of your CA-issued server certificate. Like this: openssl dhparam -out /path/to/dh.pem 2048 Note: This is only required if you are enabling $tls_server.
# @param extca_tls_auth_key_file External CA: If you are enabling $extca_enabled and $tls_auth, you will also need to create  the tls-auth key file and specify its location here. The file can be created like this: openvpn --genkey --secret /path/to/ta.key. Note: you will need to distribute this file to your clients as well.
# @param autostart  Enable autostart for server if openvpn::autostart_all is false.
# @param ns_cert_type Enable or disable use of ns-cert-type for the session. Generally used with client configuration Deprecated in OpenVPN 2.4 and replaced with remote-cert-tls
# @param remote_cert_tls Enable or disable use of remote-cert-tls for the session. Generally used with client configuration
# @param nobind Whether or not to bind to a specific port number.#
# @param secret A pre-shared static key.
# @param scripts Hash of scripts to copy with this instance.
#  For example, to put a script in `/etc/openvpn/test-site/scripts/add-tap-to-bridge.sh` and use it as an `up` script
#  ``` puppet
#  openvpn::server { 'test-site':
#    ....
#    up => 'add-tap-to-bridge.sh',
#    scripts => {
#      "add-tap-to-bridge.sh" => {
#        source => 'puppet:///path/to/add-tap-to-bridge.sh',
#      },
#    },
#  }
#  ```
#
# @param custom_options Hash of additional options to append to the configuration file.
#
# @example install
#   openvpn::server { 'winterthur':
#       country      => 'CH',
#       province     => 'ZH',
#       city         => 'Winterthur',
#       organization => 'example.org',
#       email        => 'root@example.org',
#       server       => '10.200.200.0 255.255.255.0',
#   }
#
# @example a server in client mode
#   file {
#     '/etc/openvpn/zurich/keys/ca.crt':
#       source => 'puppet:///path/to/ca.crt';
#     '/etc/openvpn/zurich/keys/zurich.crt':
#       source => 'puppet:///path/to/zurich.crt';
#     '/etc/openvpn/zurich/keys/zurich.key':
#       source => 'puppet:///path/to/zurich.key';
#   }
#   openvpn::server { 'zurich':
#     remote  => [ 'mgmtnet3.nine.ch 1197', 'mgmtnet2.nine.ch 1197' ],
#     require => [ File['/etc/openvpn/zurich/keys/ca.crt'],
#                  File['/etc/openvpn/zurich/keys/zurich.crt'],
#                  File['/etc/openvpn/zurich/keys/zurich.key'] ];
#   }
#
define openvpn::server (
  Optional[String] $country                                         = undef,
  Optional[String] $province                                        = undef,
  Optional[String] $city                                            = undef,
  Optional[String] $organization                                    = undef,
  Optional[String] $email                                           = undef,
  Optional[Array] $remote                                           = undef,
  String $common_name                                               = 'server',
  String $compression                                               = 'comp-lzo',
  String $dev                                                       = 'tun0',
  String $user                                                      = 'nobody',
  Optional[String] $group                                           = undef,
  Boolean $ipp                                                      = false,
  Boolean $duplicate_cn                                             = false,
  String $local                                                     = $facts['networking']['ip'],
  Variant[Boolean, String] $logfile                                 = false,
  Boolean $manage_logfile_directory                                 = false,
  String[1] $logdirectory_user                                      = 'nobody',
  String[1] $logdirectory_group                                     = 'nobody',
  String $port                                                      = '1194',
  Optional[String] $portshare                                       = undef,
  Enum['tcp', 'tcp4', 'tcp6', 'udp', 'udp4', 'udp6'] $proto         = 'tcp',
  Enum['1', '2', '3', ''] $status_version                           = '',
  String $status_log                                                = "/var/log/openvpn/${name}-status.log",
  String $server                                                    = '',
  String $server_ipv6                                               = '',
  String $server_bridge                                             = '',
  Array $push                                                       = [],
  Array $route                                                      = [],
  Array $route_ipv6                                                 = [],
  String $keepalive                                                 = '',
  Variant[Boolean, Integer] $fragment                               = false,
  Integer $ssl_key_size                                             = 2048,
  String $topology                                                  = 'net30',
  Boolean $c2c                                                      = false,
  Boolean $tcp_nodelay                                              = false,
  Boolean $ccd_exclusive                                            = false,
  Boolean $pam                                                      = false,
  String $pam_module_arguments                                      = 'login',
  Boolean $management                                               = false,
  String $management_ip                                             = 'localhost',
  Variant[Stdlib::Port::Unprivileged,Enum['unix']] $management_port = 7505,
  Optional[String[1]] $up                                           = undef,
  Optional[String[1]] $down                                         = undef,
  Optional[String[1]] $client_connect                               = undef,
  Optional[String[1]] $client_disconnect                            = undef,
  Boolean $username_as_common_name                                  = false,
  Boolean $client_cert_not_required                                 = false,
  Boolean $ldap_enabled                                             = false,
  String $ldap_server                                               = '',
  String $ldap_binddn                                               = '',
  String $ldap_bindpass                                             = '',
  String $ldap_u_basedn                                             = '',
  String $ldap_g_basedn                                             = '',
  Boolean $ldap_gmember                                             = false,
  String $ldap_u_filter                                             = '',
  String $ldap_g_filter                                             = '',
  String $ldap_memberatr                                            = '',
  Boolean $ldap_tls_enable                                          = false,
  String $ldap_tls_ca_cert_file                                     = '',
  String $ldap_tls_ca_cert_dir                                      = '',
  Optional[Stdlib::Absolutepath] $ldap_tls_client_cert_file         = undef,
  Optional[Stdlib::Absolutepath] $ldap_tls_client_key_file          = undef,
  Integer $ca_expire                                                = 3650,
  Integer $key_expire                                               = 3650,
  String $key_cn                                                    = '',
  String $key_name                                                  = '',
  String $key_ou                                                    = '',
  String $verb                                                      = '',
  String $cipher                                                    = 'AES-256-CBC',
  String $tls_cipher                                                = 'TLS-DHE-RSA-WITH-AES-256-GCM-SHA384:TLS-DHE-RSA-WITH-AES-256-CBC-SHA256:TLS-DHE-RSA-WITH-AES-128-GCM-SHA256:TLS-DHE-RSA-WITH-AES-128-CBC-SHA256',
  Boolean $persist_key                                              = false,
  Boolean $persist_tun                                              = false,
  Boolean $tls_auth                                                 = false,
  Boolean $tls_crypt                                                = false,
  Boolean $tls_server                                               = false,
  Boolean $tls_client                                               = false,
  Optional[Boolean] $override_tls_server                            = undef,
  Optional[Integer] $server_poll_timeout                            = undef,
  Boolean $ping_timer_rem                                           = false,
  Optional[Integer] $sndbuf                                         = undef,
  Optional[Integer] $rcvbuf                                         = undef,
  Optional[String] $shared_ca                                       = undef,
  Boolean $crl_verify                                               = true,
  Boolean $crl_auto_renew                                           = false,
  String $crl_renew_schedule_period                                 = 'monthly',
  Integer $crl_renew_schedule_repeat                                = 2,
  Boolean $extca_enabled                                            = false,
  Optional[String] $extca_ca_cert_file                              = undef,
  Optional[String] $extca_ca_crl_file                               = undef,
  Optional[String] $extca_server_cert_file                          = undef,
  Optional[String] $extca_server_key_file                           = undef,
  Optional[String] $extca_dh_file                                   = undef,
  Optional[String] $extca_tls_auth_key_file                         = undef,
  Optional[Boolean] $autostart                                      = undef,
  Boolean $ns_cert_type                                             = true,
  Boolean $remote_cert_tls                                          = false,
  Boolean $nobind                                                   = false,
  Optional[String] $secret                                          = undef,
  Hash[String, Hash] $scripts                                       = {},
  Hash $custom_options                                              = {},
) {

  include openvpn
  Class['openvpn::install']
  -> Openvpn::Server[$name]

  if $facts['service_provider'] == 'systemd' and $openvpn::namespecific_rclink {
    fail("Using systemd and namespecific rclink's (BSD-style) is not allowed")
  }

  if $tls_auth and $tls_crypt {
    fail('tls_auth and tls_crypt are mutually exclusive')
  }

  if $openvpn::manage_service {
    if $facts['service_provider'] == 'systemd' {
      $lnotify = Service["${openvpn::server_service_name}@${name}"]
    } elsif $openvpn::namespecific_rclink {
      $lnotify = Service["openvpn_${name}"]
    } else {
      $lnotify = Service['openvpn']
      Openvpn::Server[$name] -> Service['openvpn']
    }
  }
  else {
    $lnotify = undef
  }

  if $manage_logfile_directory {
    $logdir = dirname($logfile)
    file { $logdir:
      ensure => 'directory',
      owner  => $logdirectory_user,
      group  => $logdirectory_group,
    }
  }

  # Selection block to enable or disable tls-server flag
  # Check if we want to run as a client or not
  if !$tls_client {
    if $tls_server and !$extca_enabled {
      $_real_tls_server = $tls_server
    } elsif ($extca_enabled and $extca_dh_file) or (!$extca_enabled) {
      $_real_tls_server = $proto ? {
        /tcp/   => true,
        default => false
      }
    } else {
      $_real_tls_server = false
    }
  }
  if $override_tls_server !~ Undef {
    $real_tls_server = $override_tls_server
  } else {
    $real_tls_server = $_real_tls_server
  }

  $pam_module_path = $openvpn::pam_module_path
  $etc_directory = $openvpn::etc_directory
  $server_directory = $openvpn::server_directory

  $group_to_set = $group ? {
    undef   => $openvpn::group,
    default => $group
  }

  if $shared_ca {
    $ca_name = $shared_ca
  } elsif !$extca_enabled {
    $ca_name = $name
  }

  File {
    group => $group_to_set,
  }

  file { "${server_directory}/${name}":
    ensure => directory,
    mode   => '0750',
    notify => $lnotify,
  }
  file {
    [ "${server_directory}/${name}/scripts", ]:
      ensure  => directory,
      mode    => '0750',
      recurse => true,
  }
  if $shared_ca {
    ensure_resource(file, "${server_directory}/${ca_name}", {
      ensure => directory,
      mode   => '0750',
    })
  }

  if $extca_enabled {
    # VPN Server or Client with external CA
    if $extca_ca_cert_file == undef { fail('extca_ca_cert_file has to be specified in extca mode') }
    if $extca_ca_crl_file == undef and $crl_verify and !$remote { fail('extca_ca_crl_file has to be specified in extca mode if crl_verify is enabled') }
    if $extca_server_cert_file == undef { fail('extca_server_cert_file has to be specified in extca mode') }
    if $extca_server_key_file == undef { fail('extca_server_key_file has to be specified in extca mode') }
    if $extca_dh_file == undef and !$remote and $tls_server { fail('cant enable tls_server: missing extca_dh_file') }
    if $extca_tls_auth_key_file == undef and !$remote and $tls_auth { fail('cant enable tls_auth: missing extca_tls_auth_key_file') }
  }

  if !$remote {
    if !$shared_ca and !$extca_enabled {
      # VPN Server Mode
      if $country == undef {
        fail('country has to be specified in server mode')
      }
      if $province == undef {
        fail('province has to be specified in server mode')
      }
      if $city == undef { fail('city has to be specified in server mode') }
      if $organization == undef {
        fail('organization has to be specified in server mode')
      }
      if $email == undef { fail('email has to be specified in server mode') }

      $ca_common_name = $common_name
      ::openvpn::ca { $name:
        country        => $country,
        province       => $province,
        city           => $city,
        organization   => $organization,
        email          => $email,
        common_name    => $common_name,
        group          => $group,
        ssl_key_size   => $ssl_key_size,
        ca_expire      => $ca_expire,
        key_expire     => $key_expire,
        key_cn         => $key_cn,
        key_name       => $key_name,
        key_ou         => $key_ou,
        tls_static_key => $tls_auth or $tls_crypt,
      }

      ## Renewal of crl.pem
      if ($crl_auto_renew) {
        schedule { "renew crl.pem schedule on ${name}":
          range  => '1 - 4',
          period => $crl_renew_schedule_period,
          repeat => $crl_renew_schedule_repeat,
        }
        case $openvpn::easyrsa_version {
          '2.0': {
            exec { "renew crl.pem on ${name}":
              command  => ". ./vars && KEY_CN='' KEY_OU='' KEY_NAME='' KEY_ALTNAMES='' openssl ca -gencrl -out ${server_directory}/${name}/crl.pem -config ${server_directory}/${name}/easy-rsa/openssl.cnf",
              cwd      => "${server_directory}/${name}/easy-rsa",
              provider => 'shell',
              schedule => "renew crl.pem schedule on ${name}",
            }
          }
          '3.0': {
            exec { "renew crl.pem on ${name}":
              command  => ". ./vars && EASYRSA_REQ_CN='' EASYRSA_REQ_OU='' openssl ca -gencrl -out ${server_directory}/${name}/crl.pem -config ${server_directory}/${name}/easy-rsa/openssl.cnf",
              cwd      => "${server_directory}/${name}/easy-rsa",
              provider => 'shell',
              schedule => "renew crl.pem schedule on ${name}",
            }
          }
          default: {
            fail("unexepected value for EasyRSA version, got '${openvpn::easyrsa_version}', expect 2.0 or 3.0.")
          }
        }
      }
    } elsif !$extca_enabled {
      if !defined(Openvpn::Ca[$shared_ca]) {
        fail("Openvpn::ca[${name}] is not defined for shared_ca")
      }
      $ca_common_name = getparam(Openvpn::Ca[$shared_ca], 'common_name')
    } else {
      $ca_common_name = undef
    }

    file {
      [ "${server_directory}/${name}/auth",
        "${server_directory}/${name}/client-configs",
        "${server_directory}/${name}/download-configs" ]:
        ensure  => directory,
        mode    => '0750',
        recurse => true,
    }
  } else {
    # VPN Client Mode
    $ca_common_name = $name

    file { "${server_directory}/${name}/keys":
      ensure  => directory,
      mode    => '0750',
      recurse => true,
    }
  }

  if $facts['os']['family'] == 'Debian' and !$openvpn::autostart_all and $autostart {
    concat::fragment { "openvpn.default.autostart.${name}":
      content => "AUTOSTART=\"\$AUTOSTART ${name}\"\n",
      target  => '/etc/default/openvpn',
      order   => '10',
    }
  }

  # template use $_easyrsa_version
  $_easyrsa_version = $openvpn::easyrsa_version

  # Template might need script directory
  $_script_dir = "${server_directory}/${name}/scripts"

  file { "${server_directory}/${name}.conf":
    owner   => root,
    group   => 0,
    mode    => '0440',
    content => template('openvpn/server.erb'),
    notify  => $lnotify,
  }

  $ensure = $secret ? {
    undef   => absent,
    default => present,
  }
  file { "${server_directory}/${name}/keys/pre-shared.secret":
    ensure  => $ensure,
    owner   => root,
    group   => root,
    mode    => '0440',
    content => $secret,
    notify  => $lnotify,
  }

  $scripts.each |String $scriptname, Hash $properties| {
    file { "${_script_dir}/${scriptname}":
      * => $properties,
    }
  }

  if $ldap_enabled == true {
    file {
      "${server_directory}/${name}/auth/ldap.conf":
        ensure  => present,
        owner   => root,
        mode    => '0400',
        content => template('openvpn/ldap.erb'),
        require => Package['openvpn-auth-ldap'],
    }
  }

  if $facts['service_provider'] == 'systemd' {
    if $openvpn::manage_service {
      service { "${openvpn::server_service_name}@${name}":
        ensure   => running,
        enable   => true,
        provider => 'systemd',
        require  => File["${server_directory}/${name}.conf"],
      }
      if !$extca_enabled and !$remote {
        Openvpn::Ca[$ca_name] -> Service["${openvpn::server_service_name}@${name}"]
      }
    }
  }

  if $openvpn::namespecific_rclink {
    file { "/usr/local/etc/rc.d/openvpn_${name}":
      ensure => link,
      target => "${etc_directory}/rc.d/openvpn",
    }

    file { "/etc/rc.conf.d/openvpn_${name}":
      owner   => root,
      group   => 0,
      mode    => '0644',
      content => template('openvpn/etc-rc.d-openvpn.erb'),
    }

    if $openvpn::manage_service {
      service { "openvpn_${name}":
        ensure  => running,
        enable  => true,
        require => [
          File["${server_directory}/${name}.conf"],
          File["/usr/local/etc/rc.d/openvpn_${name}"],
        ],
      }
      if !extca_enabled and !$remote {
        Openvpn::Ca[$ca_name] -> Service["openvpn_${name}"]
      }
    }
  }
}
