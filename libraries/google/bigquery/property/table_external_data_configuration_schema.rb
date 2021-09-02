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
require "google/bigquery/property/table_external_data_configuration_schema_fields"
module GoogleInSpec
  module BigQuery
    module Property
      class TableExternalDataConfigurationSchema
        attr_reader :fields

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @fields = GoogleInSpec::BigQuery::Property::TableExternalDataConfigurationSchemaFieldsArray.parse(args["fields"], to_s)
        end

        def to_s
          "#{@parent_identifier} TableExternalDataConfigurationSchema"
        end
      end
    end
  end
end
