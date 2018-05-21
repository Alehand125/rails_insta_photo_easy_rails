Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Code is not reloaded between requests.
  config.cache_classes = true
  config.serve_static_files = true #для статичных файлов в продакшене
  config.assets.compile = true #чтобы работали стили
  config.assets.digest = true
  # eager load code on boot. this eager loads most of rails and
  # your application in memory, allowing both threaded web servers
  # and those relying on copy on write to perform better.
  # rake tasks automatically ignore this option for performance.
  config.eager_load = true

  # full error reports are disabled and caching is turned on.
  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true

  # disable serving static files from the `/public` folder by default since
  # apache or nginx already handles this.
  config.public_file_server.enabled = env['rails_serve_static_files'].present?

  # compress javascripts and css.
  config.assets.js_compressor = :uglifier
  # config.assets.js_compressor = uglifier.new(harmony: true)


  # config.assets.css_compressor = :sass

  # do not fallback to assets pipeline if a precompiled asset is missed.
  config.assets.compile = false

  # `config.assets.precompile` and `config.assets.version` have moved to config/initializers/assets.rb

  # enable serving of images, stylesheets, and javascripts from an asset server.
  # config.action_controller.asset_host = 'http://assets.example.com'

  # specifies the header that your server uses for sending files.
  # config.action_dispatch.x_sendfile_header = 'x-sendfile' # for apache
  # config.action_dispatch.x_sendfile_header = 'x-accel-redirect' # for nginx

  # mount action cable outside main process or domain
  # config.action_cable.mount_path = nil
  # config.action_cable.url = 'wss://example.com/cable'
  # config.action_cable.allowed_request_origins = [ 'http://example.com', /http:\/\/example.*/ ]

  # force all access to the app over ssl, use strict-transport-security, and use secure cookies.
  # config.force_ssl = true

  # use the lowest log level to ensure availability of diagnostic information
  # when problems arise.
  config.log_level = :debug

  # prepend all log lines with the following tags.
  config.log_tags = [:request_id]

  # use a different cache store in production.
  # config.cache_store = :mem_cache_store

  # use a real queuing backend for active job (and separate queues per environment)
  # config.active_job.queue_adapter     = :resque
  # config.active_job.queue_name_prefix = "instaphoto_#{rails.env}"
  config.action_mailer.perform_caching = false

  # ignore bad email addresses and do not raise email delivery errors.
  # set this to true and configure the email server for immediate delivery to raise delivery errors.
  # config.action_mailer.raise_delivery_errors = false

  # enable locale fallbacks for i18n (makes lookups for any locale fall back to
  # the i18n.default_locale when a translation cannot be found).
  config.i18n.fallbacks = true

  # send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # use default logging formatter so that pid and timestamp are not suppressed.
  config.log_formatter = ::logger::formatter.new

  # use a different logger for distributed setups.
  # require 'syslog/logger'
  # config.logger = activesupport::taggedlogging.new(syslog::logger.new 'app-name')


  config.paperclip_defaults = {
      storage: :s3,
      s3_credentials: {
          bucket: ENV.fetch('S3_BUCKET_NAME'),
          access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID'),
          secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
          s3_region: ENV.fetch('AWS_REGION'),
      }
  }


  if env["rails_log_to_stdout"].present?
    logger = activesupport::logger.new(stdout)
    logger.formatter = config.log_formatter
    config.logger = activesupport::taggedlogging.new(logger)
  end

  # do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false
  config.action_mailer.default_url_options = {host: 'localhost', port: 3000} #тут надо заменить на норм порт и адрес приложения
end
