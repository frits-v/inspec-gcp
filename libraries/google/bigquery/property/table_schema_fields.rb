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
  module BigQuery
    module Property
      class TableSchemaFields
        attr_reader :description

        attr_reader :fields

        attr_reader :mode

        attr_reader :name

        attr_reader :type

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @description = args["description"]
          @fields = args["fields"]
          @mode = args["mode"]
          @name = args["name"]
          @type = args["type"]
        end

        def to_s
          "#{@parent_identifier} TableSchemaFields"
        end
      end

      class TableSchemaFieldsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return TableSchemaFields.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| TableSchemaFields.new(v, parent_identifier) }
        end
      end
    end
  end
end
