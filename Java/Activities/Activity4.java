

import java.util.Arrays;

public class Activity4 {

    public static void main(String[] args) {
        // TODO Auto-generated method stub
        int[] initialArr = {4,6,2,2,1,3,5,7,8,15,17,20,16,20};
        System.out.println(Arrays.toString(SortArrAssOrder(initialArr)));

    }

    public static int[] SortArrAssOrder(int[] intialArray){
        int arrLength = intialArray.length;

        for(int i=0; i<arrLength;i++){
            for(int j=i+1; j<arrLength;j++){
                if (intialArray[i] > intialArray[j]) {
                    int temp = intialArray[i];
                    intialArray[i]=intialArray[j];
                    intialArray[j]= temp;
                }
            }
        }

        return intialArray;

    }

}
