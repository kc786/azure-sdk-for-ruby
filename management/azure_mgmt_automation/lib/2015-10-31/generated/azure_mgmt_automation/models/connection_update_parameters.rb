# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation::Api_2015_10_31
  module Models
    #
    # The parameters supplied to the update connection operation.
    #
    class ConnectionUpdateParameters

      include MsRestAzure

      # @return [String] Gets or sets the name of the connection.
      attr_accessor :name

      # @return [String] Gets or sets the description of the connection.
      attr_accessor :description

      # @return [Hash{String => String}] Gets or sets the field definition
      # values of the connection.
      attr_accessor :field_definition_values


      #
      # Mapper for ConnectionUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ConnectionUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'ConnectionUpdateParameters',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              field_definition_values: {
                required: false,
                serialized_name: 'properties.fieldDefinitionValues',
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
          }
        }
      end
    end
  end
end