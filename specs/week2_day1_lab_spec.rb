require('minitest/rg')
require('minitest/autorun')
require_relative('../week2_day1_lab')

class TestStudent < MiniTest::Test

  def test_student_name
    student = Student.new("Angus", 4)
    assert_equal("Angus", student.student_name)
  end

  def test_cohort
    student = Student.new("Angus", 4)
    assert_equal(4, student.student_cohort)
  end
  #
  def test_new_student
    student = Student.new("Angus", 4)
    student.new_student("Ed")
    assert_equal("Ed", student.student_name)
  end
  #
  def test_new_cohort
    student = Student.new("Angus", 4)
    student.new_cohort(5)
    assert_equal(5, student.student_cohort)
  end
  #
  def test_student_talk
    student = Student.new("Angus", 4)
    assert_equal("I can talk!", student.student_talk)
  end

  def test_favorite_language
    student = Student.new("Angus", 4)
    language = "Ruby"
    assert_equal("I love #{language}", student.fav_language(language))
  end

end

class TestTeam < MiniTest::Test

  def test_team
    team = Team.new("Coderugby", [], "Melinda", 0)
    assert_equal("Coderugby", team.team_name)
  end

  def test_players_array
    team = Team.new("Coderugby", [], "Melinda", 0)
    assert_equal([], team.players)
  end

  def test_coach
    team = Team.new("Coderugby", [], "Melinda", 0)
    assert_equal("Melinda", team.coach)
  end

  def test_new_coach
    team = Team.new("Coderugby", [], "Melinda", 0)
    team.new_coach("Bob")
    assert_equal("Bob", team.coach)
  end
  #
  def test_add_player
    team = Team.new("Coderugby", [], "Melinda", 0)
    team.add_player("Danny")
    assert_equal(1, team.players.length)
  end

  def test_player_check_true
    team = Team.new("Coderugby", ["Danny"], "Melinda", 0)
    assert_equal("Danny", team.player_check("Danny"))
  end

  def test_player_check_false
    team = Team.new("Coderugby", [], "Melinda", 0)
    assert_nil( team.player_check("Danny"))
  end

  def test_player_win
    team = Team.new("Coderugby", [], "Melinda", 0)
    assert_equal(1, team.player_win("Win"))
  end

  def test_player_lose
    team = Team.new("Coderugby", [], "Melinda", 0)
    assert_nil( team.player_win("Lose"))
  end

end


class LibraryTest < Minitest::Test
  #arrange
    def test_library_has_books
      library = Library.new([])
      assert_equal([], library.books)
    end

    def test_get_info_for_title
      book = {
        title: "Lord of the Rings",
        rental_details: {
          student_name: "Jeff",
          date: "29/01/2018"
        }
      }
      library = Library.new([book])
      #act
      book_info =
      library.get_info_for_title("Lord of the Rings")
      #assert
      assert_equal(book, book_info)
    end

  end
