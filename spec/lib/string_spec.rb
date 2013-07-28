require 'spec_helper'

describe String do
  describe "to_a" do
    it "should wrap string in array" do
      "foobar".to_a.should == ["foobar"]
    end
    it "should split string at commas" do
      "foobar,qwe".to_a.should == ["foobar","qwe"]
    end
    it "should strip each split string" do
      " foobar , qwe ".to_a.should == ["foobar","qwe"]
    end
  end
end
