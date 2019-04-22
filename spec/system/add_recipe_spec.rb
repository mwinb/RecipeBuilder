require "rails_helper"

RSpec.describe "adding a recipe", type: :system do
  it "allows a user to create a recipe with steps", :pending  do
    visit new_recipe_path
    fill_in "Name", with: "Test Pancakes"
    fill_in "Ingredient", with: "Test pancake"
    fill_in "Amount", with: "1 Test"
    click_on("Add Ingredient")
    fill_in "Description", with: "Test the pancake"
    click_on("Add Step")
    click_on("Create Recipe")
    visit recipes_path
    expect(page).to have_content("Test Pancakes")
  end
end

