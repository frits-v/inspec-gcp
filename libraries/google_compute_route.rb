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
require 'gcp_backend'

# A provider to manage Compute Engine resources.
class ComputeRoute < GcpResourceBase
  name 'google_compute_route'
  desc 'Route'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :dest_range
  attr_reader :description
  attr_reader :name
  attr_reader :network
  attr_reader :priority
  attr_reader :tags
  attr_reader :next_hop_gateway
  attr_reader :next_hop_instance
  attr_reader :next_hop_ip
  attr_reader :next_hop_vpn_tunnel
  attr_reader :next_hop_network
  attr_reader :next_hop_ilb
  attr_reader :next_hop_peering

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url(params[:beta]), resource_base_url, params, 'Get')
    parse unless @fetched.nil?
  end

  def parse
    @dest_range = @fetched['destRange']
    @description = @fetched['description']
    @name = @fetched['name']
    @network = @fetched['network']
    @priority = @fetched['priority']
    @tags = @fetched['tags']
    @next_hop_gateway = @fetched['nextHopGateway']
    @next_hop_instance = @fetched['nextHopInstance']
    @next_hop_ip = @fetched['nextHopIp']
    @next_hop_vpn_tunnel = @fetched['nextHopVpnTunnel']
    @next_hop_network = @fetched['nextHopNetwork']
    @next_hop_ilb = @fetched['nextHopIlb']
    @next_hop_peering = @fetched['nextHopPeering']
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "Route #{@params[:name]}"
  end

  private

  def product_url(beta = false)
    if beta
      'https://compute.googleapis.com/compute/beta/'
    else
      'https://compute.googleapis.com/compute/v1/'
    end
  end

  def resource_base_url
    'projects/{{project}}/global/routes/{{name}}'
  end
end
