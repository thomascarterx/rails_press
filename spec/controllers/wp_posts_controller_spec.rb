require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe WpPostsController do

  # This should return the minimal set of attributes required to create a valid
  # WpPost. As you add validations to WpPost, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {
      post_author: 1,
      post_date: "2013-01-29 21:52:39.000000000 Z",
      post_date_gmt: "2013-01-29 21:52:39.000000000 Z",
      post_content: "''",
      post_title: "Hello from author",
      post_excerpt: "''",
      post_status: "inherit",
      comment_status: "open",
      ping_status: "open",
      post_password: "''",
      post_name: "7-revision",
      to_ping: "''",
      pinged: "''",
      post_modified: "2013-01-29 21:52:39.000000000 Z",
      post_modified_gmt: "2013-01-29 21:52:39.000000000 Z",
      post_content_filtered: "''",
      post_parent: 7,
      guid: "http://localhost/~ericm/?p=8",
      menu_order: "0",
      post_type: "revision",
      post_mime_type: "''",
      comment_count: 0
    }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # WpPostsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all wp_posts as @wp_posts" do
      wp_post = WpPost.create! valid_attributes
      get :index, {}, valid_session
      assigns(:wp_posts).should eq([wp_post])
    end
  end

  describe "GET show" do
    it "assigns the requested wp_post as @wp_post" do
      wp_post = WpPost.create! valid_attributes
      get :show, {:id => wp_post.to_param}, valid_session
      assigns(:wp_post).should eq(wp_post)
    end
  end

  describe "GET new" do
    it "assigns a new wp_post as @wp_post" do
      get :new, {}, valid_session
      assigns(:wp_post).should be_a_new(WpPost)
    end
  end

  describe "GET edit" do
    it "assigns the requested wp_post as @wp_post" do
      wp_post = WpPost.create! valid_attributes
      get :edit, {:id => wp_post.to_param}, valid_session
      assigns(:wp_post).should eq(wp_post)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new WpPost" do
        expect {
          post :create, {:wp_post => valid_attributes}, valid_session
        }.to change(WpPost, :count).by(1)
      end

      it "assigns a newly created wp_post as @wp_post" do
        post :create, {:wp_post => valid_attributes}, valid_session
        assigns(:wp_post).should be_a(WpPost)
        assigns(:wp_post).should be_persisted
      end

      it "redirects to the created wp_post" do
        post :create, {:wp_post => valid_attributes}, valid_session
        response.should redirect_to(WpPost.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved wp_post as @wp_post" do
        # Trigger the behavior that occurs when invalid params are submitted
        WpPost.any_instance.stub(:save).and_return(false)
        post :create, {:wp_post => {}}, valid_session
        assigns(:wp_post).should be_a_new(WpPost)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        WpPost.any_instance.stub(:save).and_return(false)
        post :create, {:wp_post => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested wp_post" do
        wp_post = WpPost.create! valid_attributes
        # Assuming there are no other wp_posts in the database, this
        # specifies that the WpPost created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        WpPost.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => wp_post.to_param, :wp_post => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested wp_post as @wp_post" do
        wp_post = WpPost.create! valid_attributes
        put :update, {:id => wp_post.to_param, :wp_post => valid_attributes}, valid_session
        assigns(:wp_post).should eq(wp_post)
      end

      it "redirects to the wp_post" do
        wp_post = WpPost.create! valid_attributes
        put :update, {:id => wp_post.to_param, :wp_post => valid_attributes}, valid_session
        response.should redirect_to(wp_post)
      end
    end

    describe "with invalid params" do
      it "assigns the wp_post as @wp_post" do
        wp_post = WpPost.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        WpPost.any_instance.stub(:save).and_return(false)
        put :update, {:id => wp_post.to_param, :wp_post => {}}, valid_session
        assigns(:wp_post).should eq(wp_post)
      end

      it "re-renders the 'edit' template" do
        wp_post = WpPost.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        WpPost.any_instance.stub(:save).and_return(false)
        put :update, {:id => wp_post.to_param, :wp_post => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested wp_post" do
      wp_post = WpPost.create! valid_attributes
      expect {
        delete :destroy, {:id => wp_post.to_param}, valid_session
      }.to change(WpPost, :count).by(-1)
    end

    it "redirects to the wp_posts list" do
      wp_post = WpPost.create! valid_attributes
      delete :destroy, {:id => wp_post.to_param}, valid_session
      response.should redirect_to(wp_posts_url)
    end
  end

end
