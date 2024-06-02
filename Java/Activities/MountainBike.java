public class MountainBike extends Bicycle{
    int seatHeight;
    public MountainBike(int gears, int currentSpeed, int startHeight) {
        super(gears, currentSpeed);
        this.seatHeight = startHeight;
    }
    public void setHeight(int newValue) {
        seatHeight = newValue;
    }

    public String Bicycle(){
        return("No of gears are "+ gears + "\nSpeed of bicycle is " + currentSpeed
                + "\nseatHeight of bicycle is " + seatHeight);
    }

}
