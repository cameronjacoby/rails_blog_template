require 'rails_helper'

RSpec.describe PostsController, :type => :controller do

  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the posts into @posts" do
      post1, post2 = Post.create!, Post.create!
      get :index
      expect(assigns(:posts)).to match_array([post1, post2])
    end
  end

  describe "GET #new" do
    it "responds successfully with an HTTP 200 status code" do
      get :new
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the new template" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "GET #show" do
    it "responds successfully with an HTTP 200 status code" do
      post = Post.create!
      get :show, :id => post[:id]
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the show template" do
      post = Post.create!
      get :show, :id => post[:id]
      expect(response).to render_template("show")
    end

    it "loads the post into @post" do
      post = Post.create!
      get :show, :id => post[:id]
      expect(assigns(:post)).to eql(post)
    end
  end

  describe "GET #edit" do
    it "responds successfully with an HTTP 200 status code" do
      post = Post.create!
      get :edit, :id => post[:id]
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the edit template" do
      post = Post.create!
      get :edit, :id => post[:id]
      expect(response).to render_template("edit")
    end

    it "loads the post into @post" do
      post = Post.create!
      get :edit, :id => post[:id]
      expect(assigns(:post)).to eql(post)
    end
  end

end