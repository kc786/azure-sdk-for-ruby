# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2016_04_30_preview
  module Models
    #
    # Describes an Operating System disk.
    #
    class ImageOSDisk

      include MsRestAzure

      # @return [OperatingSystemTypes] The Operating System type. Possible
      # values include: 'Windows', 'Linux'
      attr_accessor :os_type

      # @return [OperatingSystemStateTypes] The OS State. Possible values
      # include: 'Generalized', 'Specialized'
      attr_accessor :os_state

      # @return [SubResource] The snapshot.
      attr_accessor :snapshot

      # @return [SubResource] The managedDisk.
      attr_accessor :managed_disk

      # @return [String] The Virtual Hard Disk.
      attr_accessor :blob_uri

      # @return [CachingTypes] The caching type. Possible values include:
      # 'None', 'ReadOnly', 'ReadWrite'
      attr_accessor :caching

      # @return [Integer] The initial managed disk size in GB for blank data
      # disks, and the new desired size for existing OS and Data disks.
      attr_accessor :disk_size_gb


      #
      # Mapper for ImageOSDisk class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImageOSDisk',
          type: {
            name: 'Composite',
            class_name: 'ImageOSDisk',
            model_properties: {
              os_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'osType',
                type: {
                  name: 'Enum',
                  module: 'OperatingSystemTypes'
                }
              },
              os_state: {
                client_side_validation: true,
                required: true,
                serialized_name: 'osState',
                type: {
                  name: 'Enum',
                  module: 'OperatingSystemStateTypes'
                }
              },
              snapshot: {
                client_side_validation: true,
                required: false,
                serialized_name: 'snapshot',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              managed_disk: {
                client_side_validation: true,
                required: false,
                serialized_name: 'managedDisk',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              blob_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'blobUri',
                type: {
                  name: 'String'
                }
              },
              caching: {
                client_side_validation: true,
                required: false,
                serialized_name: 'caching',
                type: {
                  name: 'Enum',
                  module: 'CachingTypes'
                }
              },
              disk_size_gb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskSizeGB',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
