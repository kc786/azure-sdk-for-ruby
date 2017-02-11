# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeStore
  module Models
    #
    # Data Lake Store account information
    #
    class DataLakeStoreAccount < MsRestAzure::Resource

      include MsRestAzure

      # @return [EncryptionIdentity] The Key vault encryption identity, if any.
      attr_accessor :identity

      # @return [DataLakeStoreAccountStatus] the status of the Data Lake Store
      # account while being provisioned. Possible values include: 'Failed',
      # 'Creating', 'Running', 'Succeeded', 'Patching', 'Suspending',
      # 'Resuming', 'Deleting', 'Deleted'
      attr_accessor :provisioning_state

      # @return [DataLakeStoreAccountState] the status of the Data Lake Store
      # account after provisioning has completed. Possible values include:
      # 'Active', 'Suspended'
      attr_accessor :state

      # @return [DateTime] the account creation time.
      attr_accessor :creation_time

      # @return [EncryptionState] The current state of encryption for this Data
      # Lake store account. Possible values include: 'Enabled', 'Disabled'
      attr_accessor :encryption_state

      # @return [EncryptionProvisioningState] The current state of encryption
      # provisioning for this Data Lake store account. Possible values include:
      # 'Creating', 'Succeeded'
      attr_accessor :encryption_provisioning_state

      # @return [EncryptionConfig] The Key vault encryption configuration.
      attr_accessor :encryption_config

      # @return [FirewallState] The current state of the IP address firewall
      # for this Data Lake store account. Possible values include: 'Enabled',
      # 'Disabled'
      attr_accessor :firewall_state

      # @return [Array<FirewallRule>] The list of firewall rules associated
      # with this Data Lake store account.
      attr_accessor :firewall_rules

      # @return [TrustedIdProviderState] The current state of the trusted
      # identity provider feature for this Data Lake store account. Possible
      # values include: 'Enabled', 'Disabled'
      attr_accessor :trusted_id_provider_state

      # @return [Array<TrustedIdProvider>] The list of trusted identity
      # providers associated with this Data Lake store account.
      attr_accessor :trusted_id_providers

      # @return [DateTime] the account last modified time.
      attr_accessor :last_modified_time

      # @return [String] the gateway host.
      attr_accessor :endpoint

      # @return [String] the default owner group for all new folders and files
      # created in the Data Lake Store account.
      attr_accessor :default_group

      # @return [TierType] the commitment tier to use for next month. Possible
      # values include: 'Consumption', 'Commitment_1TB', 'Commitment_10TB',
      # 'Commitment_100TB', 'Commitment_500TB', 'Commitment_1PB',
      # 'Commitment_5PB'
      attr_accessor :new_tier

      # @return [TierType] the commitment tier in use for the current month.
      # Possible values include: 'Consumption', 'Commitment_1TB',
      # 'Commitment_10TB', 'Commitment_100TB', 'Commitment_500TB',
      # 'Commitment_1PB', 'Commitment_5PB'
      attr_accessor :current_tier

      # @return [FirewallAllowAzureIpsState] The current state of allowing or
      # disallowing IPs originating within Azure through the firewall. If the
      # firewall is disabled, this is not enforced. Possible values include:
      # 'Enabled', 'Disabled'
      attr_accessor :firewall_allow_azure_ips


      #
      # Mapper for DataLakeStoreAccount class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DataLakeStoreAccount',
          type: {
            name: 'Composite',
            class_name: 'DataLakeStoreAccount',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
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
              },
              identity: {
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'EncryptionIdentity'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'DataLakeStoreAccountStatus'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'Enum',
                  module: 'DataLakeStoreAccountState'
                }
              },
              creation_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              encryption_state: {
                required: false,
                serialized_name: 'properties.encryptionState',
                type: {
                  name: 'Enum',
                  module: 'EncryptionState'
                }
              },
              encryption_provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.encryptionProvisioningState',
                type: {
                  name: 'Enum',
                  module: 'EncryptionProvisioningState'
                }
              },
              encryption_config: {
                required: false,
                serialized_name: 'properties.encryptionConfig',
                type: {
                  name: 'Composite',
                  class_name: 'EncryptionConfig'
                }
              },
              firewall_state: {
                required: false,
                serialized_name: 'properties.firewallState',
                type: {
                  name: 'Enum',
                  module: 'FirewallState'
                }
              },
              firewall_rules: {
                required: false,
                serialized_name: 'properties.firewallRules',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'FirewallRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FirewallRule'
                      }
                  }
                }
              },
              trusted_id_provider_state: {
                required: false,
                serialized_name: 'properties.trustedIdProviderState',
                type: {
                  name: 'Enum',
                  module: 'TrustedIdProviderState'
                }
              },
              trusted_id_providers: {
                required: false,
                serialized_name: 'properties.trustedIdProviders',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TrustedIdProviderElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TrustedIdProvider'
                      }
                  }
                }
              },
              last_modified_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              endpoint: {
                required: false,
                read_only: true,
                serialized_name: 'properties.endpoint',
                type: {
                  name: 'String'
                }
              },
              default_group: {
                required: false,
                serialized_name: 'properties.defaultGroup',
                type: {
                  name: 'String'
                }
              },
              new_tier: {
                required: false,
                serialized_name: 'properties.newTier',
                type: {
                  name: 'Enum',
                  module: 'TierType'
                }
              },
              current_tier: {
                required: false,
                read_only: true,
                serialized_name: 'properties.currentTier',
                type: {
                  name: 'Enum',
                  module: 'TierType'
                }
              },
              firewall_allow_azure_ips: {
                required: false,
                serialized_name: 'properties.firewallAllowAzureIps',
                type: {
                  name: 'Enum',
                  module: 'FirewallAllowAzureIpsState'
                }
              }
            }
          }
        }
      end
    end
  end
end
