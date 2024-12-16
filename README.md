# Pretty Logger

Developer friendly pretty log for ruby developers.

### Installation
Add the following lines to your `Gemfile`.
```bash
source 'https://github.com/majidalaeinia/pretty-log.git'
gem 'pretty-log'
```

### Usage
```ruby
require 'pretty_logger/file_logger'

PrettyLogger::FileLogger.emergency('my_logs.log', {:a => 'b'})
PrettyLogger::FileLogger.alert('my_logs.log', 'Something went wrong.')
PrettyLogger::FileLogger.critical('my_logs.log', 'Something went wrong.')
PrettyLogger::FileLogger.error('my_logs.log', 'Something went wrong.')
PrettyLogger::FileLogger.warning('my_logs.log', 'Something went wrong.')
PrettyLogger::FileLogger.notice('my_logs.log', 'Something went wrong.')
PrettyLogger::FileLogger.info('my_logs.log', 'Something went wrong.')
PrettyLogger::FileLogger.debug('my_logs.log', 'Something went wrong.')
```

Then you can find your logs on this path: `log/pretty_logger/my_logs.log`

The available methods are based on [RFC 5424](https://tools.ietf.org/html/rfc5424).
