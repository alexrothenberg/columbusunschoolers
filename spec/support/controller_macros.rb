module ControllerMacros
  def login_adult
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:adult]
      sign_in Adult.create!(
        first_name: 'Ingird',
        last_name: 'adult',
        email: 'ingrid@example.com',
        password: 'shhhSecret')
    end
  end
end