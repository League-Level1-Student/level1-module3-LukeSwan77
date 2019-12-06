package _05_netflix;

public class NetFlixRunner {
public static void main(String[] args) {
	NetflixQueue queue = new NetflixQueue();
	Movie BabyDriver = new Movie("Baby Driver", 9);
	Movie Mid80s = new Movie("Mid 80s", 5);
	Movie theSearch = new Movie("The Search for Hanibal Chin", 7);
	Movie Transcendence = new Movie("Transcendents", 6);
	Movie RickyBobey = new Movie("Taladega Knights: The Balad of Ricky Bobey", 8);
	BabyDriver.getTicketPrice();
	queue.addMovie(RickyBobey);
	queue.addMovie(Transcendence);
	queue.addMovie(theSearch);
	queue.addMovie(Mid80s);
	queue.addMovie(BabyDriver);
	queue.printMovies();
	queue.sortMoviesByRating();
	System.out.println("The best movie is " + queue.getMovie(0));
	System.out.println("The second best movie is " + queue.getMovie(1));
}
}
