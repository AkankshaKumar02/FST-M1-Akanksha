public class Activity2 {

    public static void main(String[] args) {
        // TODO Auto-generated method stub
        int arrOfNumbers[] = { 10, 77, 10, 54, -11, 10, 10 };
        int expectedSum = 30;
        int expectedNo = 10;
        int intialSum = 0;

        for (int num : arrOfNumbers) {
            if (num == expectedNo)
                intialSum = intialSum + num;
            if (intialSum > expectedSum)
                break;
        }

        if (intialSum == expectedSum)
            System.out.println("Both are equal");
        else
            System.out.println("Both are not equal");
    }

}
