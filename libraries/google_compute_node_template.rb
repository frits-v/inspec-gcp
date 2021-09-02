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
require "google/compute/property/nodetemplate_node_type_flexibility"
require "google/compute/property/nodetemplate_server_binding"

# A provider to manage Compute Engine resources.
class ComputeNodeTemplate < GcpResourceBase
  name "google_compute_node_template"
  desc "NodeTemplate"
  supports platform: "gcp"

  attr_reader :params
  attr_reader :creation_timestamp
  attr_reader :description
  attr_reader :name
  attr_reader :node_affinity_labels
  attr_reader :node_type
  attr_reader :node_type_flexibility
  attr_reader :server_binding
  attr_reader :cpu_overcommit_type
  attr_reader :region

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url(params[:beta]), resource_base_url, params, "Get")
    parse unless @fetched.nil?
  end

  def parse
    @creation_timestamp = parse_time_string(@fetched["creationTimestamp"])
    @description = @fetched["description"]
    @name = @fetched["name"]
    @node_affinity_labels = @fetched["nodeAffinityLabels"]
    @node_type = @fetched["nodeType"]
    @node_type_flexibility = GoogleInSpec::Compute::Property::NodeTemplateNodeTypeFlexibility.new(@fetched["nodeTypeFlexibility"], to_s)
    @server_binding = GoogleInSpec::Compute::Property::NodeTemplateServerBinding.new(@fetched["serverBinding"], to_s)
    @cpu_overcommit_type = @fetched["cpuOvercommitType"]
    @region = @fetched["region"]
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "NodeTemplate #{@params[:name]}"
  end

  private

  def product_url(beta = false)
    if beta
      "https://compute.googleapis.com/compute/beta/"
    else
      "https://compute.googleapis.com/compute/v1/"
    end
  end

  def resource_base_url
    "projects/{{project}}/regions/{{region}}/nodeTemplates/{{name}}"
  end
end
