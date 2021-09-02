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
require "google/iam/property/iam_policy_audit_configs"
require "google/iam/property/iam_policy_bindings"

# A provider to manage Cloud Pub/Sub IAM Policy resources.
class TopicIamPolicy < GcpResourceBase
  name "google_pubsub_topic_iam_policy"
  desc "Topic Iam Policy"
  supports platform: "gcp"

  attr_reader :params
  attr_reader :bindings
  attr_reader :audit_configs

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, "Get")
    parse unless @fetched.nil?
  end

  def parse
    @bindings = GoogleInSpec::Iam::Property::IamPolicyBindingsArray.parse(@fetched["bindings"], to_s)
    @audit_configs = GoogleInSpec::Iam::Property::IamPolicyAuditConfigsArray.parse(@fetched["auditConfigs"], to_s)
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "Topic IamPolicy #{@params[:name]}"
  end

  def iam_binding_roles
    @bindings.map(&:role)
  end

  def count
    @bindings.size
  end

  private

  def product_url
    "https://pubsub.googleapis.com/v1/"
  end

  def resource_base_url
    "projects/{{project}}/topics/{{name}}:getIamPolicy"
  end
end
