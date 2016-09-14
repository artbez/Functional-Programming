package recfun

object Main {
  def main(args: Array[String]) {
    println("Pascal's Triangle")
    for (row <- 0 to 10) {
      for (col <- 0 to row)
        print(pascal(col, row) + " ")
      println()
    }
  }

  /**
   * Exercise 1
   */
    def pascal(c: Int, r: Int): Int = {
      if (c > r) throw new java.util.NoSuchElementException()
      if (c == r) 1
      else
        (c, r) match {
          case (0, _) => 1
          case (1, n) => n
          case (c, r) => pascal(c - 1, r - 1) + pascal(c, r - 1)
        }
    }
  
  /**
   * Exercise 2
   */
    def balance(chars: List[Char]): Boolean = ???
  
  /**
   * Exercise 3
   */
    def countChange(money: Int, coins: List[Int]): Int = ???
  }
