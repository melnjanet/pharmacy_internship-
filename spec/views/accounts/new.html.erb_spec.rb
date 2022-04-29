require 'rails_helper'

RSpec.describe "accounts/new", type: :view do
  before(:each) do
    assign(:account, Account.new(
      FactoryBot :account
    ))
  end

  it "renders new Account form" do
    render

    assert_select "form[action=?][method=?]", accounts_path, "post" do

      assert_select "input[name=?]", "account[number]"

      assert_select "input[name=?]", "account[amount]"

      assert_select "input[name=?]", "account[expiry]"
    end
  end
end
