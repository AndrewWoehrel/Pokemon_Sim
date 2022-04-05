package model;

public class Pokemon {
    private int pokemon_id_number;
    private String pokemon_name;
    private String pokemon_type;
    private float pokemon_hp;
    private float pokemon_attack;
    private int pokemon_speed;
    private String pokemon_move;
    private String pokemon_description;
    public float pokemon_current_hp;

    public Pokemon(){}

    public Pokemon(int pokemon_id_number, String pokemon_name, String pokemon_type, float pokemon_hp, float pokemon_attack, int pokemon_speed, String pokemon_move, String pokemon_description){
        this.pokemon_id_number = pokemon_id_number;
        this.pokemon_name = pokemon_name;
        this.pokemon_type = pokemon_type;
        this.pokemon_hp = pokemon_hp;
        this.pokemon_attack = pokemon_attack;
        this.pokemon_speed = pokemon_speed;
        this.pokemon_move = pokemon_move;
        this.pokemon_description = pokemon_description;
    }

    public float getPokemon_current_hp() {
        return pokemon_current_hp;
    }

    public void setPokemon_current_hp(float pokemon_current_hp) {
        this.pokemon_current_hp = pokemon_current_hp;
    }

    public String getPokemon_description() {
        return pokemon_description;
    }

    public void setPokemon_description(String pokemon_description) {
        this.pokemon_description = pokemon_description;
    }

    public int getPokemon_id_number() {
        return pokemon_id_number;
    }

    public void setPokemon_id_number(int pokemon_id_number) {
        this.pokemon_id_number = pokemon_id_number;
    }

    public String getPokemon_name() {
        return pokemon_name;
    }

    public void setPokemon_name(String pokemon_name) {
        this.pokemon_name = pokemon_name;
    }

    public String getPokemon_type() {
        return pokemon_type;
    }

    public void setPokemon_type(String pokemon_type) {
        this.pokemon_type = pokemon_type;
    }

    public float getPokemon_hp() {
        return pokemon_hp;
    }

    public void setPokemon_hp(float pokemon_hp) {
        this.pokemon_hp = pokemon_hp;
    }

    public float getPokemon_attack() {
        return pokemon_attack;
    }

    public void setPokemon_attack(float pokemon_attack) {
        this.pokemon_attack = pokemon_attack;
    }

    public int getPokemon_speed() {
        return pokemon_speed;
    }

    public void setPokemon_speed(int pokemon_speed) {
        this.pokemon_speed = pokemon_speed;
    }

    public String getPokemon_move() {
        return pokemon_move;
    }

    public void setPokemon_move(String pokemon_move) {
        this.pokemon_move = pokemon_move;
    }



}
