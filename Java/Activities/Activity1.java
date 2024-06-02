

public class Activity1 {
    public static void main(String[] args) {

        Car car1 = new Car(4, 4);
        car1.displayCharacteristics();
        car1.accelarate();
        car1.brake();

        Car carName = new Car(2014,"black","Manual");
        System.out.println("=============");

        carName.displayCharacteristics();
        carName.accelarate();
        carName.brake();
    }
}
