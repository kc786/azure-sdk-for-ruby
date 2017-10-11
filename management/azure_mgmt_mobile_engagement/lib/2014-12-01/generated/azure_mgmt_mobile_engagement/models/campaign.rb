# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement::Api_2014_12_01
  module Models
    #
    # Model object.
    #
    #
    class Campaign < CampaignLocalization

      include MsRestAzure

      # @return [String] Unique name of the campaign.
      attr_accessor :name

      # @return [CampaignAudience] Specify which users will be targeted by this
      # campaign. By default, all users will be targeted. If you set `pushMode`
      # property to `manual`, the only thing you can specify in the audience is
      # the push quota filter. An audience is a boolean expression made of
      # criteria (variables) operators (`not`, `and` or `or`) and parenthesis.
      # Additionally, a set of filters can be added to an audience. 65535 bytes
      # max as per JSON encoding.
      #
      attr_accessor :audience

      # @return [String] Category of the campaign. Categories can be used on
      # the application side to customize campaigns.
      attr_accessor :category

      # @return [PushModes] Announcements/polls only. Defines how the campaign
      # is pushed. Valid values are: * `real-time`: Never ending campaign, the
      # campaign will be delivered  to your existing users and also to your new
      # users. * `one-shot`: In this mode, the campaign will be delivered only
      # to your existing users (campaign will stop after that). * `manual`: In
      # this mode, the campaign will not be pushed automatically to devices.
      # You will have to use the Push campaign command to push the campaign to
      # your end-users. Campaigns can be pushed multiple times to the same
      # device.
      # . Possible values include: 'real-time', 'one-shot', 'manual'. Default
      # value: 'real-time' .
      attr_accessor :push_mode

      # @return [CampaignTypes] Applicable only to announcements and data
      # pushes. Type of announcement. Valid values are: * `text/plain`:
      # Text-only announcement: `body` property should only contain plain text.
      # * `text/html`: HTML announcement: `body` attribute can contain HTML
      # code. * `only_notif`: Notification-only announcement. With this kind of
      # announcements, the `body`, `title`, `actionButtonText` and
      # `exitButtonText` are ignored. Type of data push. Valid values are: *
      # `text/plain`: Text only data push: `body` property must be plain text.
      # * `text/base64`: Base 64 data push: `body` property must be encoded in
      # base 64.
      # . Possible values include: 'text/plain', 'text/html', 'only_notif',
      # 'text/base64'
      attr_accessor :type

      # @return [DeliveryTimes] Announcements/polls only. Defines when the
      # campaign should be delivered. Valid values are: * `any`: Campaign will
      # be delivered as soon as possible. * `background`: iOS only. Campaign
      # will be only delivered when the application is in background (out of
      # app). * `session`: Campaign will be delivered when the application is
      # running.
      # . Possible values include: 'any', 'background', 'session'
      attr_accessor :delivery_time

      # @return [Array<String>] Announcements/polls only. Array containing the
      # list of activities in which the campaign can be delivered. deliveryTime
      # must be set to session. If the platform is iOS, this option can also be
      # set if deliveryTime is set to any. In that case, if the campaign is
      # received when the application is launched, it will be delivered only in
      # the specified list of activities.
      #
      attr_accessor :delivery_activities

      # @return [String] The date at which the campaign should be started. The
      # date shall conform to the following format: `yyyy-MM-ddTHH:mm:ssZ`. *
      # If you set pushMode property to manual, this attribute will be ignored.
      # * If you set pushMode property to one-shot, then the timezone attribute
      # must be specified. Example: `2011-11-21 15:23Z`
      #
      attr_accessor :start_time

      # @return [String] The date at which the campaign should be finished. The
      # date shall conform to the following format: `yyyy-MM-ddTHH:mm:ssZ`.
      # Example: `2011-11-21 15:23Z`
      #
      attr_accessor :end_time

      # @return [String] The id of the time zone to use for the startTime and
      # endTime dates. If not provided, the two date attributes will be
      # expressed using the device timezone. Example: America/Los_Angeles
      #
      attr_accessor :timezone

      # @return [NotificationTypes] Android only. Defines how the notification
      # should be displayed. Valid values are: * `system`: Display the
      # notification using a standard system notification. * `popup`: Display
      # the notification using a in-app banner notification.
      # . Possible values include: 'system', 'popup'. Default value: 'popup' .
      attr_accessor :notification_type

      # @return [Boolean] A flag indicating whether or not you want to display
      # the resource icon in notification content. Default value: true .
      attr_accessor :notification_icon

      # @return [Boolean] A flag indicating whether or not you want the
      # notification to be closeable. Default value: true .
      attr_accessor :notification_closeable

      # @return [Boolean] Android only. A flag indicating whether or not you
      # want the system notification to make a vibration. The notificationType
      # property must be set to system. Default value: false .
      attr_accessor :notification_vibrate

      # @return [Boolean] * `Android`: A flag indicating whether or not you
      # want the system notification to make a sound. The `notificationType`
      # property must be set to `system`. * `iOS`: A flag indicating whether or
      # not you want the native Apple Push notification to make a sound. The
      # `deliveryTime` property must be set to `any` or `background`. This will
      # play the 'default' sound. If you want to play a custom sound, see the
      # `notificationOptions` property. * `Windows`: A flag indicating whether
      # or not you want the native Windows Notification Service to make a
      # sound. The `deliveryTime` property must be set to `any`.
      # . Default value: false .
      attr_accessor :notification_sound

      # @return [Boolean] A flag indicating whether or not you want the native
      # Apple Push notification to update the badge icon to the number of
      # unread messages. The `deliveryTime` property must be set to `any` or
      # `background`.
      # . Default value: false .
      attr_accessor :notification_badge

      # @return [Hash{String => CampaignLocalization}] Push campaigns can be
      # localized using an optional JSON object. The JSON key is a
      # two-character language code as specified by the ISO 639-1 standard. The
      # corresponding value is an object containing the localizable properties.
      #
      attr_accessor :localization

      # @return [Array<PollQuestion>] Poll questions.
      attr_accessor :questions


      #
      # Mapper for Campaign class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Campaign',
          type: {
            name: 'Composite',
            class_name: 'Campaign',
            model_properties: {
              notification_title: {
                required: false,
                serialized_name: 'notificationTitle',
                constraints: {
                  MaxLength: 2000
                },
                type: {
                  name: 'String'
                }
              },
              notification_message: {
                required: false,
                serialized_name: 'notificationMessage',
                constraints: {
                  MaxLength: 4000
                },
                type: {
                  name: 'String'
                }
              },
              notification_image: {
                required: false,
                serialized_name: 'notificationImage',
                constraints: {
                  MaxLength: 65535
                },
                type: {
                  name: 'ByteArray'
                }
              },
              notification_options: {
                required: false,
                serialized_name: 'notificationOptions',
                type: {
                  name: 'Composite',
                  class_name: 'NotificationOptions'
                }
              },
              title: {
                required: false,
                serialized_name: 'title',
                constraints: {
                  MaxLength: 128
                },
                type: {
                  name: 'String'
                }
              },
              body: {
                required: false,
                serialized_name: 'body',
                constraints: {
                  MaxLength: 65535
                },
                type: {
                  name: 'String'
                }
              },
              action_button_text: {
                required: false,
                serialized_name: 'actionButtonText',
                constraints: {
                  MaxLength: 64
                },
                type: {
                  name: 'String'
                }
              },
              exit_button_text: {
                required: false,
                serialized_name: 'exitButtonText',
                constraints: {
                  MaxLength: 64
                },
                type: {
                  name: 'String'
                }
              },
              action_url: {
                required: false,
                serialized_name: 'actionUrl',
                constraints: {
                  MaxLength: 2000
                },
                type: {
                  name: 'String'
                }
              },
              payload: {
                required: false,
                serialized_name: 'payload',
                type: {
                  name: 'Object'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                constraints: {
                  MaxLength: 64
                },
                type: {
                  name: 'String'
                }
              },
              audience: {
                required: false,
                serialized_name: 'audience',
                type: {
                  name: 'Composite',
                  class_name: 'CampaignAudience'
                }
              },
              category: {
                required: false,
                serialized_name: 'category',
                constraints: {
                  MaxLength: 64
                },
                type: {
                  name: 'String'
                }
              },
              push_mode: {
                required: false,
                serialized_name: 'pushMode',
                default_value: 'real-time',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              delivery_time: {
                required: false,
                serialized_name: 'deliveryTime',
                type: {
                  name: 'String'
                }
              },
              delivery_activities: {
                required: false,
                serialized_name: 'deliveryActivities',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              start_time: {
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'String'
                }
              },
              end_time: {
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'String'
                }
              },
              timezone: {
                required: false,
                serialized_name: 'timezone',
                type: {
                  name: 'String'
                }
              },
              notification_type: {
                required: false,
                serialized_name: 'notificationType',
                default_value: 'popup',
                type: {
                  name: 'String'
                }
              },
              notification_icon: {
                required: false,
                serialized_name: 'notificationIcon',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              },
              notification_closeable: {
                required: false,
                serialized_name: 'notificationCloseable',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              },
              notification_vibrate: {
                required: false,
                serialized_name: 'notificationVibrate',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              notification_sound: {
                required: false,
                serialized_name: 'notificationSound',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              notification_badge: {
                required: false,
                serialized_name: 'notificationBadge',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              localization: {
                required: false,
                serialized_name: 'localization',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'CampaignLocalizationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CampaignLocalization'
                      }
                  }
                }
              },
              questions: {
                required: false,
                serialized_name: 'questions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PollQuestionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PollQuestion'
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