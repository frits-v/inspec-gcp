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
require "google/monitoring/property/alertpolicy_conditions"
require "google/monitoring/property/alertpolicy_creation_record"
require "google/monitoring/property/alertpolicy_documentation"

# A provider to manage Cloud (Stackdriver) Monitoring resources.
class MonitoringAlertPolicy < GcpResourceBase
  name "google_project_alert_policy"
  desc "AlertPolicy"
  supports platform: "gcp"

  attr_reader :params
  attr_reader :name
  attr_reader :display_name
  attr_reader :combiner
  attr_reader :creation_record
  attr_reader :enabled
  attr_reader :conditions
  attr_reader :notification_channels
  attr_reader :user_labels
  attr_reader :documentation

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url(params[:beta]), resource_base_url, params, "Get")
    parse unless @fetched.nil?
  end

  def parse
    @name = @fetched["name"]
    @display_name = @fetched["displayName"]
    @combiner = @fetched["combiner"]
    @creation_record = GoogleInSpec::Monitoring::Property::AlertPolicyCreationRecord.new(@fetched["creationRecord"], to_s)
    @enabled = @fetched["enabled"]
    @conditions = GoogleInSpec::Monitoring::Property::AlertPolicyConditionsArray.parse(@fetched["conditions"], to_s)
    @notification_channels = @fetched["notificationChannels"]
    @user_labels = @fetched["userLabels"]
    @documentation = GoogleInSpec::Monitoring::Property::AlertPolicyDocumentation.new(@fetched["documentation"], to_s)
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "AlertPolicy #{@params[:name]}"
  end

  def enabled?
    @enabled
  end

  private

  def product_url(_ = nil)
    "https://monitoring.googleapis.com/"
  end

  def resource_base_url
    "v3/projects/{{project}}/alertPolicies/{{name}}"
  end
end
