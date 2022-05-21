require "application_system_test_case"

class HistoryLogsTest < ApplicationSystemTestCase
  setup do
    @history_log = history_logs(:one)
  end

  test "visiting the index" do
    visit history_logs_url
    assert_selector "h1", text: "History logs"
  end

  test "should create history log" do
    visit history_logs_url
    click_on "New history log"

    fill_in "Amount", with: @history_log.amount
    fill_in "From", with: @history_log.from
    fill_in "Result", with: @history_log.result
    fill_in "To", with: @history_log.to
    click_on "Create History log"

    assert_text "History log was successfully created"
    click_on "Back"
  end

  test "should update History log" do
    visit history_log_url(@history_log)
    click_on "Edit this history log", match: :first

    fill_in "Amount", with: @history_log.amount
    fill_in "From", with: @history_log.from
    fill_in "Result", with: @history_log.result
    fill_in "To", with: @history_log.to
    click_on "Update History log"

    assert_text "History log was successfully updated"
    click_on "Back"
  end

  test "should destroy History log" do
    visit history_log_url(@history_log)
    click_on "Destroy this history log", match: :first

    assert_text "History log was successfully destroyed"
  end
end
