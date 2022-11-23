require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
  describe "GET index" do
     
    it "assigns @proejcts" do
      project = Project.create(
      title: "New project of Ui/Ux",
      category: 2,
      description: "Testing descriptionTesting descriptionTesting description",
      active: true,
      start_date: Time.now,
      end_date: Time.now,
      duration: 20,
      tech_stack: "",
      challenges: "Testing descriptionTesting descriptionTesting description",
      priority: 3,
      git_url: "https://www.javatpoint.com",
      live_url: "https://www.javatpoint.com")
      get :index

      expect(assigns(:projects)).to match_array([project])
    end
   
   
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
    

    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe "GET new" do
    login_manager
    
    it "has a 200  status code" do
      get :new, session: {}
    expect(response.status).to eq(200)
    end

    it "should render new template" do
      get :new, session: {}
      expect(response).to render_template("new")
    end
    it "should assign a valid project to the show" do
    get :new, session: {}
    expect(assigns(:project)).to be_a_new(Project)
   end


  end

  end
