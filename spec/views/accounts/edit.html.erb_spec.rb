require 'rails_helper'

RSpec.describe "accounts/edit", type: :view do
  before(:each) do
    @account = assign(:account, account.create!(
      FactoryBot :account
    ))
  end

  it "renders the edit account form" do
    render

    assert_select "form[action=?][method=?]", account_path(@account), "post" do

      assert_select "input[name=?]", "account[number]"

      assert_select "input[name=?]", "account[amount]"

      assert_select "input[name=?]", "account[expiry]"
    end
  end
end
