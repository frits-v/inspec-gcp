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
  module Filestore
    module Property
      class InstanceFileShares
        attr_reader :arguments

        attr_reader :name

        attr_reader :capacity_gb

        def initialize(arguments = nil, parent_identifier = nil)
          @arguments = arguments
          return if arguments.nil?
          @parent_identifier = parent_identifier
          @name = arguments["name"]
          @capacity_gb = arguments["capacityGb"]
        end

        def to_s
          "#{@parent_identifier} InstanceFileShares"
        end

        def self.un_parse(item, current_path)
          return if item.nil?
          way_to_parse = {
            "name" => ->(x, path) { x.nil? ? [] : ["its('#{path}.name') { should cmp #{x.inspect} }"] },
            "capacity_gb" => ->(x, path) { x.nil? ? [] : ["its('#{path}.capacity_gb') { should cmp #{x.inspect} }"] },
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

      class InstanceFileSharesArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return InstanceFileShares.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| InstanceFileShares.new(v, parent_identifier) }
        end

        def self.un_parse(arr, path)
          return if arr.nil?
          value.map { |v| InstanceFileShares.un_parse(v, path) }
        end
      end
    end
  end
end
