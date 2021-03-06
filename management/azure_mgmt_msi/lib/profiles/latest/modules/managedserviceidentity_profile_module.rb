# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_msi'

module Azure::ManagedServiceIdentity::Profiles::Latest::Mgmt
    Operations = Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Operations
    UserAssignedIdentities = Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::UserAssignedIdentities

    module Models
      Identity = Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::Identity
      OperationDisplay = Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::OperationDisplay
      Operation = Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::Operation
      UserAssignedIdentitiesListResult = Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::UserAssignedIdentitiesListResult
      OperationListResult = Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::OperationListResult
      UserAssignedIdentities = Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::UserAssignedIdentities
    end

    #
    # ManagedServiceIdentity
    #
    class ManagedServiceIdentityClass
      attr_reader :operations, :user_assigned_identities, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::ManagedServiceIdentityClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @operations = client_0.operations
        @user_assigned_identities = client_0.user_assigned_identities

        @model_classes = ModelClasses.new
      end

      class ModelClasses
        def identity
          Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::Identity
        end
        def operation_display
          Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::OperationDisplay
        end
        def operation
          Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::Operation
        end
        def user_assigned_identities_list_result
          Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::UserAssignedIdentitiesListResult
        end
        def operation_list_result
          Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::OperationListResult
        end
        def user_assigned_identities
          Azure::ManagedServiceIdentity::Mgmt::V2015_08_31_preview::Models::UserAssignedIdentities
        end
      end
    end
end
