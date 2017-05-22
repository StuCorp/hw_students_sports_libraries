require ('minitest/autorun')
require ('minitest/rg')
require_relative ('sports_team')

class TestStudent < MiniTest::Test

  def setup()
    @team_one = SportsTeam.new("Harlem Doinkers", ["Aldo", "Stevey", "JohnBoy", "Russler"], "Coach Bryce")
  end

  def test_get_team_name
    assert_equal("Harlem Doinkers", @team_one.get_team_name())
  end

  def test_get_players()
    assert_equal(["Aldo", "Stevey", "JohnBoy", "Russler"], @team_one.get_players())
  end

  # def test_get_coach()
  #   assert_equal("Coach Bryce", @team_one.get_coach())
  # end

  # def test_set_coach()
  #   @team_one.set_coach("Coach Bell")
  #   assert_equal("Coach Bell", @team_one.get_coach())
  # end

  def test_attr_coach()
    @team_one.coach = "Coach DaBell"
    assert_equal("Coach DaBell", @team_one.coach())
  end

  def test_attr_players()
    @team_one.players =["new boy 1","new boy 2","new boy 3","new boy 4","new boy 5"]
    assert_equal(["new boy 1","new boy 2","new boy 3","new boy 4","new boy 5"], @team_one.players())
  end

  def test_new_player_add()
    @team_one.new_player_add("Thrill Gates")
    assert_equal(["Aldo", "Stevey", "JohnBoy", "Russler","Thrill Gates"], @team_one.players())
  end

  def test_player_list_search
    assert_equal(["Aldo", "Russler"], @team_one.players_list_search("Bart, Aldo, Russler, Kev the Killer"))
  end

  def test_score_update_win
    assert_equal(3, @team_one.score_update("win"))

  end

  def test_score_update_loss
    assert_equal(0, @team_one.score_update("loss"))

  end
end