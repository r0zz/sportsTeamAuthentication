require 'test_helper'

class SportsTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sports_team = sports_teams(:one)
  end

  test "should get index" do
    get sports_teams_url
    assert_response :success
  end

  test "should get new" do
    get new_sports_team_url
    assert_response :success
  end

  test "should create sports_team" do
    assert_difference('SportsTeam.count') do
      post sports_teams_url, params: { sports_team: { city: @sports_team.city, league: @sports_team.league, stadium: @sports_team.stadium, teamName: @sports_team.teamName } }
    end

    assert_redirected_to sports_team_url(SportsTeam.last)
  end

  test "should show sports_team" do
    get sports_team_url(@sports_team)
    assert_response :success
  end

  test "should get edit" do
    get edit_sports_team_url(@sports_team)
    assert_response :success
  end

  test "should update sports_team" do
    patch sports_team_url(@sports_team), params: { sports_team: { city: @sports_team.city, league: @sports_team.league, stadium: @sports_team.stadium, teamName: @sports_team.teamName } }
    assert_redirected_to sports_team_url(@sports_team)
  end

  test "should destroy sports_team" do
    assert_difference('SportsTeam.count', -1) do
      delete sports_team_url(@sports_team)
    end

    assert_redirected_to sports_teams_url
  end
end
