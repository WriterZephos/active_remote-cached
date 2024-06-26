# frozen_string_literal: true

require 'spec_helper'

class ExistMethodClass
  include ::ActiveRemote::Cached

  def self.find
    nil
  end

  def self.search
    nil
  end

  cached_finders_for :guid
  cached_finders_for :guid, :user_guid
  cached_finders_for %i[user_guid client_guid]
  cached_finders_for %i[derp user_guid client_guid]
end

describe ExistMethodClass do
  describe 'API' do
    it "creates 'cached_exist_find_by_guid'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_find_by_guid)
    end

    it "creates 'cached_exist_search_by_guid'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_search_by_guid)
    end

    it "creates 'cached_exist_find_by_user_guid'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_find_by_user_guid)
    end

    it "creates 'cached_exist_search_by_user_guid'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_search_by_user_guid)
    end

    it "creates 'cached_exist_find_by_user_guid_and_client_guid'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_find_by_user_guid_and_client_guid)
    end

    it "creates 'cached_exist_search_by_user_guid_and_client_guid'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_search_by_user_guid_and_client_guid)
    end

    it "creates 'cached_exist_find_by_client_guid_and_user_guid'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_find_by_client_guid_and_user_guid)
    end

    it "creates 'cached_exist_search_by_client_guid_and_user_guid'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_search_by_client_guid_and_user_guid)
    end

    it "creates 'cached_exist_find_by_derp_and_user_guid_and_client_guid'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_find_by_derp_and_user_guid_and_client_guid)
    end

    it "creates 'cached_exist_search_by_derp_and_user_guid_and_client_guid'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_search_by_derp_and_user_guid_and_client_guid)
    end

    it "creates 'cached_exist_find_by_client_guid_and_derp_and_user_guid'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_find_by_client_guid_and_derp_and_user_guid)
    end

    it "creates 'cached_exist_search_by_client_guid_and_derp_and_user_guid'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_search_by_client_guid_and_derp_and_user_guid)
    end

    it "creates 'cached_exist_find_by_client_guid_and_user_guid_and_derp'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_find_by_client_guid_and_user_guid_and_derp)
    end

    it "creates 'cached_exist_search_by_client_guid_and_user_guid_and_derp'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_search_by_client_guid_and_user_guid_and_derp)
    end

    # ? based methods
    it "creates 'cached_exist_find_by_guid?'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_find_by_guid?)
    end

    it "creates 'cached_exist_search_by_guid?'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_search_by_guid?)
    end

    it "creates 'cached_exist_find_by_user_guid?'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_find_by_user_guid?)
    end

    it "creates 'cached_exist_search_by_user_guid?'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_search_by_user_guid?)
    end

    it "creates 'cached_exist_find_by_user_guid_and_client_guid?'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_find_by_user_guid_and_client_guid?)
    end

    it "creates 'cached_exist_search_by_user_guid_and_client_guid?'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_search_by_user_guid_and_client_guid?)
    end

    it "creates 'cached_exist_find_by_client_guid_and_user_guid?'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_find_by_client_guid_and_user_guid?)
    end

    it "creates 'cached_exist_search_by_client_guid_and_user_guid?'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_search_by_client_guid_and_user_guid?)
    end

    it "creates 'cached_exist_find_by_derp_and_user_guid_and_client_guid?'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_find_by_derp_and_user_guid_and_client_guid?)
    end

    it "creates 'cached_exist_search_by_derp_and_user_guid_and_client_guid?'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_search_by_derp_and_user_guid_and_client_guid?)
    end

    it "creates 'cached_exist_find_by_client_guid_and_derp_and_user_guid?'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_find_by_client_guid_and_derp_and_user_guid?)
    end

    it "creates 'cached_exist_search_by_client_guid_and_derp_and_user_guid?'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_search_by_client_guid_and_derp_and_user_guid?)
    end

    it "creates 'cached_exist_find_by_client_guid_and_user_guid_and_derp?'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_find_by_client_guid_and_user_guid_and_derp?)
    end

    it "creates 'cached_exist_search_by_client_guid_and_user_guid_and_derp?'" do
      expect(ExistMethodClass).to respond_to(:cached_exist_search_by_client_guid_and_user_guid_and_derp?)
    end
  end
end
