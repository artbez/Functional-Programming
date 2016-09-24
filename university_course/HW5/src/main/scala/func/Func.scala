package func

object Func {
  def integral(f: Double => Double, a: Double, b: Double) = {
    val eps = 0.01
    val num : Int = ((b - a) / eps).toInt
    val seq = List.tabulate (num) (x => a + x * eps)
    seq.foldRight (0.0) ((cur, acc) => (acc + f(cur) * eps))
  }
}
