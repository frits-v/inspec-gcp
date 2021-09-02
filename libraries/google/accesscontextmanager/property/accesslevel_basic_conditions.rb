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
require "google/accesscontextmanager/property/accesslevel_basic_conditions_device_policy"
require "google/accesscontextmanager/property/accesslevel_basic_conditions_device_policy_os_constraints"
module GoogleInSpec
  module AccessContextManager
    module Property
      class AccessLevelBasicConditions
        attr_reader :ip_subnetworks

        attr_reader :required_access_levels

        attr_reader :members

        attr_reader :negate

        attr_reader :device_policy

        attr_reader :regions

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @ip_subnetworks = args["ipSubnetworks"]
          @required_access_levels = args["requiredAccessLevels"]
          @members = args["members"]
          @negate = args["negate"]
          @device_policy = GoogleInSpec::AccessContextManager::Property::AccessLevelBasicConditionsDevicePolicy.new(args["devicePolicy"], to_s)
          @regions = args["regions"]
        end

        def to_s
          "#{@parent_identifier} AccessLevelBasicConditions"
        end
      end

      class AccessLevelBasicConditionsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return AccessLevelBasicConditions.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| AccessLevelBasicConditions.new(v, parent_identifier) }
        end
      end
    end
  end
end
