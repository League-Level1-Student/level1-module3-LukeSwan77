package _01_intro_to_static;

public class Athlete {
	static int nextBibNumber = 1;
    static String raceLocation = "New York";
    static String raceStartTime = "9.00am";

    String name;
    int speed;
    int bibNumber;

    Athlete (String name, int speed){
        this.name = name;
        this.speed = speed;
        bibNumber = nextBibNumber;
        nextBibNumber++;
    }

    public static void main(String[] args) {
        Athlete jimbo = new Athlete("jimbo", 25);
        Athlete olie = new Athlete("olie", 1000);
        System.out.println(jimbo.name);
        System.out.println(jimbo.speed);
        System.out.println(jimbo.bibNumber);
        System.out.println(olie.name);
        System.out.println(olie.speed);
        System.out.println(olie.bibNumber);
    }
}
