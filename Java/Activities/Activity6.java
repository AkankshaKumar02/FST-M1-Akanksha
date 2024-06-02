public class Activity6 {

    public static void main(String[] args) throws InterruptedException {
        // TODO Auto-generated method stub
        Plane plane = new Plane(10);
        plane.onboard("Ashu");
        plane.onboard("Yunay");
        plane.onboard("Akanksha");
        System.out.println("Flight take off time " + plane.takeOff());
        System.out.println(plane.getPassesngers());

        Thread.sleep(5000);
        plane.land();
        System.out.println(plane.getLastTimeLanded());
    }

}
