module Logging
  class FileLogger

    def self.emergency(filename, message)
      write(filename, message, 'EMERGENCY')
    end

    def self.alert(filename, message)
      write(filename, message, 'ALERT')
    end

    def self.critical(filename, message)
      write(filename, message, 'CRITICAL')
    end

    def self.error(filename, message)
      write(filename, message, 'ERROR')
    end

    def self.warning(filename, message)
      write(filename, message, 'WARNING')
    end

    def self.notice(filename, message)
      write(filename, message, 'NOTICE')
    end

    def self.info(filename, message)
      write(filename, message, 'INFO')
    end

    def self.debug(filename, message)
      write(filename, message, 'DEBUG')
    end

    class << self
      private

      def write(filename, message, type)
        make_logger_directory
        datetime = DateTime.now.strftime('%Y-%m-%d %H:%M:%S')
        File.write(
          File.join(logger_path, filename),
          "\n[#{datetime}] #{type}: #{message}",
          mode: 'a'
        )
      end

      def make_logger_directory
        Dir.mkdir(logger_path) unless Dir.exists?(logger_path)
      end

      def logger_path
        Rails.root.join('log/pretty_logger')
      end
    end
  end
end