require File.dirname(__FILE__) + '/../spec_helper'

describe "EzTexting" do
  
  describe "sms" do
    it "call do_http post with a URI of /sending" do
      msg = {:phonenumber=>"5163177477", :message=>"Caprica", :subject=>"Cylons have destroyed the entire fleet"}
      response = Eztexting::Sms.single(msg)
      response.last
    end
  end
  
  describe "eztexting" do
    it "should store the username and password as instance vars when the connect method is called" do
      Eztexting.connect!("BillAdama","Pupser")
      Eztexting.credentials[:user].should eql("BillAdama")
      Eztexting.credentials[:pass].should eql("Pupser")
    end
  
    it "does something" do
    
    end
  end
end