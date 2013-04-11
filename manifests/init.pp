class pe_ldap {

  include pe_ldap::params

  class { 'ldap':
    uri       => $pe_ldap::params::uri,
    base      => $pe_ldap::params::base,
    ssl       => $pe_ldap::params::ssl,
    ssl_cert  => $pe_ldap::params::ssl_sert,
  }
}
