# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/profile_latest/customerinsights_profile_latest_module_definition.rb'
require 'profiles/profile_latest/modules/customerinsights_profile_module'
require 'profiles/common/configurable'
require 'profiles/common/default'

module Azure::CustomerInsights::Management::Profile_Latest
  #
  # Client class for the Profile_Latest profile SDK.
  #
  class Client
    include Azure::ARM::Configurable

    attr_reader  :customer_insights

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_options
      else
        @options = options
      end

      reset!(options)

      @customer_insights = CustomerInsightsClass.new(self)
    end

    def credentials
      if @credentials.nil?
        self.active_directory_settings ||= Azure::ARM::Default.active_directory_settings

        @credentials = MsRest::TokenCredentials.new(
                    MsRestAzure::ApplicationTokenProvider.new(
                        self.tenant_id, self.client_id, self.client_secret, self.active_directory_settings))
      end
      @credentials
    end
  end
end