class couchdb-debian::install($version='1.1.1-2',
                              $bind_address = '0.0.0.0',) {

    apt::source { "debian_testing":
      location          => "http://http.us.debian.org/debian",
      release           => "testing",
      repos             => "main contrib non-free"
    }
    
    apt::force { "couchdb":
        release => "testing",
        version => $version,
        require => Apt::Source["debian_testing"],
     }
    
   #set bind_address, e.g. '0.0.0.0' to allow for localhost access from Vagrant host to guest 
   exec { "set bind_address":
       command  => "sed -i 's/;bind_address = 127.0.0.1/bind_address = ${couchdb-debian::bind_address}/' /etc/couchdb/local.ini",
       path     => [ "/bin/" ],
       onlyif => "/bin/grep -qFx ';bind_address = 127.0.0.1' '/etc/couchdb/local.ini'",
       subscribe => Apt::Force["couchdb"]
    }
}