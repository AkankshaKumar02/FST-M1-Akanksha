import java.util.HashSet;

public class Activity10 {
    public static void main(String[] args) {
        HashSet<String> hs = new HashSet<String>();

        hs.add("Apple");
        hs.add("Mango");
        hs.add("Orange");
        hs.add("Banana");
        hs.add("Papapya");
        hs.add("Grapes");

        //Print HashSet
        System.out.println("Original HashSet: " + hs);
        //Print size of HashSet
        System.out.println("Size of HashSet: " + hs.size());

        //Remove element
        System.out.println("Removing Mango from HashSet: " + hs.remove("Mango"));
        //Remove element that is not present
        if(hs.remove("Licchi")) {
            System.out.println("Licchi removed from the HashSet");
        } else {
            System.out.println("Licchi is not present in the HashSet");
        }

        //Search for element
        System.out.println("Checking if Banana is present: " + hs.contains("Banana"));
        //Print updated HashSet
        System.out.println("Updated HashSet: " + hs);
    }
}