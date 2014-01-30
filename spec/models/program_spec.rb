require 'spec_helper'

describe Program do
  describe "title validation" do
    context "title is present" do
      before(:each) do
        @program = Program.new(title: "This is a title")
      end

      it "does not add an error on the 'title' attribute" do
        @program.should have(0).error_on(:title)
      end
    end

    context "title is not present" do
      before(:each) do
        @program = Program.new(title: "")
      end

      it "adds an error on the 'title' attribute" do
        @program.should have(1).error_on(:title)
      end
    end
  end
  describe "subtitle validation" do
    context "subtitle is present" do
      before(:each) do
        @program = Program.new(subtitle: "This is a subtitle")
      end

      it "does not add an error on the 'subtitle' attribute" do
        @program.should have(0).error_on(:subtitle)
      end
    end
    context "subtitle is not present" do
      before(:each) do
        @program = Program.new(subtitle: "")
      end

      it "adds an error on the 'subtitle' attribute" do
        @program.should have(1).error_on(:subtitle)
      end
    end
  end
  describe "code validation" do
    context "code is present" do
      before(:each) do
        @program = Program.new(code: "123456")
      end

      it "does not add an error on the 'code' attribute" do
        @program.should have(0).error_on(:code)
      end
    end
    context "code is not present" do
      before(:each) do
        @program = Program.new(code: "")
      end

      it "adds an error on the 'code' attribute" do
        @program.should have(2).error_on(:code)
      end
    end
  end
end
