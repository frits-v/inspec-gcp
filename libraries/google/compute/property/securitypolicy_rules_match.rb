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
require "google/compute/property/securitypolicy_rules_match_config"
require "google/compute/property/securitypolicy_rules_match_expr"
module GoogleInSpec
  module Compute
    module Property
      class SecurityPolicyRulesMatch
        attr_reader :description

        attr_reader :expr

        attr_reader :versioned_expr

        attr_reader :config

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @description = args["description"]
          @expr = GoogleInSpec::Compute::Property::SecurityPolicyRulesMatchExpr.new(args["expr"], to_s)
          @versioned_expr = args["versionedExpr"]
          @config = GoogleInSpec::Compute::Property::SecurityPolicyRulesMatchConfig.new(args["config"], to_s)
        end

        def to_s
          "#{@parent_identifier} SecurityPolicyRulesMatch"
        end
      end
    end
  end
end
