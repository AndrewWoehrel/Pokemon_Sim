package controller;

import dao.PokemonDao;
import model.Pokemon;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class PokemonController {

    private PokemonDao dao;
    private List<Pokemon> pokemonList;

    public PokemonController(){
        pokemonList = new ArrayList<>();
    }
    @RequestMapping(path = "", method = RequestMethod.GET)
    public List<Pokemon> getPokemonList(){
        return pokemonList;
    }
    @RequestMapping(path = "{id}", method = RequestMethod.GET)
    public Pokemon getPokemonById(@PathVariable int pokemon_id_number){
        return dao.getPokemonById(pokemon_id_number);
    }
    @RequestMapping(path = "{name}", method = RequestMethod.GET)
    public Pokemon getPokemonByName(@PathVariable String pokemon_name){
        return dao.getPokemonByName(pokemon_name);
    }




}
