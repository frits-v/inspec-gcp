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
  module Compute
    module Property
      class InstanceGroupManagerCurrentActions
        attr_reader :arguments

        attr_reader :abandoning

        attr_reader :creating

        attr_reader :creating_without_retries

        attr_reader :deleting

        attr_reader :none

        attr_reader :recreating

        attr_reader :refreshing

        attr_reader :restarting

        def initialize(arguments = nil, parent_identifier = nil)
          @arguments = arguments
          return if arguments.nil?
          @parent_identifier = parent_identifier
          @abandoning = arguments["abandoning"]
          @creating = arguments["creating"]
          @creating_without_retries = arguments["creatingWithoutRetries"]
          @deleting = arguments["deleting"]
          @none = arguments["none"]
          @recreating = arguments["recreating"]
          @refreshing = arguments["refreshing"]
          @restarting = arguments["restarting"]
        end

        def to_s
          "#{@parent_identifier} InstanceGroupManagerCurrentActions"
        end

        def self.un_parse(item, current_path)
          return if item.nil?
          way_to_parse = {
            "abandoning" => ->(x, path) { x.nil? ? [] : ["its('#{path}.abandoning') { should cmp #{x.inspect} }"] },
            "creating" => ->(x, path) { x.nil? ? [] : ["its('#{path}.creating') { should cmp #{x.inspect} }"] },
            "creating_without_retries" => ->(x, path) { x.nil? ? [] : ["its('#{path}.creating_without_retries') { should cmp #{x.inspect} }"] },
            "deleting" => ->(x, path) { x.nil? ? [] : ["its('#{path}.deleting') { should cmp #{x.inspect} }"] },
            "none" => ->(x, path) { x.nil? ? [] : ["its('#{path}.none') { should cmp #{x.inspect} }"] },
            "recreating" => ->(x, path) { x.nil? ? [] : ["its('#{path}.recreating') { should cmp #{x.inspect} }"] },
            "refreshing" => ->(x, path) { x.nil? ? [] : ["its('#{path}.refreshing') { should cmp #{x.inspect} }"] },
            "restarting" => ->(x, path) { x.nil? ? [] : ["its('#{path}.restarting') { should cmp #{x.inspect} }"] },
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
