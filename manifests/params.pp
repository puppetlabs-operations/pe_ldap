class pe_ldap::params {

  $uri = $ldap_uri ? {
    ''      => '',
    default => $ldap_uri,
  }

  $base = $ldap_base ? {
    ''      => '',
    default => $ldap_base,
  }

  $ssl = $ldap_ssl ? {
    ''      => false,
    default => true,
  }

  $ssl_cert = $ldap_ssl_cert ? {
    ''      => $::clientcert,
    default => $ldap_ssl_cert,
  }
}
