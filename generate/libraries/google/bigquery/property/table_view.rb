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
require "google/bigquery/property/table_view_user_defined_function_resources"
module GoogleInSpec
  module BigQuery
    module Property
      class TableView
        attr_reader :arguments

        attr_reader :use_legacy_sql

        attr_reader :user_defined_function_resources

        def initialize(arguments = nil, parent_identifier = nil)
          @arguments = arguments
          return if arguments.nil?
          @parent_identifier = parent_identifier
          @use_legacy_sql = arguments["useLegacySql"]
          @user_defined_function_resources = GoogleInSpec::BigQuery::Property::TableViewUserDefinedFunctionResourcesArray.parse(arguments["userDefinedFunctionResources"], to_s)
        end

        def to_s
          "#{@parent_identifier} TableView"
        end

        def self.un_parse(item, current_path)
          return if item.nil?
          way_to_parse = {
            "use_legacy_sql" => ->(x, path) { x.nil? ? [] : ["its('#{path}.use_legacy_sql') { should cmp #{x.inspect} }"] },
            "user_defined_function_resources" => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.user_defined_function_resources') { should include '#{single.to_json}' }" } },
          }
          way_to_parse.map do |k, v|
            v.call(item.method(k).call, current_path)
          end
        end

        def to_json(*_args)
          @arguments.to_json
        end

        # other is a string representation of this object
        def ==(other)
          @arguments == JSON.parse(other)
        end
      end
    end
  end
end
