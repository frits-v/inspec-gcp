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
        attr_reader :arguments

        attr_reader :description

        attr_reader :fields

        attr_reader :mode

        attr_reader :name

        attr_reader :type

        def initialize(arguments = nil, parent_identifier = nil)
          @arguments = arguments
          return if arguments.nil?
          @parent_identifier = parent_identifier
          @description = arguments["description"]
          @fields = arguments["fields"]
          @mode = arguments["mode"]
          @name = arguments["name"]
          @type = arguments["type"]
        end

        def to_s
          "#{@parent_identifier} TableSchemaFields"
        end

        def self.un_parse(item, current_path)
          return if item.nil?
          way_to_parse = {
            "description" => ->(x, path) { x.nil? ? [] : ["its('#{path}.description') { should cmp #{x.inspect} }"] },
            "fields" => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.fields') { should include #{single.inspect} }" } },
            "mode" => ->(x, path) { x.nil? ? [] : ["its('#{path}.mode') { should cmp #{x.inspect} }"] },
            "name" => ->(x, path) { x.nil? ? [] : ["its('#{path}.name') { should cmp #{x.inspect} }"] },
            "type" => ->(x, path) { x.nil? ? [] : ["its('#{path}.type') { should cmp #{x.inspect} }"] },
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

      class TableSchemaFieldsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return TableSchemaFields.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| TableSchemaFields.new(v, parent_identifier) }
        end

        def self.un_parse(arr, path)
          return if arr.nil?
          value.map { |v| TableSchemaFields.un_parse(v, path) }
        end
      end
    end
  end
end
