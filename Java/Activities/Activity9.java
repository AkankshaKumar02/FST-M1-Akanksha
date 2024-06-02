import java.util.ArrayList;
import java.util.List;

public class Activity9 {
    public static void main(String[] args) {
        List<String> myList = new ArrayList<String>();
        myList.add("Red");
        myList.add("Blue");
        myList.add("White");
        myList.add("Yellow");
        myList.add("Green");

        System.out.println("Print All the Objects:");

        for(String s:myList){
            System.out.println(s);
        }

        System.out.println("3rd element in the list is: " + myList.get(2));
        System.out.println("list contains Yellow color :  " + myList.contains("Yellow"));
        System.out.println("Size of ArrayList: " + myList.size());

        myList.remove("Green");

        System.out.println("New Size of ArrayList: " + myList.size());
    }
}