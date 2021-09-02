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
require "google/compute/property/urlmap_default_route_action_retry_policy_per_try_timeout"
module GoogleInSpec
  module Compute
    module Property
      class UrlMapDefaultRouteActionRetryPolicy
        attr_reader :retry_conditions

        attr_reader :num_retries

        attr_reader :per_try_timeout

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @retry_conditions = args["retryConditions"]
          @num_retries = args["numRetries"]
          @per_try_timeout = GoogleInSpec::Compute::Property::UrlMapDefaultRouteActionRetryPolicyPerTryTimeout.new(args["perTryTimeout"], to_s)
        end

        def to_s
          "#{@parent_identifier} UrlMapDefaultRouteActionRetryPolicy"
        end
      end
    end
  end
end
