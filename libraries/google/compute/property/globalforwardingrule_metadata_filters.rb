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
require "google/compute/property/globalforwardingrule_metadata_filters_filter_labels"
module GoogleInSpec
  module Compute
    module Property
      class GlobalForwardingRuleMetadataFilters
        attr_reader :filter_match_criteria

        attr_reader :filter_labels

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @filter_match_criteria = args["filterMatchCriteria"]
          @filter_labels = GoogleInSpec::Compute::Property::GlobalForwardingRuleMetadataFiltersFilterLabelsArray.parse(args["filterLabels"], to_s)
        end

        def to_s
          "#{@parent_identifier} GlobalForwardingRuleMetadataFilters"
        end
      end

      class GlobalForwardingRuleMetadataFiltersArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return GlobalForwardingRuleMetadataFilters.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| GlobalForwardingRuleMetadataFilters.new(v, parent_identifier) }
        end
      end
    end
  end
end
