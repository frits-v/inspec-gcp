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
require "google/compute/property/instance_disks_disk_encryption_key"
require "google/compute/property/instance_disks_initialize_params"
require "google/compute/property/instance_disks_initialize_params_source_image_encryption_key"
module GoogleInSpec
  module Compute
    module Property
      class InstanceDisks
        attr_reader :arguments

        attr_reader :auto_delete

        attr_reader :boot

        attr_reader :device_name

        attr_reader :disk_encryption_key

        attr_reader :index

        attr_reader :initialize_params

        attr_reader :interface

        attr_reader :mode

        attr_reader :source

        attr_reader :type

        def initialize(arguments = nil, parent_identifier = nil)
          @arguments = arguments
          return if arguments.nil?
          @parent_identifier = parent_identifier
          @auto_delete = arguments["autoDelete"]
          @boot = arguments["boot"]
          @device_name = arguments["deviceName"]
          @disk_encryption_key = GoogleInSpec::Compute::Property::InstanceDisksDiskEncryptionKey.new(arguments["diskEncryptionKey"], to_s)
          @index = arguments["index"]
          @initialize_params = GoogleInSpec::Compute::Property::InstanceDisksInitializeParams.new(arguments["initializeParams"], to_s)
          @interface = arguments["interface"]
          @mode = arguments["mode"]
          @source = arguments["source"]
          @type = arguments["type"]
        end

        def to_s
          "#{@parent_identifier} InstanceDisks"
        end

        def self.un_parse(item, current_path)
          return if item.nil?
          way_to_parse = {
            "auto_delete" => ->(x, path) { x.nil? ? [] : ["its('#{path}.auto_delete') { should cmp #{x.inspect} }"] },
            "boot" => ->(x, path) { x.nil? ? [] : ["its('#{path}.boot') { should cmp #{x.inspect} }"] },
            "device_name" => ->(x, path) { x.nil? ? [] : ["its('#{path}.device_name') { should cmp #{x.inspect} }"] },
            "disk_encryption_key" => ->(x, path) { x.nil? ? [] : GoogleInSpec::Compute::Property::InstanceDisksDiskEncryptionKey.un_parse(x, "#{path}.disk_encryption_key") },
            "index" => ->(x, path) { x.nil? ? [] : ["its('#{path}.index') { should cmp #{x.inspect} }"] },
            "initialize_params" => ->(x, path) { x.nil? ? [] : GoogleInSpec::Compute::Property::InstanceDisksInitializeParams.un_parse(x, "#{path}.initialize_params") },
            "interface" => ->(x, path) { x.nil? ? [] : ["its('#{path}.interface') { should cmp #{x.inspect} }"] },
            "mode" => ->(x, path) { x.nil? ? [] : ["its('#{path}.mode') { should cmp #{x.inspect} }"] },
            "source" => ->(x, path) { x.nil? ? [] : ["its('#{path}.source') { should cmp #{x.inspect} }"] },
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

      class InstanceDisksArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return InstanceDisks.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| InstanceDisks.new(v, parent_identifier) }
        end

        def self.un_parse(arr, path)
          return if arr.nil?
          value.map { |v| InstanceDisks.un_parse(v, path) }
        end
      end
    end
  end
end
