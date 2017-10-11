# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web::Api_2016_08_01
  module Models
    #
    # Http logs to file system configuration.
    #
    class FileSystemHttpLogsConfig

      include MsRestAzure

      # @return [Integer] Maximum size in megabytes that http log files can
      # use.
      # When reached old log files will be removed to make space for new ones.
      # Value can range between 25 and 100.
      attr_accessor :retention_in_mb

      # @return [Integer] Retention in days.
      # Remove files older than X days.
      # 0 or lower means no retention.
      attr_accessor :retention_in_days

      # @return [Boolean] True if configuration is enabled, false if it is
      # disabled and null if configuration is not set.
      attr_accessor :enabled


      #
      # Mapper for FileSystemHttpLogsConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FileSystemHttpLogsConfig',
          type: {
            name: 'Composite',
            class_name: 'FileSystemHttpLogsConfig',
            model_properties: {
              retention_in_mb: {
                required: false,
                serialized_name: 'retentionInMb',
                constraints: {
                  InclusiveMaximum: 100,
                  InclusiveMinimum: 25
                },
                type: {
                  name: 'Number'
                }
              },
              retention_in_days: {
                required: false,
                serialized_name: 'retentionInDays',
                type: {
                  name: 'Number'
                }
              },
              enabled: {
                required: false,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end