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
require "google/accesscontextmanager/property/accesslevel_custom_expr"
module GoogleInSpec
  module AccessContextManager
    module Property
      class AccessLevelCustom
        attr_reader :expr

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @expr = GoogleInSpec::AccessContextManager::Property::AccessLevelCustomExpr.new(args["expr"], to_s)
        end

        def to_s
          "#{@parent_identifier} AccessLevelCustom"
        end
      end
    end
  end
end
