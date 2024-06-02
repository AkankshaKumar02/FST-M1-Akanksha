public class Car extends Activity1{
    String color;
    String transmission;
    int make;
    int tyres;
    int doors;

    Car(int tyres,int doors){
        this.tyres =tyres ;
        this.doors = doors ;
    }

    public Car(int make, String color, String transmission) {
        this.make = make;
        this.color = color;
        this.transmission = transmission;
    }

    public void displayCharacteristics(){

        System.out.println(color);
        System.out.println(transmission);
        System.out.println(make);
        System.out.println(tyres);
        System.out.println(doors);
    }

    public void accelarate() {
        System.out.println("Car is moving forward.");
    }

    public void brake() {
        System.out.println("Car has stopped.");
    }
}
