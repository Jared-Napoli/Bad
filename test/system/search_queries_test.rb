require "application_system_test_case"

class SearchQueriesTest < ApplicationSystemTestCase
  setup do
    @search_query = search_queries(:one)
  end

  test "visiting the index" do
    visit search_queries_url
    assert_selector "h1", text: "Search Queries"
  end

  test "creating a Search query" do
    visit search_queries_url
    click_on "New Search Query"

    fill_in "Query Response", with: @search_query.query_response
    fill_in "Query String", with: @search_query.query_string
    click_on "Create Search query"

    assert_text "Search query was successfully created"
    click_on "Back"
  end

  test "updating a Search query" do
    visit search_queries_url
    click_on "Edit", match: :first

    fill_in "Query Response", with: @search_query.query_response
    fill_in "Query String", with: @search_query.query_string
    click_on "Update Search query"

    assert_text "Search query was successfully updated"
    click_on "Back"
  end

  test "destroying a Search query" do
    visit search_queries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Search query was successfully destroyed"
  end
end
