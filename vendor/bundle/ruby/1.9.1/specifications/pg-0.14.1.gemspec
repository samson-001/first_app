# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{pg}
  s.version = "0.14.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Michael Granger}]
  s.cert_chain = [%q{-----BEGIN CERTIFICATE-----
MIIDLDCCAhSgAwIBAgIBADANBgkqhkiG9w0BAQUFADA8MQwwCgYDVQQDDANnZWQx
FzAVBgoJkiaJk/IsZAEZFgdfYWVyaWVfMRMwEQYKCZImiZPyLGQBGRYDb3JnMB4X
DTEwMDkxNjE0NDg1MVoXDTExMDkxNjE0NDg1MVowPDEMMAoGA1UEAwwDZ2VkMRcw
FQYKCZImiZPyLGQBGRYHX2FlcmllXzETMBEGCgmSJomT8ixkARkWA29yZzCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALy//BFxC1f/cPSnwtJBWoFiFrir
h7RicI+joq/ocVXQqI4TDWPyF/8tqkvt+rD99X9qs2YeR8CU/YiIpLWrQOYST70J
vDn7Uvhb2muFVqq6+vobeTkILBEO6pionWDG8jSbo3qKm1RjKJDwg9p4wNKhPuu8
KGue/BFb67KflqyApPmPeb3Vdd9clspzqeFqp7cUBMEpFS6LWxy4Gk+qvFFJBJLB
BUHE/LZVJMVzfpC5Uq+QmY7B+FH/QqNndn3tOHgsPadLTNimuB1sCuL1a4z3Pepd
TeLBEFmEao5Dk3K/Q8o8vlbIB/jBDTUx6Djbgxw77909x6gI9doU4LD5XMcCAwEA
AaM5MDcwCQYDVR0TBAIwADALBgNVHQ8EBAMCBLAwHQYDVR0OBBYEFJeoGkOr9l4B
+saMkW/ZXT4UeSvVMA0GCSqGSIb3DQEBBQUAA4IBAQBG2KObvYI2eHyyBUJSJ3jN
vEnU3d60znAXbrSd2qb3r1lY1EPDD3bcy0MggCfGdg3Xu54z21oqyIdk8uGtWBPL
HIa9EgfFGSUEgvcIvaYqiN4jTUtidfEFw+Ltjs8AP9gWgSIYS6Gr38V0WGFFNzIH
aOD2wmu9oo/RffW4hS/8GuvfMzcw7CQ355wFR4KB/nyze+EsZ1Y5DerCAagMVuDQ
U0BLmWDFzPGGWlPeQCrYHCr+AcJz+NRnaHCKLZdSKj/RHuTOt+gblRex8FAh8NeA
cmlhXe46pZNJgWKbxZah85jIjx95hR8vOI+NAM5iH9kOqK13DrxacTKPhqj5PjwF
-----END CERTIFICATE-----
}]
  s.date = %q{2012-09-02}
  s.description = %q{Pg is the Ruby interface to the {PostgreSQL RDBMS}[http://www.postgresql.org/].

It works with {PostgreSQL 8.3 and later}[http://bit.ly/6AfPhm].

A small example usage:

  #!/usr/bin/env ruby
  
  require 'pg'
  
  # Output a table of current connections to the DB
  conn = PG.connect( dbname: 'sales' )
  conn.exec( "SELECT * FROM pg_stat_activity" ) do |result|
    puts "     PID | User             | Query"
	result.each do |row|
      puts " %7d | %-16s | %s " %
        row.values_at('procpid', 'usename', 'current_query')
    end
  end}
  s.email = [%q{ged@FaerieMUD.org}]
  s.extensions = [%q{ext/extconf.rb}]
  s.extra_rdoc_files = [%q{Contributors.rdoc}, %q{History.rdoc}, %q{Manifest.txt}, %q{README-OS_X.rdoc}, %q{README-Windows.rdoc}, %q{README.ja.rdoc}, %q{README.rdoc}, %q{POSTGRES}, %q{LICENSE}, %q{ext/pg.c}, %q{ext/pg_connection.c}, %q{ext/pg_result.c}]
  s.files = [%q{Contributors.rdoc}, %q{History.rdoc}, %q{Manifest.txt}, %q{README-OS_X.rdoc}, %q{README-Windows.rdoc}, %q{README.ja.rdoc}, %q{README.rdoc}, %q{POSTGRES}, %q{LICENSE}, %q{ext/pg.c}, %q{ext/pg_connection.c}, %q{ext/pg_result.c}, %q{ext/extconf.rb}]
  s.homepage = %q{https://bitbucket.org/ged/ruby-pg}
  s.licenses = [%q{BSD}, %q{Ruby}, %q{GPL}]
  s.rdoc_options = [%q{-f}, %q{fivefish}, %q{-t}, %q{pg: The Ruby Interface to PostgreSQL}, %q{-m}, %q{README.rdoc}]
  s.require_paths = [%q{lib}]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubyforge_project = %q{pg}
  s.rubygems_version = %q{1.8.5}
  s.summary = %q{Pg is the Ruby interface to the {PostgreSQL RDBMS}[http://www.postgresql.org/]}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe-mercurial>, ["~> 1.4.0"])
      s.add_development_dependency(%q<hoe-highline>, ["~> 0.1.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_development_dependency(%q<rake-compiler>, ["~> 0.7"])
      s.add_development_dependency(%q<hoe-deveiate>, ["~> 0.1"])
      s.add_development_dependency(%q<hoe>, ["~> 3.0"])
    else
      s.add_dependency(%q<hoe-mercurial>, ["~> 1.4.0"])
      s.add_dependency(%q<hoe-highline>, ["~> 0.1.0"])
      s.add_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_dependency(%q<rake-compiler>, ["~> 0.7"])
      s.add_dependency(%q<hoe-deveiate>, ["~> 0.1"])
      s.add_dependency(%q<hoe>, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<hoe-mercurial>, ["~> 1.4.0"])
    s.add_dependency(%q<hoe-highline>, ["~> 0.1.0"])
    s.add_dependency(%q<rdoc>, ["~> 3.10"])
    s.add_dependency(%q<rake-compiler>, ["~> 0.7"])
    s.add_dependency(%q<hoe-deveiate>, ["~> 0.1"])
    s.add_dependency(%q<hoe>, ["~> 3.0"])
  end
end
