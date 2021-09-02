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
require "google/storage/property/defaultobjectacl_project_team"

# A provider to manage Cloud Storage resources.
class StorageDefaultObjectACL < GcpResourceBase
  name "google_storage_default_object_acl"
  desc "DefaultObjectACL"
  supports platform: "gcp"

  attr_reader :params
  attr_reader :domain
  attr_reader :email
  attr_reader :entity
  attr_reader :entity_id
  attr_reader :generation
  attr_reader :id
  attr_reader :object
  attr_reader :project_team
  attr_reader :role

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url(params[:beta]), resource_base_url, params, "Get")
    parse unless @fetched.nil?
  end

  def parse
    @domain = @fetched["domain"]
    @email = @fetched["email"]
    @entity = @fetched["entity"]
    @entity_id = @fetched["entityId"]
    @generation = @fetched["generation"]
    @id = @fetched["id"]
    @object = @fetched["object"]
    @project_team = GoogleInSpec::Storage::Property::DefaultObjectACLProjectTeam.new(@fetched["projectTeam"], to_s)
    @role = @fetched["role"]
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "DefaultObjectACL #{@params[:entity]}"
  end

  def bucket
    @params[:bucket]
  end

  private

  def product_url(_ = nil)
    "https://storage.googleapis.com/storage/v1/"
  end

  def resource_base_url
    "b/{{bucket}}/defaultObjectAcl/{{entity}}"
  end
end
