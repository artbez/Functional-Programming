public class Main {

    @FunctionalInterface
    interface Func {
        double apply(double arg);
    }

    public static double integral(Func func, double a, double b) {
        double eps = 0.0001;
        double res = 0;
        while (a < b) {
            res += func.apply(a) * eps;
            a += eps;
        }
        return res;
    }

    public static void main(String[] args) {
        double test1 = integral(x -> x, 0, 1);
        assert (Math.abs(test1 - 0.5) < 0.01);
        double test2 = integral(x -> x * x, 0, 1);
        assert (Math.abs(test2 - 0.333) < 0.01);
    }
}
