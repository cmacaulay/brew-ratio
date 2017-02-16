describe User do
  context "validations" do
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_uniqueness_of(:username) }
    it { should have_secure_password }
  end
end
