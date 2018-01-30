class Student
  # attr_accessor :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end
  #
  def student_name()
    @name
  end

  def student_cohort()
    @cohort
  end

  def new_student(student_name)
    @name = student_name
  end
  #
  def new_cohort(number)
    @cohort = number
  end

  def student_talk()
    "I can talk!"
  end

  def fav_language(language)
    return "I love #{language}"
  end

end

class Team
  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def new_coach(new_name)
    @coach = new_name
  end

  def add_player(name)
    @players.push(name)
  end

  def player_check(player)
    no_player = nil
    for person in @players
      if player == person
        no_player = player
      end
    end
    return no_player
  end

  def player_win(win)
    if win == "Win"
    @points +1
    end
  end

end

class Library

  attr_reader :books

  def initialize(books)
    @books = books
  end

  def get_info_for_title(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  return nil
end

 def get_rental_details(title)
   for book in @books
     if book[:title] == title
       return book[:rental_details]
      end
    end
  return nil
end

def add_new_book(new_book)
  new_book= {
    title: "lord of the flies",
    rental_details:{
      student_name:" ",
      date: " "
    }
  }
  @books.push new_book
  return @books.length
end

def update_rental_details(title, student_name, date)
 # needs to loop over to find 3 pieces of info then input a new student name and date
 # once found
  for book in @books
    if [:title] == title
       [:student_name] == student_name
       [:date] == date
     end
     return new_book_info
   end
end
# last one has stumped me

end
