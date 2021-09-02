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

# A provider to manage Cloud Runtime Configuration resources.
class RuntimeConfigConfig < GcpResourceBase
  name "google_runtime_config_config"
  desc "Config"
  supports platform: "gcp"

  attr_reader :params
  attr_reader :description
  attr_reader :name

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, "Get")
    parse unless @fetched.nil?
    @params = params
  end

  def parse
    @description = @fetched["description"]
    @name = @fetched["name"]
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "Config #{@params[:name]}"
  end

  def un_parse
    {
      "description" => ->(x, _) { x.nil? ? [] : ["its('description') { should cmp #{x.inspect} }"] },
      "name" => ->(x, _) { x.nil? ? [] : ["its('name') { should cmp #{x.inspect} }"] },
    }
  end

  def dump(path, template_path, test_number, ignored_fields)
    name = "Config"

    arr = un_parse.map do |k, v|
      next if ignored_fields.include?(k)
      v.call(method(k.to_sym).call, k)
    end
    template_vars = {
      name: name,
      arr: arr,
      type: "google_runtime_config_config",
      identifiers: @params,
      number: test_number,
    }
    File.open("#{path}/#{name}_#{test_number}.rb", "w") do |file|
      file.write(ERB.new(File.read(template_path)).result_with_hash(template_vars))
    end
  end

  private

  def product_url
    "https://runtimeconfig.googleapis.com/v1beta1/"
  end

  def resource_base_url
    "projects/{{project}}/configs/{{name}}"
  end
end
