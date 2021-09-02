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
require "google/compute/property/instancetemplate_properties_disks"
require "google/compute/property/instancetemplate_properties_guest_accelerators"
require "google/compute/property/instancetemplate_properties_network_interfaces"
require "google/compute/property/instancetemplate_properties_scheduling"
require "google/compute/property/instancetemplate_properties_service_accounts"
require "google/compute/property/instancetemplate_properties_tags"
module GoogleInSpec
  module Compute
    module Property
      class InstanceTemplateProperties
        attr_reader :can_ip_forward

        attr_reader :description

        attr_reader :disks

        attr_reader :labels

        attr_reader :machine_type

        attr_reader :min_cpu_platform

        attr_reader :metadata

        attr_reader :guest_accelerators

        attr_reader :network_interfaces

        attr_reader :scheduling

        attr_reader :service_accounts

        attr_reader :tags

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @can_ip_forward = args["canIpForward"]
          @description = args["description"]
          @disks = GoogleInSpec::Compute::Property::InstanceTemplatePropertiesDisksArray.parse(args["disks"], to_s)
          @labels = args["labels"]
          @machine_type = args["machineType"]
          @min_cpu_platform = args["minCpuPlatform"]
          @metadata = args["metadata"]
          @guest_accelerators = GoogleInSpec::Compute::Property::InstanceTemplatePropertiesGuestAcceleratorsArray.parse(args["guestAccelerators"], to_s)
          @network_interfaces = GoogleInSpec::Compute::Property::InstanceTemplatePropertiesNetworkInterfacesArray.parse(args["networkInterfaces"], to_s)
          @scheduling = GoogleInSpec::Compute::Property::InstanceTemplatePropertiesScheduling.new(args["scheduling"], to_s)
          @service_accounts = GoogleInSpec::Compute::Property::InstanceTemplatePropertiesServiceAccountsArray.parse(args["serviceAccounts"], to_s)
          @tags = GoogleInSpec::Compute::Property::InstanceTemplatePropertiesTags.new(args["tags"], to_s)
        end

        def to_s
          "#{@parent_identifier} InstanceTemplateProperties"
        end
      end
    end
  end
end
