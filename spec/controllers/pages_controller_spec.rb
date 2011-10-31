require 'spec_helper'

describe PagesController do

  describe "GET 'technology'" do
    it "should be successful" do
      get 'technology'
      response.should be_success
    end
  end
  describe "GET 'solutions'" do
    it "should be successful" do
      get 'solutions'
      response.should be_success
    end
  end

end
