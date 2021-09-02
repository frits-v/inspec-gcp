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
      class NodeTemplateNodeTypeFlexibility
        attr_reader :cpus

        attr_reader :memory

        attr_reader :local_ssd

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @cpus = args["cpus"]
          @memory = args["memory"]
          @local_ssd = args["localSsd"]
        end

        def to_s
          "#{@parent_identifier} NodeTemplateNodeTypeFlexibility"
        end
      end
    end
  end
end
