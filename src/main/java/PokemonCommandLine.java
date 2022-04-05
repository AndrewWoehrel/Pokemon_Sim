
import dao.JdbcPokemonDao;
import dao.PokemonDao;

import model.Pokemon;
import org.apache.commons.dbcp2.BasicDataSource;

import javax.sql.*;
import java.util.*;

public class PokemonCommandLine {

    private final PokemonDao pokemonDao;
   private boolean didYouWin = false;
   private boolean isFightOver = false;



    public static void main(String[] args)  {
        // Class.forName("org.postgresql.Driver");
        BasicDataSource dataSource = new BasicDataSource();
        dataSource.setUrl("jdbc:postgresql://localhost:5432/pokedex");
        dataSource.setUsername("postgres");
        dataSource.setPassword("postgres1");

        //String url = "jdbc:postgresql://localhost:5432/pokedex?user=postgres&password=postgres1";
        //Connection connection = DriverManager.getConnection(url);


        PokemonCommandLine application = new PokemonCommandLine(dataSource);
        application.run();
    }

    public PokemonCommandLine(DataSource dataSource) {
        pokemonDao = new JdbcPokemonDao(dataSource);
    }

    private void nextTurn(Pokemon yourPokemon, Pokemon foePokemon) {
        float myPokemonCurrentHP = yourPokemon.getPokemon_current_hp();
        float foeCurrentHP = foePokemon.getPokemon_current_hp();

        if(myPokemonCurrentHP <= 0){
            didYouWin = false;
            isFightOver = true;
        }
        if(foeCurrentHP <= 0){
            didYouWin = true;
            isFightOver = true;
        }
            if (foePokemon.getPokemon_speed() >= yourPokemon.getPokemon_speed()) {
                myPokemonCurrentHP = myPokemonCurrentHP - foePokemon.getPokemon_attack();
                System.out.println("Foe " + foePokemon.getPokemon_name() + " used " + foePokemon.getPokemon_move() + "." + " It dealt " + foePokemon.getPokemon_attack() + " damage to " + yourPokemon.getPokemon_name() + "!");
                System.out.println("Your " + yourPokemon.getPokemon_name() + "'s HP is now " + myPokemonCurrentHP);
                foeCurrentHP = foeCurrentHP - yourPokemon.getPokemon_attack();

                if(myPokemonCurrentHP > 0){

                    System.out.println("Your " + yourPokemon.getPokemon_name() + " used " + yourPokemon.getPokemon_move() + "." + " It dealt " + yourPokemon.getPokemon_attack() + " damage to " + foePokemon.getPokemon_name() + "!");
                    System.out.println("Foe " + foePokemon.getPokemon_name() + "'s HP is now " + foeCurrentHP);
                }
                yourPokemon.setPokemon_current_hp(myPokemonCurrentHP);
                foePokemon.setPokemon_current_hp(foeCurrentHP);


                if((myPokemonCurrentHP > 0) && (foeCurrentHP > 0)){
                System.out.println("Select (A) to attack, or (R) to run away");
                }
            }
                if(myPokemonCurrentHP <= 0){
                isFightOver = true;
                didYouWin = false;
        }
            if (yourPokemon.getPokemon_speed() > foePokemon.getPokemon_speed()) {
                foeCurrentHP = foeCurrentHP - yourPokemon.getPokemon_attack();
                System.out.println("Your " + yourPokemon.getPokemon_name() + " used " + yourPokemon.getPokemon_move() + "." + " It dealt " + yourPokemon.getPokemon_attack() + " damage to " + foePokemon.getPokemon_name() + "!");
                System.out.println("Foe " + foePokemon.getPokemon_name() + "'s HP is now " + foeCurrentHP);
                myPokemonCurrentHP = myPokemonCurrentHP - foePokemon.getPokemon_attack();

                if(foeCurrentHP > 0) {

                    System.out.println("Foe " + foePokemon.getPokemon_name() + " used " + foePokemon.getPokemon_move() + "." + " It dealt " + foePokemon.getPokemon_attack() + " damage to " + yourPokemon.getPokemon_name() + "!");
                    System.out.println("Your " + yourPokemon.getPokemon_name() + "'s HP is now " + myPokemonCurrentHP);
                }
                yourPokemon.setPokemon_current_hp(myPokemonCurrentHP);
                foePokemon.setPokemon_current_hp(foeCurrentHP);
                if((myPokemonCurrentHP > 0) && (foeCurrentHP > 0)){
                    isFightOver = false;
                    System.out.println("Select (A) to attack, or (R) to run away");
                }if((myPokemonCurrentHP <= 0) || (foeCurrentHP <= 0)){
                    isFightOver = true;
                }
            }
        }

        public void printLogo(){
            System.out.println("-------------------------------------------------------------------\n\r" +
                    "                                  ,'\\\n" +
                    "    _.----.        ____         ,'  _\\   ___    ___     ____\n" +
                    "_,-'       `.     |    |  /`.   \\,-'    |   \\  /   |   |    \\  |`.\n" +
                    "\\      __    \\    '-.  | /   `.  ___    |    \\/    |   '-.   \\ |  |\n" +
                    " \\.    \\ \\   |  __  |  |/    ,','_  `.  |          | __  |    \\|  |\n" +
                    "   \\    \\/   /,' _`.|      ,' / / / /   |          ,' _`.|     |  |\n" +
                    "    \\     ,-'/  /   \\    ,'   | \\/ / ,`.|         /  /   \\  |     |\n" +
                    "     \\    \\ |   \\_/  |   `-.  \\    `'  /|  |    ||   \\_/  | |\\    |\n" +
                    "      \\    \\ \\      /       `-.`.___,-' |  |\\  /| \\      /  | |   |\n" +
                    "       \\    \\ `.__,'|  |`-._    `|      |__| \\/ |  `.__,'|  | |   |\n" +
                    "        \\_.-'       |__|    `-._ |              '-.|     '-.| |   |\n" +
                    "                                `'                            '-._|");
        }

        private void printAllPokemon(){
            List<Pokemon> allPokemon;
            allPokemon = pokemonDao.getAllPokemon();
            for (Pokemon pokemon : allPokemon) {
                System.out.println(pokemon.getPokemon_id_number() + " " + pokemon.getPokemon_name());
            }
        }
    private void battle(Pokemon chosenPokemon, Pokemon chosenFoePokemon){
        Scanner scanner = new Scanner(System.in);
        chosenPokemon.setPokemon_current_hp(chosenPokemon.getPokemon_hp());
        chosenFoePokemon.setPokemon_current_hp(chosenFoePokemon.getPokemon_hp());
        float myPokemonCurrentHP = chosenPokemon.getPokemon_current_hp();
        float foeCurrentHP = chosenFoePokemon.getPokemon_current_hp();
        isFightOver = false;
        System.out.println("------------------------------------------------------------");
        System.out.println("You sent out " + chosenPokemon.getPokemon_name() + "! Your foe sent out " + chosenFoePokemon.getPokemon_name() + "! The fight begins. Type (A) to attack, type (R) to run away.");
        while (!isFightOver) {
            try {
                 myPokemonCurrentHP = myPokemonCurrentHP - chosenFoePokemon.getPokemon_attack();
                 foeCurrentHP = foeCurrentHP - chosenPokemon.getPokemon_attack();
                 scanner.reset();
                String attackInput = scanner.next();

                if (attackInput.startsWith("A") || attackInput.startsWith("a")) {
                    if (foeCurrentHP <= 0) {
                        didYouWin = true;
                        isFightOver = true;
                    }
                    else if (myPokemonCurrentHP <= 0) {
                        didYouWin = false;
                        isFightOver = true;
                    }
                    nextTurn(chosenPokemon, chosenFoePokemon);
                }  if(attackInput.startsWith("R") || attackInput.startsWith("r")){
                    System.out.println("You got away safely!");
                    break;
                }
            } catch (Exception e) {
            }
        }
        if(didYouWin){
            System.out.println(chosenFoePokemon.getPokemon_name() + " fainted!");
            System.out.println("Congratulations! Your Pokemon, " + chosenPokemon.getPokemon_name() + " has won the match! You're a Pokemon master!");
        }
        else {
            if(isFightOver){
                System.out.println(chosenPokemon.getPokemon_name() + " fainted! You blacked out! Sorry, you lost the match.");
            } else
            System.out.println("Sorry, you lost the match.");
        }
    }
    private void run() {
        Scanner scanner = new Scanner(System.in);
        printLogo();
        boolean isRunning;
        while (isRunning = true) {
            isFightOver = false;
            didYouWin = false;
            System.out.println("Welcome to Pokemon Battle Arena! Please select an option from the menu:\r\n" +
                    "(1) Start a new Pokemon Battle\r\n" +
                    "(2) Run away");
            String selection = scanner.next();
            if(selection.equalsIgnoreCase("All150")){
                printAllPokemon();
                selection = scanner.next();
            }
            if ((!Objects.equals(selection, "1")) && (!Objects.equals(selection, "2"))){
                try {
                } catch (Exception e){
                }
            }
            if (selection.equals("1")) {
                List<Pokemon> allPokemon;
                allPokemon = pokemonDao.getAllPokemon();
                printAllPokemon();
                System.out.println("To the left of the Pokemon's name is their ID number. Please enter the ID number of chosen Pokemon. 1 - 150. \r\nTo choose a random Pokemon, enter (Random1) \r\n>>>");
                String chosenID = scanner.next();
                if(chosenID.equalsIgnoreCase("All150")){
                    printAllPokemon();
                    chosenID = scanner.next();
                }
                if(chosenID.equalsIgnoreCase("Random1")){
                    Random random = new Random();
                    int upperbound = 151;
                    int int_random = random.nextInt(upperbound);
                    chosenID = String.valueOf(int_random);
                }
                while ((!(chosenID.contains("0")) && (!(chosenID.contains("1")) && (!(chosenID.contains("2")) && (!(chosenID.contains("3")) && (!(chosenID.contains("4")) && (!(chosenID.contains("5")) && (!(chosenID.contains("6")) && (!(chosenID.contains("7")) && (!(chosenID.contains("8")) && (!(chosenID.contains("9"))))))))))))){
                    System.out.println("Please enter a numeric value between 1 - 150 to select a Pokemon by its ID number! To see the list of Pokemon again, enter (All150)\r\n>>>");
                    chosenID = scanner.next();
                    if(chosenID.equalsIgnoreCase("Random1")){
                        Random random = new Random();
                        int upperbound = 151;
                        int int_random = random.nextInt(upperbound);
                        chosenID = String.valueOf(int_random);
                    }
                    if(chosenID.equalsIgnoreCase("All150")){
                        printAllPokemon();
                        chosenID = scanner.next();
                    }
                }
                for (Pokemon pokemon : allPokemon) {
                        if (pokemon.getPokemon_id_number() == (Integer.parseInt(chosenID))) {
                            Pokemon newPokemon = pokemonDao.getPokemonById(Integer.parseInt(chosenID));
                            System.out.println("You chose " + newPokemon.getPokemon_name() + ", the " + newPokemon.getPokemon_description() + ".. This Pokemon is of the " + newPokemon.getPokemon_type() + " type. This Pokemon's ID number is " + newPokemon.getPokemon_id_number() + ".  Do you want to choose this Pokemon?");
                        }
                }
                System.out.println("Please enter (Y) to select " + pokemonDao.getPokemonById(Integer.parseInt(chosenID)).getPokemon_name() + ", or enter (N) to cancel.");
                String confirmationInput = scanner.next();
                if (confirmationInput.startsWith("Y") || confirmationInput.startsWith("y")) {
                    Pokemon chosenPokemon = new Pokemon();
                    chosenPokemon = pokemonDao.getPokemonById(Integer.parseInt(chosenID));
                    System.out.println(chosenPokemon.getPokemon_name() + ", I choose you!");
                    System.out.println("------------------------------------------------------------");
                    System.out.println("Now, please select the Pokemon you'd like your Pokemon to fight!! \r\nTo see the list of Pokemon again, enter (All150)\r\nTo select a random Pokemon, enter (Random1) \r\n>>>");
                    scanner.reset();
                    String chosenFoeId = scanner.next();
                    if(chosenFoeId.equalsIgnoreCase("All150")){
                        printAllPokemon();
                        chosenFoeId = scanner.next();
                    }
                    if(chosenFoeId.equalsIgnoreCase("Random1")){
                        Random random = new Random();
                        int upperbound = 151;
                        int int_random = random.nextInt(upperbound);
                        chosenFoeId = String.valueOf(int_random);
                    }
                    while ((!(chosenFoeId.contains("0")) && (!(chosenFoeId.contains("1")) && (!(chosenFoeId.contains("2")) && (!(chosenFoeId.contains("3")) && (!(chosenFoeId.contains("4")) && (!(chosenFoeId.contains("5")) && (!(chosenFoeId.contains("6")) && (!(chosenFoeId.contains("7")) && (!(chosenFoeId.contains("8")) && (!(chosenFoeId.contains("9")) ))))))))))){
                        System.out.println("Please enter a numeric value between 1 - 150 to select a foe Pokemon by its ID number! To see the list of Pokemon again, enter (All150)");

                        chosenFoeId = scanner.next();
                        if(chosenFoeId.equalsIgnoreCase("Random1")){
                            Random random = new Random();
                            int upperbound = 151;
                            int int_random = random.nextInt(upperbound);
                            chosenFoeId = String.valueOf(int_random);
                        }
                        if(chosenFoeId.equalsIgnoreCase("All150")){
                            printAllPokemon();
                            chosenFoeId = scanner.next();
                        }
                    }
                    for (Pokemon pokemon : allPokemon) {
                        if (pokemon.getPokemon_id_number() == Integer.parseInt(chosenFoeId)) {
                            Pokemon newFoePokemon = pokemonDao.getPokemonById(Integer.parseInt(chosenFoeId));
                            System.out.println("Your foe is " + newFoePokemon.getPokemon_name() + ", the " + newFoePokemon.getPokemon_description() + ".. This Pokemon is of the " + newFoePokemon.getPokemon_type() + " type. This Pokemon's ID number is " + newFoePokemon.getPokemon_id_number() + ". Do you want your Pokemon to fight this Pokemon??");
                            System.out.println("Please enter (Y) to challenge " + newFoePokemon.getPokemon_name() + ", or enter (N) to cancel.");
                            String confirmationFoeInput = scanner.next();
                            if (confirmationFoeInput.startsWith("Y") || confirmationFoeInput.startsWith("y")) {
                                if(Integer.parseInt(chosenID) == 132){
                                    chosenPokemon = pokemonDao.getPokemonById(Integer.parseInt(chosenFoeId));
                                    System.out.println("Ditto used Transform! Ditto changed into " + newFoePokemon.getPokemon_name() + ".");
                                }
                                if(Integer.parseInt(chosenFoeId) == 132){
                                    newFoePokemon = pokemonDao.getPokemonById(Integer.parseInt(chosenID));
                                    System.out.println("Foe Ditto used Transform! Ditto changed into " + chosenPokemon.getPokemon_name() + ".");
                                }else
                                newFoePokemon = pokemonDao.getPokemonById(Integer.parseInt(chosenFoeId));
                                System.out.println("Foe sent out " + newFoePokemon.getPokemon_name() + ". Time to fight!");
                                //weaknesses
                                if((chosenPokemon.getPokemon_type().contains("Electric")) && (newFoePokemon.getPokemon_type().contains("Ground"))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 2);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Electric")) && (chosenPokemon.getPokemon_type().contains("Ground"))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 2);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Dragon")) && (newFoePokemon.getPokemon_type().contains("Ice"))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 2);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Dragon")) && (chosenPokemon.getPokemon_type().contains("Ice"))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 2);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Bug")) && ((newFoePokemon.getPokemon_type().contains("Fire")) || (newFoePokemon.getPokemon_type().contains("Flying")) || (newFoePokemon.getPokemon_type().contains("Ice")) || (newFoePokemon.getPokemon_type().contains("Rock")))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 2);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Bug")) && ((chosenPokemon.getPokemon_type().contains("Fire")) || (chosenPokemon.getPokemon_type().contains("Flying")) || (chosenPokemon.getPokemon_type().contains("Ice")) || (chosenPokemon.getPokemon_type().contains("Rock")))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 2);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Normal")) && (newFoePokemon.getPokemon_type().contains("Fighting"))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 2);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Normal")) && (chosenPokemon.getPokemon_type().contains("Fighting"))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 2);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Water")) && ((newFoePokemon.getPokemon_type().contains("Grass")) || (newFoePokemon.getPokemon_type().contains("Electric")))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 2);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Water")) && ((chosenPokemon.getPokemon_type().contains("Grass")) || (chosenPokemon.getPokemon_type().contains("Electric")))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 2);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Fire")) && ((newFoePokemon.getPokemon_type().contains("Water")) || (newFoePokemon.getPokemon_type().contains("Ground")) || (newFoePokemon.getPokemon_type().contains("Rock")))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 2);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Fire")) && ((chosenPokemon.getPokemon_type().contains("Water")) || (chosenPokemon.getPokemon_type().contains("Ground")) || (chosenPokemon.getPokemon_type().contains("Rock")))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 2);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Grass")) && ((newFoePokemon.getPokemon_type().contains("Fire")) || (newFoePokemon.getPokemon_type().contains("Bug")) || (newFoePokemon.getPokemon_type().contains("Flying")) || (newFoePokemon.getPokemon_type().contains("Ice")) || (newFoePokemon.getPokemon_type().contains("Poison")))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 2);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Grass")) && ((chosenPokemon.getPokemon_type().contains("Fire")) || (chosenPokemon.getPokemon_type().contains("Bug")) || (chosenPokemon.getPokemon_type().contains("Flying")) || (chosenPokemon.getPokemon_type().contains("Ice")) || (chosenPokemon.getPokemon_type().contains("Poison")))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 2);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Ground")) && ((newFoePokemon.getPokemon_type().contains("Water")) || (newFoePokemon.getPokemon_type().contains("Grass")) || (newFoePokemon.getPokemon_type().contains("Ice")))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 2);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Ground")) && ((chosenPokemon.getPokemon_type().contains("Water")) || (chosenPokemon.getPokemon_type().contains("Grass")) || (chosenPokemon.getPokemon_type().contains("Ice")))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 2);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Rock")) && ((newFoePokemon.getPokemon_type().contains("Water")) || (newFoePokemon.getPokemon_type().contains("Grass")) || (newFoePokemon.getPokemon_type().contains("Ice")) || (newFoePokemon.getPokemon_type().contains("Ground")))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 2);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Rock")) && ((chosenPokemon.getPokemon_type().contains("Water")) || (chosenPokemon.getPokemon_type().contains("Grass")) || (chosenPokemon.getPokemon_type().contains("Ice")) || (chosenPokemon.getPokemon_type().contains("Ground")))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 2);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Poison")) && ((newFoePokemon.getPokemon_type().contains("Ground")) || (newFoePokemon.getPokemon_type().contains("Psychic")))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 2);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Poison")) && ((chosenPokemon.getPokemon_type().contains("Ground")) || (chosenPokemon.getPokemon_type().contains("Psychic")))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 2);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Flying")) && ((newFoePokemon.getPokemon_type().contains("Electric")) || (newFoePokemon.getPokemon_type().contains("Rock")) || (newFoePokemon.getPokemon_type().contains("Ice")))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 2);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Flying")) && ((chosenPokemon.getPokemon_type().contains("Electric")) || (chosenPokemon.getPokemon_type().contains("Rock")) || (chosenPokemon.getPokemon_type().contains("Ice")))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 2);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Psychic")) && ((newFoePokemon.getPokemon_type().contains("Bug")) || (newFoePokemon.getPokemon_type().contains("Ghost")))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 2);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Psychic")) && ((chosenPokemon.getPokemon_type().contains("Bug")) || (chosenPokemon.getPokemon_type().contains("Ghost")))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 2);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Fighting")) && ((newFoePokemon.getPokemon_type().contains("Psychic")) || (newFoePokemon.getPokemon_type().contains("Flying")))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 2);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Fighting")) && ((chosenPokemon.getPokemon_type().contains("Psychic")) || (chosenPokemon.getPokemon_type().contains("Flying")))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 2);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Ice")) && ((newFoePokemon.getPokemon_type().contains("Fighting")) || (newFoePokemon.getPokemon_type().contains("Fire")) || (newFoePokemon.getPokemon_type().contains("Rock")))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 2);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Ice")) && ((chosenPokemon.getPokemon_type().contains("Fighting")) || (chosenPokemon.getPokemon_type().contains("Fire")) || (chosenPokemon.getPokemon_type().contains("Rock")))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 2);
                                }
                                //resistances
                                if((chosenPokemon.getPokemon_type().contains("Rock")) && ((newFoePokemon.getPokemon_type().contains("Normal")))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 0.5f);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Rock")) && ((chosenPokemon.getPokemon_type().contains("Normal")))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 0.5f);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Ghost")) && ((newFoePokemon.getPokemon_type().contains("Normal")))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 0.5f);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Ghost")) && ((chosenPokemon.getPokemon_type().contains("Normal")))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 0.5f);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Normal")) && ((newFoePokemon.getPokemon_type().contains("Ghost")))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 0.5f);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Normal")) && ((chosenPokemon.getPokemon_type().contains("Ghost")))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 0.5f);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Flying")) && ((newFoePokemon.getPokemon_type().contains("Ground")))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 0.5f);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Flying")) && ((chosenPokemon.getPokemon_type().contains("Ground")))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 0.5f);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Grass")) && ((newFoePokemon.getPokemon_type().contains("Electric")) || ((newFoePokemon.getPokemon_type().contains("Water"))))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 0.5f);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Grass")) && ((chosenPokemon.getPokemon_type().contains("Electric")) || ((chosenPokemon.getPokemon_type().contains("Water"))))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 0.5f);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Water")) && ((newFoePokemon.getPokemon_type().contains("Ice")) || (newFoePokemon.getPokemon_type().contains("Fire")))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 0.5f);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Water")) && ((chosenPokemon.getPokemon_type().contains("Ice")) || (chosenPokemon.getPokemon_type().contains("Fire")))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 0.5f);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Fire")) && ((newFoePokemon.getPokemon_type().contains("Grass")) || (newFoePokemon.getPokemon_type().contains("Bug")) || (newFoePokemon.getPokemon_type().contains("Fire")) || (newFoePokemon.getPokemon_type().contains("Ice")))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 0.5f);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Fire")) && ((chosenPokemon.getPokemon_type().contains("Grass")) || (chosenPokemon.getPokemon_type().contains("Bug")) || (chosenPokemon.getPokemon_type().contains("Fire")) || (chosenPokemon.getPokemon_type().contains("Ice")) )){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 0.5f);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Poison")) && ((newFoePokemon.getPokemon_type().contains("Poison")) || (newFoePokemon.getPokemon_type().contains("Grass")) || (newFoePokemon.getPokemon_type().contains("Rock")) || (newFoePokemon.getPokemon_type().contains("Fighting")) || (newFoePokemon.getPokemon_type().contains("Bug")))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 0.5f);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Poison")) && ((chosenPokemon.getPokemon_type().contains("Poison")) || (chosenPokemon.getPokemon_type().contains("Grass")) || (chosenPokemon.getPokemon_type().contains("Rock")) || (chosenPokemon.getPokemon_type().contains("Fighting")) || (chosenPokemon.getPokemon_type().contains("Bug")))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 0.5f);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Psychic")) && ((newFoePokemon.getPokemon_type().contains("Fighting")) || (newFoePokemon.getPokemon_type().contains("Psychic")))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 0.5f);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Psychic")) && ((chosenPokemon.getPokemon_type().contains("Fighting")) || (chosenPokemon.getPokemon_type().contains("Psychic")))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 0.5f);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Ground")) && ((newFoePokemon.getPokemon_type().contains("Poison")) || (newFoePokemon.getPokemon_type().contains("Fire")) || (newFoePokemon.getPokemon_type().contains("Electric")))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 0.5f);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Ground")) && ((chosenPokemon.getPokemon_type().contains("Poison")) || (chosenPokemon.getPokemon_type().contains("Fire")) || (chosenPokemon.getPokemon_type().contains("Electric")))) {
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 0.5f);
                                }
                                if((chosenPokemon.getPokemon_type().contains("Dragon")) && ((newFoePokemon.getPokemon_type().contains("Grass")) || (newFoePokemon.getPokemon_type().contains("Electric")) || (newFoePokemon.getPokemon_type().contains("Water")) || (newFoePokemon.getPokemon_type().contains("Fire")))){
                                    newFoePokemon.setPokemon_attack(newFoePokemon.getPokemon_attack() * 0.5f);
                                }
                                if((newFoePokemon.getPokemon_type().contains("Dragon")) && ((chosenPokemon.getPokemon_type().contains("Grass")) || (chosenPokemon.getPokemon_type().contains("Electric")) || (chosenPokemon.getPokemon_type().contains("Water")) || (chosenPokemon.getPokemon_type().contains("Fire")))){
                                    chosenPokemon.setPokemon_attack(chosenPokemon.getPokemon_attack() * 0.5f);
                                }
                                battle(chosenPokemon, newFoePokemon);
                            } if (confirmationFoeInput.startsWith("N") || confirmationFoeInput.startsWith("n")) {

                                try {
                                } catch (Exception e) {

                                }
                            }

                        }
                    }

                }
                if (confirmationInput.startsWith("N") || confirmationInput.startsWith("n")) {

                    try {
                    } catch (Exception e) {

                    }
                }
            } if (selection.equals("2")) {
                System.out.println("You got away safely!");
            }
        }
    }

}






















