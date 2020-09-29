# Rails 6 Zeitwerk Autoload Warning for Sidekiq Server middleware

Steps to reproduce:

```bash
git clone https://github.com/ndbroadbent/sidekiq_server_middleware_zeitwerk.git /tmp/sidekiq_server_middleware_zeitwerk
cd /tmp/sidekiq_server_middleware_zeitwerk
bundle install
bundle exec sidekiq
```

You should see:

```
$ bundle exec sidekiq
DEPRECATION WARNING: Initialization autoloaded the constants Sidekiq::Middleware::Server and Sidekiq::Middleware::Server::ExampleMiddleware.

Being able to do this is deprecated. Autoloading during initialization is going
to be an error condition in future versions of Rails.

Reloading does not reboot the application, and therefore code executed during
initialization does not run again. So, if you reload Sidekiq::Middleware::Server, for example,
the expected changes won't be reflected in that stale Module object.

These autoloaded constants have been unloaded.

Please, check the "Autoloading and Reloading Constants" guide for solutions.
 (called from <top (required)> at /Users/ndbroadbent/code/sidekiq_server_middleware_zeitwork/config/environment.rb:5)


               m,
               `$b
          .ss,  $$:         .,d$
          `$$P,d$P'    .,md$P"'
           ,$$$$$b/md$$$P^'
         .d$$$$$$/$$$P'
         $$^' `"/$$$'       ____  _     _      _    _
         $:     ,$$:       / ___|(_) __| | ___| | _(_) __ _
         `b     :$$        \___ \| |/ _` |/ _ \ |/ / |/ _` |
                $$:         ___) | | (_| |  __/   <| | (_| |
                $$         |____/|_|\__,_|\___|_|\_\_|\__, |
              .d$$                                       |_|


2020-09-29T11:12:26.365Z pid=25376 tid=ox5hwnlzw INFO: Booted Rails 6.0.3.3 application in development environment
2020-09-29T11:12:26.365Z pid=25376 tid=ox5hwnlzw INFO: Running in ruby 2.6.5p114 (2019-10-01 revision 67812) [x86_64-darwin19]
2020-09-29T11:12:26.365Z pid=25376 tid=ox5hwnlzw INFO: See LICENSE and the LGPL-3.0 for licensing details.
2020-09-29T11:12:26.365Z pid=25376 tid=ox5hwnlzw INFO: Upgrade to Sidekiq Pro for more features and support: https://sidekiq.org
2020-09-29T11:12:26.366Z pid=25376 tid=ox5hwnlzw INFO: Booting Sidekiq 6.1.2 with redis options {}
2020-09-29T11:12:26.367Z pid=25376 tid=ox5hwnlzw INFO: Starting processing, hit Ctrl-C to stop
```
