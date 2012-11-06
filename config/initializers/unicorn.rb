if Rails.env.production?
  NewRelic::Agent.after_fork(force_reconnect: true) if defined? Unicorn
end
