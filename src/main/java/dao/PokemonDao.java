package dao;

import model.Pokemon;

import java.util.ArrayList;
import java.util.List;


public interface PokemonDao {
    List<Pokemon> getAllPokemon();
    Pokemon getPokemonById(int pokemon_id_number);
    Pokemon getPokemonByName(String pokemon_name);

}
