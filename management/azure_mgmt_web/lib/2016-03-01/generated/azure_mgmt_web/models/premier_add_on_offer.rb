# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_03_01
  module Models
    #
    # Premier add-on offer.
    #
    class PremierAddOnOffer < ProxyOnlyResource

      include MsRestAzure

      # @return [String] SKU.
      attr_accessor :sku

      # @return [String] Product.
      attr_accessor :product

      # @return [String] Vendor.
      attr_accessor :vendor

      # @return [String] Name.
      attr_accessor :premier_add_on_offer_name

      # @return [Boolean] <code>true</code> if promotion code is required;
      # otherwise, <code>false</code>.
      attr_accessor :promo_code_required

      # @return [Integer] Quota.
      attr_accessor :quota

      # @return [AppServicePlanRestrictions] App Service plans this offer is
      # restricted to. Possible values include: 'None', 'Free', 'Shared',
      # 'Basic', 'Standard', 'Premium'
      attr_accessor :web_hosting_plan_restrictions

      # @return [String] Privacy policy URL.
      attr_accessor :privacy_policy_url

      # @return [String] Legal terms URL.
      attr_accessor :legal_terms_url

      # @return [String] Marketplace publisher.
      attr_accessor :marketplace_publisher

      # @return [String] Marketplace offer.
      attr_accessor :marketplace_offer


      #
      # Mapper for PremierAddOnOffer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PremierAddOnOffer',
          type: {
            name: 'Composite',
            class_name: 'PremierAddOnOffer',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sku',
                type: {
                  name: 'String'
                }
              },
              product: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.product',
                type: {
                  name: 'String'
                }
              },
              vendor: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vendor',
                type: {
                  name: 'String'
                }
              },
              premier_add_on_offer_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              promo_code_required: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.promoCodeRequired',
                type: {
                  name: 'Boolean'
                }
              },
              quota: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.quota',
                type: {
                  name: 'Number'
                }
              },
              web_hosting_plan_restrictions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.webHostingPlanRestrictions',
                type: {
                  name: 'Enum',
                  module: 'AppServicePlanRestrictions'
                }
              },
              privacy_policy_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privacyPolicyUrl',
                type: {
                  name: 'String'
                }
              },
              legal_terms_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.legalTermsUrl',
                type: {
                  name: 'String'
                }
              },
              marketplace_publisher: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.marketplacePublisher',
                type: {
                  name: 'String'
                }
              },
              marketplace_offer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.marketplaceOffer',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
