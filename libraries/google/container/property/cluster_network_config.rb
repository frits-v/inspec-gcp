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
  module Container
    module Property
      class ClusterNetworkConfig
        attr_reader :enable_intra_node_visibility

        attr_reader :network

        attr_reader :subnetwork

        attr_reader :default_snat_status

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @enable_intra_node_visibility = args["enableIntraNodeVisibility"]
          @network = args["network"]
          @subnetwork = args["subnetwork"]
          @default_snat_status = args["defaultSnatStatus"]
        end

        def to_s
          "#{@parent_identifier} ClusterNetworkConfig"
        end
      end
    end
  end
end
