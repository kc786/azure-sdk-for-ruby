# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Redis
  module Models
    #
    # Patch schedule entry for Premium Redis Cache.
    #
    class ScheduleEntry

      include MsRestAzure

      # @return [DayOfWeek] Day of week when cache can be patched. Possible
      # values include: 'Monday', 'Tuesday', 'Wednesday', 'Thursday',
      # 'Friday', 'Saturday', 'Sunday'
      attr_accessor :day_of_week

      # @return [Integer] Start hour after which cache patching can start.
      attr_accessor :start_hour_utc

      # @return [Duration] ISO8601 timespan specifying how much time cache
      # patching can take.
      attr_accessor :maintenance_window


      #
      # Mapper for ScheduleEntry class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ScheduleEntry',
          type: {
            name: 'Composite',
            class_name: 'ScheduleEntry',
            model_properties: {
              day_of_week: {
                required: true,
                serialized_name: 'dayOfWeek',
                type: {
                  name: 'Enum',
                  module: 'DayOfWeek'
                }
              },
              start_hour_utc: {
                required: true,
                serialized_name: 'startHourUtc',
                type: {
                  name: 'Number'
                }
              },
              maintenance_window: {
                required: false,
                serialized_name: 'maintenanceWindow',
                type: {
                  name: 'TimeSpan'
                }
              }
            }
          }
        }
      end
    end
  end
end