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
require "google/serviceusage/property/service_config_apis"
module GoogleInSpec
  module ServiceUsage
    module Property
      class ServiceConfig
        attr_reader :name

        attr_reader :title

        attr_reader :apis

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @name = args["name"]
          @title = args["title"]
          @apis = GoogleInSpec::ServiceUsage::Property::ServiceConfigApisArray.parse(args["apis"], to_s)
        end

        def to_s
          "#{@parent_identifier} ServiceConfig"
        end
      end
    end
  end
end
