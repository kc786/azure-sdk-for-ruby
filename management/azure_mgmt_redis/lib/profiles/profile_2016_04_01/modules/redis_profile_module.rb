# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_redis'

module Azure::Redis::Management::Profile_2016_04_01
    Operations = Azure::ARM::Redis::Api_2016_04_01::Operations
    Redis = Azure::ARM::Redis::Api_2016_04_01::Redis
    FirewallRules = Azure::ARM::Redis::Api_2016_04_01::FirewallRules
    RedisFirewallRuleOperations = Azure::ARM::Redis::Api_2016_04_01::RedisFirewallRuleOperations
    PatchSchedules = Azure::ARM::Redis::Api_2016_04_01::PatchSchedules

    module Models
      RedisRegenerateKeyParameters = Azure::ARM::Redis::Api_2016_04_01::Models::RedisRegenerateKeyParameters
      Sku = Azure::ARM::Redis::Api_2016_04_01::Models::Sku
      RedisRebootParameters = Azure::ARM::Redis::Api_2016_04_01::Models::RedisRebootParameters
      Resource = Azure::ARM::Redis::Api_2016_04_01::Models::Resource
      ExportRDBParameters = Azure::ARM::Redis::Api_2016_04_01::Models::ExportRDBParameters
      RedisUpdateParameters = Azure::ARM::Redis::Api_2016_04_01::Models::RedisUpdateParameters
      ImportRDBParameters = Azure::ARM::Redis::Api_2016_04_01::Models::ImportRDBParameters
      RedisFirewallRule = Azure::ARM::Redis::Api_2016_04_01::Models::RedisFirewallRule
      ScheduleEntry = Azure::ARM::Redis::Api_2016_04_01::Models::ScheduleEntry
      RedisListResult = Azure::ARM::Redis::Api_2016_04_01::Models::RedisListResult
      RedisPatchSchedule = Azure::ARM::Redis::Api_2016_04_01::Models::RedisPatchSchedule
      OperationListResult = Azure::ARM::Redis::Api_2016_04_01::Models::OperationListResult
      RedisAccessKeys = Azure::ARM::Redis::Api_2016_04_01::Models::RedisAccessKeys
      RedisForceRebootResponse = Azure::ARM::Redis::Api_2016_04_01::Models::RedisForceRebootResponse
      OperationDisplay = Azure::ARM::Redis::Api_2016_04_01::Models::OperationDisplay
      RedisFirewallRuleListResult = Azure::ARM::Redis::Api_2016_04_01::Models::RedisFirewallRuleListResult
      Operation = Azure::ARM::Redis::Api_2016_04_01::Models::Operation
      RedisCreateParameters = Azure::ARM::Redis::Api_2016_04_01::Models::RedisCreateParameters
      RedisResource = Azure::ARM::Redis::Api_2016_04_01::Models::RedisResource
      SkuName = Azure::ARM::Redis::Api_2016_04_01::Models::SkuName
      SkuFamily = Azure::ARM::Redis::Api_2016_04_01::Models::SkuFamily
      RedisKeyType = Azure::ARM::Redis::Api_2016_04_01::Models::RedisKeyType
      RebootType = Azure::ARM::Redis::Api_2016_04_01::Models::RebootType
      DayOfWeek = Azure::ARM::Redis::Api_2016_04_01::Models::DayOfWeek
    end

    #
    # Redis
    #
    class RedisClass
      attr_reader :operations, :redis, :firewall_rules, :redis_firewall_rule_operations, :patch_schedules, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::ARM::Redis::Api_2016_04_01::RedisManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @operations = client_0.operations
        @redis = client_0.redis
        @firewall_rules = client_0.firewall_rules
        @redis_firewall_rule_operations = client_0.redis_firewall_rule_operations
        @patch_schedules = client_0.patch_schedules

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2016-04-01')
        case version
          when '2016-04-01'
            client = Azure::ARM::Redis::Api_2016_04_01::RedisManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def redis_regenerate_key_parameters
          Azure::ARM::Redis::Api_2016_04_01::Models::RedisRegenerateKeyParameters
        end
        def sku
          Azure::ARM::Redis::Api_2016_04_01::Models::Sku
        end
        def redis_reboot_parameters
          Azure::ARM::Redis::Api_2016_04_01::Models::RedisRebootParameters
        end
        def resource
          Azure::ARM::Redis::Api_2016_04_01::Models::Resource
        end
        def export_rdbparameters
          Azure::ARM::Redis::Api_2016_04_01::Models::ExportRDBParameters
        end
        def redis_update_parameters
          Azure::ARM::Redis::Api_2016_04_01::Models::RedisUpdateParameters
        end
        def import_rdbparameters
          Azure::ARM::Redis::Api_2016_04_01::Models::ImportRDBParameters
        end
        def redis_firewall_rule
          Azure::ARM::Redis::Api_2016_04_01::Models::RedisFirewallRule
        end
        def schedule_entry
          Azure::ARM::Redis::Api_2016_04_01::Models::ScheduleEntry
        end
        def redis_list_result
          Azure::ARM::Redis::Api_2016_04_01::Models::RedisListResult
        end
        def redis_patch_schedule
          Azure::ARM::Redis::Api_2016_04_01::Models::RedisPatchSchedule
        end
        def operation_list_result
          Azure::ARM::Redis::Api_2016_04_01::Models::OperationListResult
        end
        def redis_access_keys
          Azure::ARM::Redis::Api_2016_04_01::Models::RedisAccessKeys
        end
        def redis_force_reboot_response
          Azure::ARM::Redis::Api_2016_04_01::Models::RedisForceRebootResponse
        end
        def operation_display
          Azure::ARM::Redis::Api_2016_04_01::Models::OperationDisplay
        end
        def redis_firewall_rule_list_result
          Azure::ARM::Redis::Api_2016_04_01::Models::RedisFirewallRuleListResult
        end
        def operation
          Azure::ARM::Redis::Api_2016_04_01::Models::Operation
        end
        def redis_create_parameters
          Azure::ARM::Redis::Api_2016_04_01::Models::RedisCreateParameters
        end
        def redis_resource
          Azure::ARM::Redis::Api_2016_04_01::Models::RedisResource
        end
        def sku_name
          Azure::ARM::Redis::Api_2016_04_01::Models::SkuName
        end
        def sku_family
          Azure::ARM::Redis::Api_2016_04_01::Models::SkuFamily
        end
        def redis_key_type
          Azure::ARM::Redis::Api_2016_04_01::Models::RedisKeyType
        end
        def reboot_type
          Azure::ARM::Redis::Api_2016_04_01::Models::RebootType
        end
        def day_of_week
          Azure::ARM::Redis::Api_2016_04_01::Models::DayOfWeek
        end
      end
    end
end