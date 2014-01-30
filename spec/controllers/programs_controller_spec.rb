require 'spec_helper'

describe ProgramsController do
  describe "#index" do
    it "renders the index view" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "#new" do
    it "renders the new template" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "#create" do
    before :each do
      @program = create(:program)
    end
    it "creates a new program" do
      post :create, id: @program
      expect(response).to render_template("new")
    end
  end

  describe "#show" do
    before :each do
      @program = create(:program)
    end
    it "renders the show view" do
      get :show, id: @program
      response.should render_template :show
    end
  end

  describe "#edit" do
    before :each do
      @program = create(:program)
    end
    it "renders a view to update @program's attributes" do
      get :edit, id: @program
      response.should render_template :edit
    end
  end

  describe "#update" do
    before :each do
      @program = create(:program)
    end
    it "changes @program's attributes" do
      put :update, id: @program
      @program = create(:program, title: 'New title')
      @program.reload
      @program.title.should eq("New title")
    end
  end

  describe "#destroy" do
    before :each do
      @program = create(:program)
    end
    it "deletes the record and renders the index" do
      delete :destroy, id: @program
      response.should redirect_to programs_url
    end
  end
end
