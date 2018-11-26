require "rspec"

describe "suite for endpoint like" do

  context "testing POST method" do
    it "creates a new user" do
     skip ("gonna finish later")
    end
    # reported as "Pending: no reason given"
    it "can not create the same user" do
      pending
    end
  endf

  context "testing GET method" do
    it "can find user by id" do

    end
    it "can get user name and password" do

    end
  end

  context "/testing Delete method/" do
    it "can delete created user" do

    end
    it "can not delete not existed user" do

    end
    it "/can not delete deleted user/" do

    end
  end

  context "testing PUT method" do
    it "can update user name"
  end

  describe "suite 2" do
    it "test1" do

    end
  end
end
