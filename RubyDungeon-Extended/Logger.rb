class Logger

    @@exited = false

    def self.exited?
        return @@exited
    end

    def self.debug(message, *parameters)
        if (@@in_debug)
            if message.kind_of? Array
                puts message
                return
            end
            string_parameters = []
            for parameter in parameters
                string_parameters.append(parameter.to_s)
            end
            puts format(message, *string_parameters)
        end
    end

    def self.try_or_log(exception = StandardError, silent = false, &block)
        begin
            return block.call
        rescue exception => e
            catch_and_log(e, silent)
        end
        return nil
    end

    def self.catch_and_log(exception, silent = false)
        Logger.check_exit(exception)
        if (!silent || @@in_debug)
            Narrator.unexpected_error
        end
        error_trace = "\n[#{Time.now.utc.strftime('%m/%d/%Y %H:%M %p')}] Error - #{exception.class} : #{exception.message} \n    #{exception.backtrace.join("\n    ")}"
        SaveManager.log(error_trace)
        if @@in_debug
            puts error_trace
        end
    end

    def self.set_debug(in_debug = true)
        @@in_debug = in_debug
    end

    def self.exit
        @@exited = true
    end

    def self.check_exit(exception)
        if @@exited
            raise exception
        end
    end

    private

    def initialize
    end
end
