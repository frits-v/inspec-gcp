# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------
module GoogleInSpec
  module CloudScheduler
    module Property
      class JobRetryConfig
        attr_reader :retry_count

        attr_reader :max_retry_duration

        attr_reader :min_backoff_duration

        attr_reader :max_backoff_duration

        attr_reader :max_doublings

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @retry_count = args["retryCount"]
          @max_retry_duration = args["maxRetryDuration"]
          @min_backoff_duration = args["minBackoffDuration"]
          @max_backoff_duration = args["maxBackoffDuration"]
          @max_doublings = args["maxDoublings"]
        end

        def to_s
          "#{@parent_identifier} JobRetryConfig"
        end
      end
    end
  end
end
