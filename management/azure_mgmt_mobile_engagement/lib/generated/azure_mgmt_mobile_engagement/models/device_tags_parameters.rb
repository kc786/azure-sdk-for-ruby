# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Model object.
    #
    class DeviceTagsParameters

      include MsRestAzure

      # @return [Hash{String => Hash{String => String}}] A JSON object
      # describing the set of tags to record for a set of users. Each key is
      # a device/user identifier, each value is itself a key/value set: the
      # tags to set for the specified device/user identifier.
      attr_accessor :tags

      # @return [Boolean] If this parameter is `true`, tags with a null value
      # will be deleted. Default value: false .
      attr_accessor :delete_on_null


      #
      # Mapper for DeviceTagsParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeviceTagsParameters',
          type: {
            name: 'Composite',
            class_name: 'DeviceTagsParameters',
            model_properties: {
              tags: {
                required: true,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'HashElementType',
                      type: {
                        name: 'Dictionary',
                        value: {
                            required: false,
                            serialized_name: 'StringElementType',
                            type: {
                              name: 'String'
                            }
                        }
                      }
                  }
                }
              },
              delete_on_null: {
                required: false,
                serialized_name: 'deleteOnNull',
                default_value: false,
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