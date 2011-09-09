# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe User do

  #before(:each) do
  #   @attr = { :name => "Example User", :email => "user@example.com" }
  #end

  #it "should create a new instance given valid attributes" do
  #  User.create!(@attr)
  #end
  
  #it "should require a name"
  
  
  
  
  it "should create a new instance given valid attributes" do
   User.create!(:name => "Example User", :email => "user@example.com")
  end
  
   
  it "should require a name" do
      no_name_user = User.new(:name => "")
      no_name_user.should_not be_valid
    end
    
    
    it "should require an email address" do
        no_email_user = User.new(:email => "")
        no_email_user.should_not be_valid 
      end
      
      it "should reject names that are too long" do
          long_name = "a" * 55
          long_name_user = User.new(:name => long_name)
          long_name_user.should_not be_valid
        end
      
end