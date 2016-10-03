import java.util.Arrays;

public class Main {

    private static int[][] ex1 = {{1, 7, 3}, {2, 6, 7}, {21, 34 , 57}};
    private static int[][] ex2 = {{1, 7, 3}, {2, 6, 7}, {22, 34 , 57}};

    private static boolean dev7(int[][] myArray) {
        return Arrays.stream(myArray).allMatch(x -> Arrays.stream(x).anyMatch(y -> y % 7 == 0));
    }
    public static void main(String[] args) {
        System.out.println(dev7(ex1));
        System.out.println(dev7(ex2));
    }
}
