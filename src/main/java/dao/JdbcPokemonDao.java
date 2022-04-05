package dao;

import model.Pokemon;

import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import javax.sql.DataSource;

public class JdbcPokemonDao implements PokemonDao{

    private final JdbcTemplate jdbcTemplate;
    public JdbcPokemonDao(DataSource dataSource){

        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public List<Pokemon> getAllPokemon() {
        List<Pokemon> allPokemon = new ArrayList<>();
        String sql = "SELECT * FROM pokemon ORDER BY pokemon_id_number ;" ;
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while(results.next()){
            Pokemon pokemonResult = mapRowToPokemon(results);
            allPokemon.add(pokemonResult);
        }
        return allPokemon;
    }

    @Override
    public Pokemon getPokemonById(int pokemon_id_number) {
        Pokemon pokemon = null;
        String sql = "SELECT * FROM pokemon " +
                "WHERE pokemon_id_number = ? ";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, pokemon_id_number);
        while(results.next()){
            pokemon = mapRowToPokemon(results);
        } return pokemon;
    }

    @Override
    public Pokemon getPokemonByName(String pokemon_Name) {
        Pokemon pokemon = null;
        String sql = "SELECT * FROM pokemon " +
                "WHERE pokemon_name iLIKE '%?%';";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while(results.next()){
            pokemon = mapRowToPokemon(results);
        } return pokemon;
    }

    private Pokemon mapRowToPokemon(SqlRowSet result){
        Pokemon pokemon = new Pokemon();
        pokemon.setPokemon_id_number(result.getInt("pokemon_id_number"));
        pokemon.setPokemon_name(result.getString("pokemon_name"));
        pokemon.setPokemon_type(result.getString("pokemon_type"));
        pokemon.setPokemon_hp(result.getFloat("pokemon_hp"));
        pokemon.setPokemon_attack(result.getFloat("pokemon_attack"));
        pokemon.setPokemon_speed(result.getInt("pokemon_speed"));
        pokemon.setPokemon_move(result.getString("pokemon_move"));
        pokemon.setPokemon_description(result.getString("description"));
        return pokemon;
    }
}
