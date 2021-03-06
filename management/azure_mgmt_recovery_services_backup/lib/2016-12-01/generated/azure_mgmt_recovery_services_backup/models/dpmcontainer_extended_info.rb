# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Additional information of the DPMContainer.
    #
    class DPMContainerExtendedInfo

      include MsRestAzure

      # @return [DateTime] Last refresh time of the DPMContainer.
      attr_accessor :last_refreshed_at


      #
      # Mapper for DPMContainerExtendedInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DPMContainerExtendedInfo',
          type: {
            name: 'Composite',
            class_name: 'DPMContainerExtendedInfo',
            model_properties: {
              last_refreshed_at: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastRefreshedAt',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
