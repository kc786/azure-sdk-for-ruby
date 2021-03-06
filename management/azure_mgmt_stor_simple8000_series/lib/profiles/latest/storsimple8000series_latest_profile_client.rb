# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/latest/storsimple8000series_module_definition'
require 'profiles/latest/modules/storsimple8000series_profile_module'

module Azure::StorSimple8000Series::Profiles::Latest::Mgmt
  #
  # Client class for the Latest profile SDK.
  #
  class Client < StorSimple8000SeriesClass
    include MsRestAzure::Common::Configurable


    def initialize(options = {})
      super(options)
    end

  end
end
