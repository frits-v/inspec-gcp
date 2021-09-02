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
require "gcp_backend"
require "google/dns/property/managedzone_dnssec_config"
require "google/dns/property/managedzone_dnssec_config_default_key_specs"
require "google/dns/property/managedzone_forwarding_config"
require "google/dns/property/managedzone_forwarding_config_target_name_servers"
require "google/dns/property/managedzone_peering_config"
require "google/dns/property/managedzone_peering_config_target_network"
require "google/dns/property/managedzone_private_visibility_config"
require "google/dns/property/managedzone_private_visibility_config_networks"
require "google/dns/property/managedzone_service_directory_config"
require "google/dns/property/managedzone_service_directory_config_namespace"

# A provider to manage Cloud DNS resources.
class DNSManagedZone < GcpResourceBase
  name "google_dns_managed_zone"
  desc "ManagedZone"
  supports platform: "gcp"

  attr_reader :params
  attr_reader :description
  attr_reader :dns_name
  attr_reader :dnssec_config
  attr_reader :id
  attr_reader :name
  attr_reader :name_servers
  attr_reader :name_server_set
  attr_reader :creation_time
  attr_reader :labels
  attr_reader :visibility
  attr_reader :private_visibility_config
  attr_reader :forwarding_config
  attr_reader :peering_config
  attr_reader :reverse_lookup
  attr_reader :service_directory_config

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url(params[:beta]), resource_base_url, params, "Get")
    parse unless @fetched.nil?
  end

  def parse
    @description = @fetched["description"]
    @dns_name = @fetched["dnsName"]
    @dnssec_config = GoogleInSpec::DNS::Property::ManagedZoneDnssecConfig.new(@fetched["dnssecConfig"], to_s)
    @id = @fetched["id"]
    @name = @fetched["name"]
    @name_servers = @fetched["nameServers"]
    @name_server_set = @fetched["nameServerSet"]
    @creation_time = parse_time_string(@fetched["creationTime"])
    @labels = @fetched["labels"]
    @visibility = @fetched["visibility"]
    @private_visibility_config = GoogleInSpec::DNS::Property::ManagedZonePrivateVisibilityConfig.new(@fetched["privateVisibilityConfig"], to_s)
    @forwarding_config = GoogleInSpec::DNS::Property::ManagedZoneForwardingConfig.new(@fetched["forwardingConfig"], to_s)
    @peering_config = GoogleInSpec::DNS::Property::ManagedZonePeeringConfig.new(@fetched["peeringConfig"], to_s)
    @reverse_lookup = @fetched["reverseLookupConfig"]
    @service_directory_config = GoogleInSpec::DNS::Property::ManagedZoneServiceDirectoryConfig.new(@fetched["serviceDirectoryConfig"], to_s)
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "ManagedZone #{@params[:zone]}"
  end

  def key_signing_key_algorithm
    specs = @dnssec_config&.default_key_specs
    specs.each do |spec|
      return spec.algorithm if spec.key_type == "keySigning"
    end
  end

  def zone_signing_key_algorithm
    specs = @dnssec_config&.default_key_specs
    specs.each do |spec|
      return spec.algorithm if spec.key_type == "zoneSigning"
    end
  end

  private

  def product_url(beta = false)
    if beta
      "https://dns.googleapis.com/dns/v1beta2/"
    else
      "https://dns.googleapis.com/dns/v1/"
    end
  end

  def resource_base_url
    "projects/{{project}}/managedZones/{{zone}}"
  end
end
