# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2015_06_15
  module Models
    #
    # Describes a virtual machine scale set OS profile.
    #
    class VirtualMachineScaleSetOSProfile

      include MsRestAzure

      # @return [String] The computer name prefix.
      attr_accessor :computer_name_prefix

      # @return [String] The admin user name.
      attr_accessor :admin_username

      # @return [String] The admin user password.
      attr_accessor :admin_password

      # @return [String] A base-64 encoded string of custom data.
      attr_accessor :custom_data

      # @return [WindowsConfiguration] The Windows Configuration of the OS
      # profile.
      attr_accessor :windows_configuration

      # @return [LinuxConfiguration] The Linux Configuration of the OS profile.
      attr_accessor :linux_configuration

      # @return [Array<VaultSecretGroup>] The List of certificates for addition
      # to the VM.
      attr_accessor :secrets


      #
      # Mapper for VirtualMachineScaleSetOSProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineScaleSetOSProfile',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetOSProfile',
            model_properties: {
              computer_name_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'computerNamePrefix',
                type: {
                  name: 'String'
                }
              },
              admin_username: {
                client_side_validation: true,
                required: false,
                serialized_name: 'adminUsername',
                type: {
                  name: 'String'
                }
              },
              admin_password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'adminPassword',
                type: {
                  name: 'String'
                }
              },
              custom_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customData',
                type: {
                  name: 'String'
                }
              },
              windows_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'windowsConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'WindowsConfiguration'
                }
              },
              linux_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'linuxConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'LinuxConfiguration'
                }
              },
              secrets: {
                client_side_validation: true,
                required: false,
                serialized_name: 'secrets',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VaultSecretGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VaultSecretGroup'
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
