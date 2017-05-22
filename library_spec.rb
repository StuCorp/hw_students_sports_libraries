require ('minitest/autorun')
require('minitest/rg')
require_relative('library')

class TestLibrary < MiniTest::Test

  def setup()
    @library_one = Library.new([
      { 
       title: "lord_of_the_rings",
       rental_details: { 
        student_name: "Jeff", 
        date: "01/12/16"
        }
      },

      { 
       title: "king_of_the_dings",
       rental_details: { 
        student_name: "Stuart", 
        date: "07/06/19"
        }
      }, 

      { 
       title: "lord_of_the_batdance",
       rental_details: { 
        student_name: "Henry", 
        date: "14/10/92"
        }
      }

    ]) 

  end

  def test_get_number_of_books()
    assert_equal(3, @library_one.get_number_of_books())
    
  end

  def test_get_book_details
    assert_equal(["lord_of_the_rings loaned to Jeff due on 01/12/16", "king_of_the_dings loaned to Stuart due on 07/06/19", "lord_of_the_batdance loaned to Henry due on 14/10/92"], @library_one.get_book_details())
    
  end

  def test_get_book_info()
    assert_equal("loaned to Stuart due on 07/06/19", @library_one.get_book_info("king_of_the_dings"))
  end

  def test_get_book_rental_date()
    assert_equal("14/10/92", @library_one.get_book_rental_date("lord_of_the_batdance"))
  end

  def test_add_book()
    @library_one.add_book("eating_the_seeds")
    assert_equal("eating_the_seeds", @library_one.get_book_by_array_num(3))
    
  end

  def test_get_book_by_array_num()
    assert_equal("lord_of_the_batdance", @library_one.get_book_by_array_num(2))
    
  end

  def test_new_rental()
    @library_one.new_rental("king_of_the_dings", "Jazzer", "06/06/06")
    assert_equal("loaned to Jazzer due on 06/06/06", @library_one.get_book_info("king_of_the_dings"))
    
  end

end
