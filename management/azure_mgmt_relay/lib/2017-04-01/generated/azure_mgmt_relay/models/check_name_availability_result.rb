# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Relay::Api_2017_04_01
  module Models
    #
    # Description of the check name availability request properties.
    #
    class CheckNameAvailabilityResult

      include MsRestAzure

      # @return [String] The detailed info regarding the reason associated with
      # the namespace.
      attr_accessor :message

      # @return [Boolean] Value indicating namespace is available. Returns true
      # if the namespace is available; otherwise, false.
      attr_accessor :name_available

      # @return [UnavailableReason] The reason for unavailability of a
      # namespace. Possible values include: 'None', 'InvalidName',
      # 'SubscriptionIsDisabled', 'NameInUse', 'NameInLockdown',
      # 'TooManyNamespaceInCurrentSubscription'
      attr_accessor :reason


      #
      # Mapper for CheckNameAvailabilityResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CheckNameAvailabilityResult',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityResult',
            model_properties: {
              message: {
                required: false,
                read_only: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              name_available: {
                required: false,
                serialized_name: 'nameAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              reason: {
                required: false,
                serialized_name: 'reason',
                type: {
                  name: 'Enum',
                  module: 'UnavailableReason'
                }
              }
            }
          }
        }
      end
    end
  end
end