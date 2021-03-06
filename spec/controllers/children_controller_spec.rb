require 'rails_helper'

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

RSpec.describe ChildrenController, :type => :controller do
  login_adult

  # This should return the minimal set of attributes required to create a valid
  # Child. As you add validations to Child, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ChildrenController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all children as @children" do
      child = Child.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:children)).to eq([child])
    end
  end

  describe "GET show" do
    it "assigns the requested child as @child" do
      child = Child.create! valid_attributes
      get :show, {:id => child.to_param}, valid_session
      expect(assigns(:child)).to eq(child)
    end
  end

  describe "GET new" do
    it "assigns a new child as @child" do
      get :new, {}, valid_session
      expect(assigns(:child)).to be_a_new(Child)
    end
  end

  describe "GET edit" do
    it "assigns the requested child as @child" do
      child = Child.create! valid_attributes
      get :edit, {:id => child.to_param}, valid_session
      expect(assigns(:child)).to eq(child)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Child" do
        expect {
          post :create, {:child => valid_attributes}, valid_session
        }.to change(Child, :count).by(1)
      end

      it "assigns a newly created child as @child" do
        post :create, {:child => valid_attributes}, valid_session
        expect(assigns(:child)).to be_a(Child)
        expect(assigns(:child)).to be_persisted
      end

      it "redirects to the created child" do
        post :create, {:child => valid_attributes}, valid_session
        expect(response).to redirect_to(Child.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved child as @child" do
        post :create, {:child => invalid_attributes}, valid_session
        expect(assigns(:child)).to be_a_new(Child)
      end

      it "re-renders the 'new' template" do
        post :create, {:child => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested child" do
        child = Child.create! valid_attributes
        put :update, {:id => child.to_param, :child => new_attributes}, valid_session
        child.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested child as @child" do
        child = Child.create! valid_attributes
        put :update, {:id => child.to_param, :child => valid_attributes}, valid_session
        expect(assigns(:child)).to eq(child)
      end

      it "redirects to the child" do
        child = Child.create! valid_attributes
        put :update, {:id => child.to_param, :child => valid_attributes}, valid_session
        expect(response).to redirect_to(child)
      end
    end

    describe "with invalid params" do
      it "assigns the child as @child" do
        child = Child.create! valid_attributes
        put :update, {:id => child.to_param, :child => invalid_attributes}, valid_session
        expect(assigns(:child)).to eq(child)
      end

      it "re-renders the 'edit' template" do
        child = Child.create! valid_attributes
        put :update, {:id => child.to_param, :child => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested child" do
      child = Child.create! valid_attributes
      expect {
        delete :destroy, {:id => child.to_param}, valid_session
      }.to change(Child, :count).by(-1)
    end

    it "redirects to the children list" do
      child = Child.create! valid_attributes
      delete :destroy, {:id => child.to_param}, valid_session
      expect(response).to redirect_to(children_url)
    end
  end

end
