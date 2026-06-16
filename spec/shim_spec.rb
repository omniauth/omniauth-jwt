# frozen_string_literal: true

RSpec.describe "omniauth-jwt shim" do
  it "loads the replacement gem" do
    expect(require("omniauth-jwt2")).to be(false).or be(true)
  end

  it "loads the primary compatibility require path" do
    expect(require("omniauth/jwt")).to be(false).or be(true)
  end

  it "has a shim gem version" do
    expect(Gem.loaded_specs.fetch("omniauth-jwt").version.to_s).not_to be_empty
  end
end
