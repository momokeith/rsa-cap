set :stage, :staging

role :app, %w{rsa-cap@staging.bewamo.com}

server 'staging.bewamo.com',
   user: 'rsa-cap',
   roles: %w{app},
   ssh_options: {
     user: 'rsa-cap',
     keys: %w(/home/rsa-cap/.ssh/id_rsa),
     forward_agent: false,
     auth_methods: %w(publickey)
   }
