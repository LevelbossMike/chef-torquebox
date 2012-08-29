default[:torquebox][:manage_java_installation] = true
default[:torquebox][:version] = "2.1.1" # Also supported: "1103" would download latest incremental build and assume it is 2.x.incremental.1103 when uncompressing
default[:torquebox][:version_is_incremental_build] = false
default[:torquebox][:checksum] = nil
default[:torquebox][:jruby][:opts] = "--1.8"
default[:torquebox][:backstage][:user] = nil
default[:torquebox][:backstage][:password] = nil
default[:torquebox][:log_dir] = "/var/log/torquebox"
default[:torquebox][:bind_to_ip] = "127.0.0.1" # Default IP address to bind to
default[:torquebox][:bind_to_ip_from_node_attrs] = ["cloud", "local_ipv4"] # Evals to node["cloud"]["local_ipv4"] (internal ec2 IP), overrides :bind_to_ip
default[:torquebox][:max_file_descriptors] = 16384

default[:torquebox][:server][:ssl][:enabled] = false
default[:torquebox][:server][:ssl][:keystore_path] = ""
default[:torquebox][:server][:ssl][:keystore_alias] = ""
default[:torquebox][:server][:ssl][:keystore_password] = ""
default[:torquebox][:server][:java][:opts]["Xms"] = "384m"
default[:torquebox][:server][:java][:opts]["Xmx"] = "1024m"
default[:torquebox][:server][:java][:opts]["XX:MaxPermSize"] = "512m"
default[:torquebox][:server][:java][:opts]["XX:ReservedCodeCacheSize"] = "128m"

default[:torquebox][:messaging][:max_delivery_attempts] = 10 # Number of times to try a job
default[:torquebox][:messaging][:redelivery_delay] = 0 # Retry delay, set in milliseconds

default[:torquebox][:transactions][:timeout] = 300 # Default transaction timeout, in seconds

default[:torquebox][:clustered][:mod_cluster][:version] = "1.2.0"
default[:torquebox][:clustered][:initial_hosts_role] = nil # For platforms that don't support multicast, specify a role from which to pull IPs to use for initial hosts
default[:torquebox][:clustered][:initial_hosts_attribute] = ["cloud", "local_ipv4"]
