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
require "google/compute/property/autoscaler_autoscaling_policy"
require "google/compute/property/autoscaler_autoscaling_policy_cpu_utilization"
require "google/compute/property/autoscaler_autoscaling_policy_custom_metric_utilizations"
require "google/compute/property/autoscaler_autoscaling_policy_load_balancing_utilization"

# A provider to manage Compute Engine resources.
class ComputeAutoscaler < GcpResourceBase
  name "google_compute_autoscaler"
  desc "Autoscaler"
  supports platform: "gcp"

  attr_reader :params
  attr_reader :id
  attr_reader :creation_timestamp
  attr_reader :name
  attr_reader :description
  attr_reader :autoscaling_policy
  attr_reader :target
  attr_reader :zone

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, "Get")
    parse unless @fetched.nil?
    @params = params
  end

  def parse
    @id = @fetched["id"]
    @creation_timestamp = parse_time_string(@fetched["creationTimestamp"])
    @name = @fetched["name"]
    @description = @fetched["description"]
    @autoscaling_policy = GoogleInSpec::Compute::Property::AutoscalerAutoscalingPolicy.new(@fetched["autoscalingPolicy"], to_s)
    @target = @fetched["target"]
    @zone = @fetched["zone"]
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "Autoscaler #{@params[:name]}"
  end

  def un_parse
    {
      "id" => ->(x, _) { x.nil? ? [] : ["its('id') { should cmp #{x.inspect} }"] },
      "creation_timestamp" => ->(x, _) { x.nil? ? [] : ["its('creation_timestamp.to_s') { should cmp '#{x.inspect}' }"] },
      "name" => ->(x, _) { x.nil? ? [] : ["its('name') { should cmp #{x.inspect} }"] },
      "description" => ->(x, _) { x.nil? ? [] : ["its('description') { should cmp #{x.inspect} }"] },
      "autoscaling_policy" => ->(x, _) { x.nil? ? [] : GoogleInSpec::Compute::Property::AutoscalerAutoscalingPolicy.un_parse(x, "autoscaling_policy") },
      "target" => ->(x, _) { x.nil? ? [] : ["its('target') { should cmp #{x.inspect} }"] },
      "zone" => ->(x, _) { x.nil? ? [] : ["its('zone') { should cmp #{x.inspect} }"] },
    }
  end

  def dump(path, template_path, test_number, ignored_fields)
    name = "Autoscaler"

    arr = un_parse.map do |k, v|
      next if ignored_fields.include?(k)
      v.call(method(k.to_sym).call, k)
    end
    template_vars = {
      name: name,
      arr: arr,
      type: "google_compute_autoscaler",
      identifiers: @params,
      number: test_number,
    }
    File.open("#{path}/#{name}_#{test_number}.rb", "w") do |file|
      file.write(ERB.new(File.read(template_path)).result_with_hash(template_vars))
    end
  end

  private

  def product_url
    "https://www.googleapis.com/compute/v1/"
  end

  def resource_base_url
    "projects/{{project}}/zones/{{zone}}/autoscalers/{{name}}"
  end
end
