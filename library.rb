class Library

  def initialize (books)
    @books = books
  end

  def get_number_of_books()
    return @books.length

  end

  def get_book_details()
    array_of_book_info = []
    for book in @books
      array_of_book_info << ("#{book[:title]} loaned to #{book[:rental_details][:student_name]} due on #{book[:rental_details][:date]}")
    end
    return array_of_book_info
  end

  def get_book_info(book_title)
    for book in @books
      if book[:title] == book_title
        return "loaned to #{book[:rental_details][:student_name]} due on #{book[:rental_details][:date]}"
      end
    end  
  end

  def get_book_rental_date(book_title)
    for book in @books
      if book[:title] == book_title
        return book[:rental_details][:date]
      end
    end
  end

  def get_book_by_array_num(number)
    return @books[number][:title]
    
  end

  def add_book(book_title)
    @books << {
      title: book_title,
      rental_details: {
        student_name: "",
        date: ""
        } }
    
  end

  def new_rental(title, new_student, new_date)
    for book in @books
      if title == book[:title]
        book[:rental_details][:student_name] = new_student
        book[:rental_details][:date] = new_date
      end
    end
  end

end