# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_logic'

module Azure::Profiles::Latest
  module Logic::Mgmt
    Workflows = Azure::Logic::Mgmt::V2016_06_01::Workflows
    WorkflowVersions = Azure::Logic::Mgmt::V2016_06_01::WorkflowVersions
    WorkflowTriggers = Azure::Logic::Mgmt::V2016_06_01::WorkflowTriggers
    WorkflowTriggerHistories = Azure::Logic::Mgmt::V2016_06_01::WorkflowTriggerHistories
    WorkflowRuns = Azure::Logic::Mgmt::V2016_06_01::WorkflowRuns
    WorkflowRunActions = Azure::Logic::Mgmt::V2016_06_01::WorkflowRunActions
    IntegrationAccounts = Azure::Logic::Mgmt::V2016_06_01::IntegrationAccounts
    Schemas = Azure::Logic::Mgmt::V2016_06_01::Schemas
    Maps = Azure::Logic::Mgmt::V2016_06_01::Maps
    Partners = Azure::Logic::Mgmt::V2016_06_01::Partners
    Agreements = Azure::Logic::Mgmt::V2016_06_01::Agreements
    Certificates = Azure::Logic::Mgmt::V2016_06_01::Certificates
    Sessions = Azure::Logic::Mgmt::V2016_06_01::Sessions

    module Models
      IntegrationAccountPartnerFilter = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountPartnerFilter
      Resource = Azure::Logic::Mgmt::V2016_06_01::Models::Resource
      AS2MessageConnectionSettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2MessageConnectionSettings
      ResourceReference = Azure::Logic::Mgmt::V2016_06_01::Models::ResourceReference
      AS2AcknowledgementConnectionSettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2AcknowledgementConnectionSettings
      WorkflowParameter = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowParameter
      AS2MdnSettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2MdnSettings
      WorkflowFilter = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowFilter
      AS2SecuritySettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2SecuritySettings
      KeyVaultKeyReferenceKeyVault = Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKeyReferenceKeyVault
      WorkflowVersionListResult = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowVersionListResult
      IntegrationAccountPartnerListResult = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountPartnerListResult
      RecurrenceSchedule = Azure::Logic::Mgmt::V2016_06_01::Models::RecurrenceSchedule
      SubResource = Azure::Logic::Mgmt::V2016_06_01::Models::SubResource
      Sku = Azure::Logic::Mgmt::V2016_06_01::Models::Sku
      WorkflowTriggerListResult = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerListResult
      WorkflowTriggerListCallbackUrlQueries = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerListCallbackUrlQueries
      IntegrationAccountAgreementListResult = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountAgreementListResult
      Correlation = Azure::Logic::Mgmt::V2016_06_01::Models::Correlation
      WorkflowListResult = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowListResult
      ContentLink = Azure::Logic::Mgmt::V2016_06_01::Models::ContentLink
      IntegrationAccountAgreementFilter = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountAgreementFilter
      WorkflowTriggerHistoryListResult = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerHistoryListResult
      AS2ValidationSettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2ValidationSettings
      WorkflowRunTrigger = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunTrigger
      AS2EnvelopeSettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2EnvelopeSettings
      OperationDisplay = Azure::Logic::Mgmt::V2016_06_01::Models::OperationDisplay
      AS2ErrorSettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2ErrorSettings
      WorkflowRunListResult = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunListResult
      AS2ProtocolSettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2ProtocolSettings
      ErrorResponse = Azure::Logic::Mgmt::V2016_06_01::Models::ErrorResponse
      AS2OneWayAgreement = Azure::Logic::Mgmt::V2016_06_01::Models::AS2OneWayAgreement
      IntegrationAccountSessionListResult = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSessionListResult
      AS2AgreementContent = Azure::Logic::Mgmt::V2016_06_01::Models::AS2AgreementContent
      WorkflowRunActionListResult = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunActionListResult
      X12ValidationSettings = Azure::Logic::Mgmt::V2016_06_01::Models::X12ValidationSettings
      GenerateUpgradedDefinitionParameters = Azure::Logic::Mgmt::V2016_06_01::Models::GenerateUpgradedDefinitionParameters
      X12FramingSettings = Azure::Logic::Mgmt::V2016_06_01::Models::X12FramingSettings
      IntegrationAccountSessionFilter = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSessionFilter
      X12EnvelopeSettings = Azure::Logic::Mgmt::V2016_06_01::Models::X12EnvelopeSettings
      GetCallbackUrlParameters = Azure::Logic::Mgmt::V2016_06_01::Models::GetCallbackUrlParameters
      X12AcknowledgementSettings = Azure::Logic::Mgmt::V2016_06_01::Models::X12AcknowledgementSettings
      IntegrationAccountCertificateListResult = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountCertificateListResult
      X12MessageFilter = Azure::Logic::Mgmt::V2016_06_01::Models::X12MessageFilter
      IntegrationAccountSchemaFilter = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSchemaFilter
      X12SecuritySettings = Azure::Logic::Mgmt::V2016_06_01::Models::X12SecuritySettings
      KeyVaultKeyReference = Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKeyReference
      X12ProcessingSettings = Azure::Logic::Mgmt::V2016_06_01::Models::X12ProcessingSettings
      IntegrationAccountMapFilter = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMapFilter
      X12EnvelopeOverride = Azure::Logic::Mgmt::V2016_06_01::Models::X12EnvelopeOverride
      B2BPartnerContent = Azure::Logic::Mgmt::V2016_06_01::Models::B2BPartnerContent
      X12ValidationOverride = Azure::Logic::Mgmt::V2016_06_01::Models::X12ValidationOverride
      RecurrenceScheduleOccurrence = Azure::Logic::Mgmt::V2016_06_01::Models::RecurrenceScheduleOccurrence
      X12MessageIdentifier = Azure::Logic::Mgmt::V2016_06_01::Models::X12MessageIdentifier
      WorkflowTriggerFilter = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerFilter
      X12SchemaReference = Azure::Logic::Mgmt::V2016_06_01::Models::X12SchemaReference
      ContentHash = Azure::Logic::Mgmt::V2016_06_01::Models::ContentHash
      X12DelimiterOverrides = Azure::Logic::Mgmt::V2016_06_01::Models::X12DelimiterOverrides
      WorkflowTriggerHistoryFilter = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerHistoryFilter
      X12ProtocolSettings = Azure::Logic::Mgmt::V2016_06_01::Models::X12ProtocolSettings
      WorkflowRunFilter = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunFilter
      X12OneWayAgreement = Azure::Logic::Mgmt::V2016_06_01::Models::X12OneWayAgreement
      RetryHistory = Azure::Logic::Mgmt::V2016_06_01::Models::RetryHistory
      X12AgreementContent = Azure::Logic::Mgmt::V2016_06_01::Models::X12AgreementContent
      RegenerateActionParameter = Azure::Logic::Mgmt::V2016_06_01::Models::RegenerateActionParameter
      EdifactValidationSettings = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactValidationSettings
      IntegrationAccountListResult = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountListResult
      EdifactFramingSettings = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactFramingSettings
      IntegrationAccountSchemaListResult = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSchemaListResult
      EdifactEnvelopeSettings = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactEnvelopeSettings
      IntegrationAccountMapListResult = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMapListResult
      EdifactAcknowledgementSettings = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactAcknowledgementSettings
      PartnerContent = Azure::Logic::Mgmt::V2016_06_01::Models::PartnerContent
      EdifactMessageFilter = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactMessageFilter
      WorkflowTriggerCallbackUrl = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerCallbackUrl
      EdifactProcessingSettings = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactProcessingSettings
      Operation = Azure::Logic::Mgmt::V2016_06_01::Models::Operation
      EdifactEnvelopeOverride = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactEnvelopeOverride
      WorkflowRunActionFilter = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunActionFilter
      EdifactMessageIdentifier = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactMessageIdentifier
      CallbackUrl = Azure::Logic::Mgmt::V2016_06_01::Models::CallbackUrl
      EdifactSchemaReference = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactSchemaReference
      BusinessIdentity = Azure::Logic::Mgmt::V2016_06_01::Models::BusinessIdentity
      EdifactValidationOverride = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactValidationOverride
      OperationListResult = Azure::Logic::Mgmt::V2016_06_01::Models::OperationListResult
      EdifactDelimiterOverride = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactDelimiterOverride
      IntegrationAccountSku = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSku
      EdifactProtocolSettings = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactProtocolSettings
      WorkflowTriggerRecurrence = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerRecurrence
      EdifactOneWayAgreement = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactOneWayAgreement
      IntegrationAccountMapPropertiesParametersSchema = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMapPropertiesParametersSchema
      EdifactAgreementContent = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactAgreementContent
      ErrorProperties = Azure::Logic::Mgmt::V2016_06_01::Models::ErrorProperties
      AgreementContent = Azure::Logic::Mgmt::V2016_06_01::Models::AgreementContent
      Workflow = Azure::Logic::Mgmt::V2016_06_01::Models::Workflow
      WorkflowVersion = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowVersion
      WorkflowTrigger = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTrigger
      WorkflowTriggerHistory = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerHistory
      WorkflowOutputParameter = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowOutputParameter
      WorkflowRun = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRun
      WorkflowRunAction = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunAction
      IntegrationAccount = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccount
      IntegrationAccountSchema = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSchema
      IntegrationAccountMap = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMap
      IntegrationAccountPartner = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountPartner
      IntegrationAccountAgreement = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountAgreement
      IntegrationAccountCertificate = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountCertificate
      IntegrationAccountSession = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSession
      WorkflowProvisioningState = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowProvisioningState
      WorkflowState = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowState
      SkuName = Azure::Logic::Mgmt::V2016_06_01::Models::SkuName
      ParameterType = Azure::Logic::Mgmt::V2016_06_01::Models::ParameterType
      WorkflowTriggerProvisioningState = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerProvisioningState
      WorkflowStatus = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowStatus
      RecurrenceFrequency = Azure::Logic::Mgmt::V2016_06_01::Models::RecurrenceFrequency
      DaysOfWeek = Azure::Logic::Mgmt::V2016_06_01::Models::DaysOfWeek
      DayOfWeek = Azure::Logic::Mgmt::V2016_06_01::Models::DayOfWeek
      KeyType = Azure::Logic::Mgmt::V2016_06_01::Models::KeyType
      IntegrationAccountSkuName = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSkuName
      SchemaType = Azure::Logic::Mgmt::V2016_06_01::Models::SchemaType
      MapType = Azure::Logic::Mgmt::V2016_06_01::Models::MapType
      PartnerType = Azure::Logic::Mgmt::V2016_06_01::Models::PartnerType
      AgreementType = Azure::Logic::Mgmt::V2016_06_01::Models::AgreementType
      HashingAlgorithm = Azure::Logic::Mgmt::V2016_06_01::Models::HashingAlgorithm
      EncryptionAlgorithm = Azure::Logic::Mgmt::V2016_06_01::Models::EncryptionAlgorithm
      SigningAlgorithm = Azure::Logic::Mgmt::V2016_06_01::Models::SigningAlgorithm
      TrailingSeparatorPolicy = Azure::Logic::Mgmt::V2016_06_01::Models::TrailingSeparatorPolicy
      X12CharacterSet = Azure::Logic::Mgmt::V2016_06_01::Models::X12CharacterSet
      SegmentTerminatorSuffix = Azure::Logic::Mgmt::V2016_06_01::Models::SegmentTerminatorSuffix
      X12DateFormat = Azure::Logic::Mgmt::V2016_06_01::Models::X12DateFormat
      X12TimeFormat = Azure::Logic::Mgmt::V2016_06_01::Models::X12TimeFormat
      UsageIndicator = Azure::Logic::Mgmt::V2016_06_01::Models::UsageIndicator
      MessageFilterType = Azure::Logic::Mgmt::V2016_06_01::Models::MessageFilterType
      EdifactCharacterSet = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactCharacterSet
      EdifactDecimalIndicator = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactDecimalIndicator
    end

    #
    # Logic
    #
    class LogicClass
      attr_reader :workflows, :workflow_versions, :workflow_triggers, :workflow_trigger_histories, :workflow_runs, :workflow_run_actions, :integration_accounts, :schemas, :maps, :partners, :agreements, :certificates, :sessions, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::Logic::Mgmt::V2016_06_01::LogicManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @workflows = client_0.workflows
        @workflow_versions = client_0.workflow_versions
        @workflow_triggers = client_0.workflow_triggers
        @workflow_trigger_histories = client_0.workflow_trigger_histories
        @workflow_runs = client_0.workflow_runs
        @workflow_run_actions = client_0.workflow_run_actions
        @integration_accounts = client_0.integration_accounts
        @schemas = client_0.schemas
        @maps = client_0.maps
        @partners = client_0.partners
        @agreements = client_0.agreements
        @certificates = client_0.certificates
        @sessions = client_0.sessions

        @model_classes = ModelClasses.new
      end

      class ModelClasses
        def integration_account_partner_filter
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountPartnerFilter
        end
        def resource
          Azure::Logic::Mgmt::V2016_06_01::Models::Resource
        end
        def as2_message_connection_settings
          Azure::Logic::Mgmt::V2016_06_01::Models::AS2MessageConnectionSettings
        end
        def resource_reference
          Azure::Logic::Mgmt::V2016_06_01::Models::ResourceReference
        end
        def as2_acknowledgement_connection_settings
          Azure::Logic::Mgmt::V2016_06_01::Models::AS2AcknowledgementConnectionSettings
        end
        def workflow_parameter
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowParameter
        end
        def as2_mdn_settings
          Azure::Logic::Mgmt::V2016_06_01::Models::AS2MdnSettings
        end
        def workflow_filter
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowFilter
        end
        def as2_security_settings
          Azure::Logic::Mgmt::V2016_06_01::Models::AS2SecuritySettings
        end
        def key_vault_key_reference_key_vault
          Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKeyReferenceKeyVault
        end
        def workflow_version_list_result
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowVersionListResult
        end
        def integration_account_partner_list_result
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountPartnerListResult
        end
        def recurrence_schedule
          Azure::Logic::Mgmt::V2016_06_01::Models::RecurrenceSchedule
        end
        def sub_resource
          Azure::Logic::Mgmt::V2016_06_01::Models::SubResource
        end
        def sku
          Azure::Logic::Mgmt::V2016_06_01::Models::Sku
        end
        def workflow_trigger_list_result
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerListResult
        end
        def workflow_trigger_list_callback_url_queries
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerListCallbackUrlQueries
        end
        def integration_account_agreement_list_result
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountAgreementListResult
        end
        def correlation
          Azure::Logic::Mgmt::V2016_06_01::Models::Correlation
        end
        def workflow_list_result
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowListResult
        end
        def content_link
          Azure::Logic::Mgmt::V2016_06_01::Models::ContentLink
        end
        def integration_account_agreement_filter
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountAgreementFilter
        end
        def workflow_trigger_history_list_result
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerHistoryListResult
        end
        def as2_validation_settings
          Azure::Logic::Mgmt::V2016_06_01::Models::AS2ValidationSettings
        end
        def workflow_run_trigger
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunTrigger
        end
        def as2_envelope_settings
          Azure::Logic::Mgmt::V2016_06_01::Models::AS2EnvelopeSettings
        end
        def operation_display
          Azure::Logic::Mgmt::V2016_06_01::Models::OperationDisplay
        end
        def as2_error_settings
          Azure::Logic::Mgmt::V2016_06_01::Models::AS2ErrorSettings
        end
        def workflow_run_list_result
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunListResult
        end
        def as2_protocol_settings
          Azure::Logic::Mgmt::V2016_06_01::Models::AS2ProtocolSettings
        end
        def error_response
          Azure::Logic::Mgmt::V2016_06_01::Models::ErrorResponse
        end
        def as2_one_way_agreement
          Azure::Logic::Mgmt::V2016_06_01::Models::AS2OneWayAgreement
        end
        def integration_account_session_list_result
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSessionListResult
        end
        def as2_agreement_content
          Azure::Logic::Mgmt::V2016_06_01::Models::AS2AgreementContent
        end
        def workflow_run_action_list_result
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunActionListResult
        end
        def x12_validation_settings
          Azure::Logic::Mgmt::V2016_06_01::Models::X12ValidationSettings
        end
        def generate_upgraded_definition_parameters
          Azure::Logic::Mgmt::V2016_06_01::Models::GenerateUpgradedDefinitionParameters
        end
        def x12_framing_settings
          Azure::Logic::Mgmt::V2016_06_01::Models::X12FramingSettings
        end
        def integration_account_session_filter
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSessionFilter
        end
        def x12_envelope_settings
          Azure::Logic::Mgmt::V2016_06_01::Models::X12EnvelopeSettings
        end
        def get_callback_url_parameters
          Azure::Logic::Mgmt::V2016_06_01::Models::GetCallbackUrlParameters
        end
        def x12_acknowledgement_settings
          Azure::Logic::Mgmt::V2016_06_01::Models::X12AcknowledgementSettings
        end
        def integration_account_certificate_list_result
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountCertificateListResult
        end
        def x12_message_filter
          Azure::Logic::Mgmt::V2016_06_01::Models::X12MessageFilter
        end
        def integration_account_schema_filter
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSchemaFilter
        end
        def x12_security_settings
          Azure::Logic::Mgmt::V2016_06_01::Models::X12SecuritySettings
        end
        def key_vault_key_reference
          Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKeyReference
        end
        def x12_processing_settings
          Azure::Logic::Mgmt::V2016_06_01::Models::X12ProcessingSettings
        end
        def integration_account_map_filter
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMapFilter
        end
        def x12_envelope_override
          Azure::Logic::Mgmt::V2016_06_01::Models::X12EnvelopeOverride
        end
        def b2_bpartner_content
          Azure::Logic::Mgmt::V2016_06_01::Models::B2BPartnerContent
        end
        def x12_validation_override
          Azure::Logic::Mgmt::V2016_06_01::Models::X12ValidationOverride
        end
        def recurrence_schedule_occurrence
          Azure::Logic::Mgmt::V2016_06_01::Models::RecurrenceScheduleOccurrence
        end
        def x12_message_identifier
          Azure::Logic::Mgmt::V2016_06_01::Models::X12MessageIdentifier
        end
        def workflow_trigger_filter
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerFilter
        end
        def x12_schema_reference
          Azure::Logic::Mgmt::V2016_06_01::Models::X12SchemaReference
        end
        def content_hash
          Azure::Logic::Mgmt::V2016_06_01::Models::ContentHash
        end
        def x12_delimiter_overrides
          Azure::Logic::Mgmt::V2016_06_01::Models::X12DelimiterOverrides
        end
        def workflow_trigger_history_filter
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerHistoryFilter
        end
        def x12_protocol_settings
          Azure::Logic::Mgmt::V2016_06_01::Models::X12ProtocolSettings
        end
        def workflow_run_filter
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunFilter
        end
        def x12_one_way_agreement
          Azure::Logic::Mgmt::V2016_06_01::Models::X12OneWayAgreement
        end
        def retry_history
          Azure::Logic::Mgmt::V2016_06_01::Models::RetryHistory
        end
        def x12_agreement_content
          Azure::Logic::Mgmt::V2016_06_01::Models::X12AgreementContent
        end
        def regenerate_action_parameter
          Azure::Logic::Mgmt::V2016_06_01::Models::RegenerateActionParameter
        end
        def edifact_validation_settings
          Azure::Logic::Mgmt::V2016_06_01::Models::EdifactValidationSettings
        end
        def integration_account_list_result
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountListResult
        end
        def edifact_framing_settings
          Azure::Logic::Mgmt::V2016_06_01::Models::EdifactFramingSettings
        end
        def integration_account_schema_list_result
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSchemaListResult
        end
        def edifact_envelope_settings
          Azure::Logic::Mgmt::V2016_06_01::Models::EdifactEnvelopeSettings
        end
        def integration_account_map_list_result
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMapListResult
        end
        def edifact_acknowledgement_settings
          Azure::Logic::Mgmt::V2016_06_01::Models::EdifactAcknowledgementSettings
        end
        def partner_content
          Azure::Logic::Mgmt::V2016_06_01::Models::PartnerContent
        end
        def edifact_message_filter
          Azure::Logic::Mgmt::V2016_06_01::Models::EdifactMessageFilter
        end
        def workflow_trigger_callback_url
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerCallbackUrl
        end
        def edifact_processing_settings
          Azure::Logic::Mgmt::V2016_06_01::Models::EdifactProcessingSettings
        end
        def operation
          Azure::Logic::Mgmt::V2016_06_01::Models::Operation
        end
        def edifact_envelope_override
          Azure::Logic::Mgmt::V2016_06_01::Models::EdifactEnvelopeOverride
        end
        def workflow_run_action_filter
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunActionFilter
        end
        def edifact_message_identifier
          Azure::Logic::Mgmt::V2016_06_01::Models::EdifactMessageIdentifier
        end
        def callback_url
          Azure::Logic::Mgmt::V2016_06_01::Models::CallbackUrl
        end
        def edifact_schema_reference
          Azure::Logic::Mgmt::V2016_06_01::Models::EdifactSchemaReference
        end
        def business_identity
          Azure::Logic::Mgmt::V2016_06_01::Models::BusinessIdentity
        end
        def edifact_validation_override
          Azure::Logic::Mgmt::V2016_06_01::Models::EdifactValidationOverride
        end
        def operation_list_result
          Azure::Logic::Mgmt::V2016_06_01::Models::OperationListResult
        end
        def edifact_delimiter_override
          Azure::Logic::Mgmt::V2016_06_01::Models::EdifactDelimiterOverride
        end
        def integration_account_sku
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSku
        end
        def edifact_protocol_settings
          Azure::Logic::Mgmt::V2016_06_01::Models::EdifactProtocolSettings
        end
        def workflow_trigger_recurrence
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerRecurrence
        end
        def edifact_one_way_agreement
          Azure::Logic::Mgmt::V2016_06_01::Models::EdifactOneWayAgreement
        end
        def integration_account_map_properties_parameters_schema
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMapPropertiesParametersSchema
        end
        def edifact_agreement_content
          Azure::Logic::Mgmt::V2016_06_01::Models::EdifactAgreementContent
        end
        def error_properties
          Azure::Logic::Mgmt::V2016_06_01::Models::ErrorProperties
        end
        def agreement_content
          Azure::Logic::Mgmt::V2016_06_01::Models::AgreementContent
        end
        def workflow
          Azure::Logic::Mgmt::V2016_06_01::Models::Workflow
        end
        def workflow_version
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowVersion
        end
        def workflow_trigger
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTrigger
        end
        def workflow_trigger_history
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerHistory
        end
        def workflow_output_parameter
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowOutputParameter
        end
        def workflow_run
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRun
        end
        def workflow_run_action
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunAction
        end
        def integration_account
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccount
        end
        def integration_account_schema
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSchema
        end
        def integration_account_map
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMap
        end
        def integration_account_partner
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountPartner
        end
        def integration_account_agreement
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountAgreement
        end
        def integration_account_certificate
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountCertificate
        end
        def integration_account_session
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSession
        end
        def workflow_provisioning_state
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowProvisioningState
        end
        def workflow_state
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowState
        end
        def sku_name
          Azure::Logic::Mgmt::V2016_06_01::Models::SkuName
        end
        def parameter_type
          Azure::Logic::Mgmt::V2016_06_01::Models::ParameterType
        end
        def workflow_trigger_provisioning_state
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerProvisioningState
        end
        def workflow_status
          Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowStatus
        end
        def recurrence_frequency
          Azure::Logic::Mgmt::V2016_06_01::Models::RecurrenceFrequency
        end
        def days_of_week
          Azure::Logic::Mgmt::V2016_06_01::Models::DaysOfWeek
        end
        def day_of_week
          Azure::Logic::Mgmt::V2016_06_01::Models::DayOfWeek
        end
        def key_type
          Azure::Logic::Mgmt::V2016_06_01::Models::KeyType
        end
        def integration_account_sku_name
          Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSkuName
        end
        def schema_type
          Azure::Logic::Mgmt::V2016_06_01::Models::SchemaType
        end
        def map_type
          Azure::Logic::Mgmt::V2016_06_01::Models::MapType
        end
        def partner_type
          Azure::Logic::Mgmt::V2016_06_01::Models::PartnerType
        end
        def agreement_type
          Azure::Logic::Mgmt::V2016_06_01::Models::AgreementType
        end
        def hashing_algorithm
          Azure::Logic::Mgmt::V2016_06_01::Models::HashingAlgorithm
        end
        def encryption_algorithm
          Azure::Logic::Mgmt::V2016_06_01::Models::EncryptionAlgorithm
        end
        def signing_algorithm
          Azure::Logic::Mgmt::V2016_06_01::Models::SigningAlgorithm
        end
        def trailing_separator_policy
          Azure::Logic::Mgmt::V2016_06_01::Models::TrailingSeparatorPolicy
        end
        def x12_character_set
          Azure::Logic::Mgmt::V2016_06_01::Models::X12CharacterSet
        end
        def segment_terminator_suffix
          Azure::Logic::Mgmt::V2016_06_01::Models::SegmentTerminatorSuffix
        end
        def x12_date_format
          Azure::Logic::Mgmt::V2016_06_01::Models::X12DateFormat
        end
        def x12_time_format
          Azure::Logic::Mgmt::V2016_06_01::Models::X12TimeFormat
        end
        def usage_indicator
          Azure::Logic::Mgmt::V2016_06_01::Models::UsageIndicator
        end
        def message_filter_type
          Azure::Logic::Mgmt::V2016_06_01::Models::MessageFilterType
        end
        def edifact_character_set
          Azure::Logic::Mgmt::V2016_06_01::Models::EdifactCharacterSet
        end
        def edifact_decimal_indicator
          Azure::Logic::Mgmt::V2016_06_01::Models::EdifactDecimalIndicator
        end
      end
    end
  end
end
