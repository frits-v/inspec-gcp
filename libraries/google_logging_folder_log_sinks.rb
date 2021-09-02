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
class LoggingFolderLogSinks < GcpResourceBase
  name "google_logging_folder_log_sinks"
  desc "FolderLogSink plural resource"
  supports platform: "gcp"

  attr_reader :table

  filter_table_config = FilterTable.create

  filter_table_config.add(:folders, field: :folder)
  filter_table_config.add(:names, field: :name)
  filter_table_config.add(:filters, field: :filter)
  filter_table_config.add(:destinations, field: :destination)
  filter_table_config.add(:writer_identities, field: :writer_identity)
  filter_table_config.add(:include_children, field: :include_children)

  filter_table_config.connect(self, :table)

  def initialize(params = {})
    super(params.merge({ use_http_transport: true }))
    @params = params
    @table = fetch_wrapped_resource("sinks")
  end

  def fetch_wrapped_resource(wrap_path)
    # fetch_resource returns an array of responses (to handle pagination)
    result = @connection.fetch_all(product_url, resource_base_url, @params, "Get")
    return if result.nil?

    # Conversion of string -> object hash to symbol -> object hash that InSpec needs
    converted = []
    result.each do |response|
      next if response.nil? || !response.key?(wrap_path)
      response[wrap_path].each do |hash|
        hash_with_symbols = {}
        hash.each_key do |key|
          name, value = transform(key, hash)
          hash_with_symbols[name] = value
        end
        converted.push(hash_with_symbols)
      end
    end

    converted
  end

  def transform(key, value)
    return transformers[key].call(value) if transformers.key?(key)

    [key.to_sym, value]
  end

  def transformers
    {
      "folder" => ->(obj) { return :folder, obj["folder"] },
      "name" => ->(obj) { return :name, obj["name"] },
      "filter" => ->(obj) { return :filter, obj["filter"] },
      "destination" => ->(obj) { return :destination, obj["destination"] },
      "writerIdentity" => ->(obj) { return :writer_identity, obj["writerIdentity"] },
      "includeChildren" => ->(obj) { return :include_children, obj["includeChildren"] },
    }
  end

  private

  def product_url(_ = nil)
    "https://logging.googleapis.com/v2/"
  end

  def resource_base_url
    "folders/{{folder}}/sinks"
  end
end
