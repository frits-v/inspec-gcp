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
require "google/compute/property/sslpolicy_warnings"

# A provider to manage Compute Engine resources.
class ComputeSslPolicy < GcpResourceBase
  name "google_compute_ssl_policy"
  desc "SslPolicy"
  supports platform: "gcp"

  attr_reader :params
  attr_reader :creation_timestamp
  attr_reader :description
  attr_reader :id
  attr_reader :name
  attr_reader :profile
  attr_reader :min_tls_version
  attr_reader :enabled_features
  attr_reader :custom_features
  attr_reader :fingerprint
  attr_reader :warnings

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, "Get")
    parse unless @fetched.nil?
    @params = params
  end

  def parse
    @creation_timestamp = parse_time_string(@fetched["creationTimestamp"])
    @description = @fetched["description"]
    @id = @fetched["id"]
    @name = @fetched["name"]
    @profile = @fetched["profile"]
    @min_tls_version = @fetched["minTlsVersion"]
    @enabled_features = @fetched["enabledFeatures"]
    @custom_features = @fetched["customFeatures"]
    @fingerprint = @fetched["fingerprint"]
    @warnings = GoogleInSpec::Compute::Property::SslPolicyWarningsArray.parse(@fetched["warnings"], to_s)
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "SslPolicy #{@params[:name]}"
  end

  def un_parse
    {
      "creation_timestamp" => ->(x, _) { x.nil? ? [] : ["its('creation_timestamp.to_s') { should cmp '#{x.inspect}' }"] },
      "description" => ->(x, _) { x.nil? ? [] : ["its('description') { should cmp #{x.inspect} }"] },
      "id" => ->(x, _) { x.nil? ? [] : ["its('id') { should cmp #{x.inspect} }"] },
      "name" => ->(x, _) { x.nil? ? [] : ["its('name') { should cmp #{x.inspect} }"] },
      "profile" => ->(x, _) { x.nil? ? [] : ["its('profile') { should cmp #{x.inspect} }"] },
      "min_tls_version" => ->(x, _) { x.nil? ? [] : ["its('min_tls_version') { should cmp #{x.inspect} }"] },
      "enabled_features" => ->(x, _) { x.nil? ? [] : x.map { |single| "its('enabled_features') { should include #{single.inspect} }" } },
      "custom_features" => ->(x, _) { x.nil? ? [] : x.map { |single| "its('custom_features') { should include #{single.inspect} }" } },
      "fingerprint" => ->(x, _) { x.nil? ? [] : ["its('fingerprint') { should cmp #{x.inspect} }"] },
      "warnings" => ->(x, _) { x.nil? ? [] : x.map { |single| "its('warnings') { should include '#{single.to_json}' }" } },
    }
  end

  def dump(path, template_path, test_number, ignored_fields)
    name = "SslPolicy"

    arr = un_parse.map do |k, v|
      next if ignored_fields.include?(k)
      v.call(method(k.to_sym).call, k)
    end
    template_vars = {
      name: name,
      arr: arr,
      type: "google_compute_ssl_policy",
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
    "projects/{{project}}/global/sslPolicies/{{name}}"
  end
end
