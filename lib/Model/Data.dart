class Countries {
  List<Entry> countries = [
    Entry(country: "Afghanistan", flagURL: "https://restcountries.eu/data/afg.svg", capital: "Kabul"),
    Entry(country: "Aland Islands", flagURL: "https://restcountries.eu/data/ala.svg", capital: "Mariehamn"),
    Entry(country: "Albania", flagURL: "https://restcountries.eu/data/alb.svg", capital: "Tirana"),
    Entry(country: "Algeria", flagURL: "https://restcountries.eu/data/dza.svg", capital: "Algiers"),
  ];
}

class Entry {
  String country;
  String flagURL;
  String capital;

  Entry({
    this.country,
    this.flagURL,
    this.capital});
}