import java.util.function.Predicate;

public class Main {

    public static Predicate<Integer> checkDigitCurried(int digit) {
        return (a) -> {
            if (a == 0)
                return false;
            else return a % 10 == digit || checkDigitCurried(digit).test(a / 10);
        };
    }

    public static void main(String[] args) {
        System.out.println(checkDigitCurried(7).test(171));
        System.out.println(checkDigitCurried(7).test(131));
    }
}
