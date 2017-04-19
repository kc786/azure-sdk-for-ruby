# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'generated/azure_mgmt_redis/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Redis
  autoload :Operations,                                         'generated/azure_mgmt_redis/operations.rb'
  autoload :Redis,                                              'generated/azure_mgmt_redis/redis.rb'
  autoload :FirewallRules,                                      'generated/azure_mgmt_redis/firewall_rules.rb'
  autoload :RedisFirewallRuleOperations,                        'generated/azure_mgmt_redis/redis_firewall_rule_operations.rb'
  autoload :PatchSchedules,                                     'generated/azure_mgmt_redis/patch_schedules.rb'
  autoload :RedisManagementClient,                              'generated/azure_mgmt_redis/redis_management_client.rb'

  module Models
    autoload :RedisRegenerateKeyParameters,                       'generated/azure_mgmt_redis/models/redis_regenerate_key_parameters.rb'
    autoload :Sku,                                                'generated/azure_mgmt_redis/models/sku.rb'
    autoload :RedisRebootParameters,                              'generated/azure_mgmt_redis/models/redis_reboot_parameters.rb'
    autoload :ExportRDBParameters,                                'generated/azure_mgmt_redis/models/export_rdbparameters.rb'
    autoload :RedisUpdateParameters,                              'generated/azure_mgmt_redis/models/redis_update_parameters.rb'
    autoload :ImportRDBParameters,                                'generated/azure_mgmt_redis/models/import_rdbparameters.rb'
    autoload :RedisFirewallRule,                                  'generated/azure_mgmt_redis/models/redis_firewall_rule.rb'
    autoload :ScheduleEntry,                                      'generated/azure_mgmt_redis/models/schedule_entry.rb'
    autoload :RedisListResult,                                    'generated/azure_mgmt_redis/models/redis_list_result.rb'
    autoload :RedisPatchSchedule,                                 'generated/azure_mgmt_redis/models/redis_patch_schedule.rb'
    autoload :OperationListResult,                                'generated/azure_mgmt_redis/models/operation_list_result.rb'
    autoload :RedisAccessKeys,                                    'generated/azure_mgmt_redis/models/redis_access_keys.rb'
    autoload :RedisForceRebootResponse,                           'generated/azure_mgmt_redis/models/redis_force_reboot_response.rb'
    autoload :OperationDisplay,                                   'generated/azure_mgmt_redis/models/operation_display.rb'
    autoload :RedisFirewallRuleListResult,                        'generated/azure_mgmt_redis/models/redis_firewall_rule_list_result.rb'
    autoload :Operation,                                          'generated/azure_mgmt_redis/models/operation.rb'
    autoload :RedisCreateParameters,                              'generated/azure_mgmt_redis/models/redis_create_parameters.rb'
    autoload :RedisResource,                                      'generated/azure_mgmt_redis/models/redis_resource.rb'
    autoload :SkuName,                                            'generated/azure_mgmt_redis/models/sku_name.rb'
    autoload :SkuFamily,                                          'generated/azure_mgmt_redis/models/sku_family.rb'
    autoload :RedisKeyType,                                       'generated/azure_mgmt_redis/models/redis_key_type.rb'
    autoload :RebootType,                                         'generated/azure_mgmt_redis/models/reboot_type.rb'
    autoload :DayOfWeek,                                          'generated/azure_mgmt_redis/models/day_of_week.rb'
  end
end