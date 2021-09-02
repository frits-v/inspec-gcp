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
module GoogleInSpec
  module BigQuery
    module Property
      class TableStreamingBuffer
        attr_reader :estimated_bytes

        attr_reader :estimated_rows

        attr_reader :oldest_entry_time

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @estimated_bytes = args["estimatedBytes"]
          @estimated_rows = args["estimatedRows"]
          @oldest_entry_time = args["oldestEntryTime"]
        end

        def to_s
          "#{@parent_identifier} TableStreamingBuffer"
        end
      end
    end
  end
end
