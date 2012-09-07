actions :deploy, :undeploy

attribute :name, :kind_of => String, :name_attribute => true
attribute :install_in, :kind_of => String, :default => "/var/www"
attribute :git_repository, :kind_of => String, :required => true
attribute :git_revision, :kind_of => String, :default => "master"
attribute :configuration, :kind_of => Hash, :default => {}
attribute :pre_deploy_rake_tasks, :kind_of => Array, :default => ["db:migrate", "assets:precompile"]
attribute :post_deploy_rake_tasks, :kind_of => Array, :default => []