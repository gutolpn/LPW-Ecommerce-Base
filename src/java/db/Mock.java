/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.util.ArrayList;
import modelos.Produto;
import modelos.Usuario;

/**
 *
 * @author gutol
 */
public class Mock {
       
    
    public static void makeMock(){
        createUsers();
        createProducts();
    }
    
    private static void createUsers(){
        ArrayList<Usuario> lista;
        
        if(Usuario.getLista().isEmpty()){
            lista = Usuario.getLista();
            
            Usuario admin = new Usuario();
            admin.setEmail("admin@ifpr.edu.br");
            admin.setSenha("admin");
            admin.setNome("Administrador");
            lista.add(admin);
            
            Usuario gerente = new Usuario();
            gerente.setEmail("gerente@ifpr.edu.br");
            gerente.setSenha("123");
            gerente.setNome("Fulano de Tal");
            lista.add(gerente);
        }
        
    }
    
    private static void createProducts(){
        ArrayList<Produto> lista; 
        
        //só cria produtos com lista vazia
        if(Produto.getLista().isEmpty()){
            lista = Produto.getLista();
            
            Produto caneta = new Produto();
            caneta.setDescricao("Caneta Bic");
            caneta.setPreco(1.5f);
            caneta.setOferta(true);
            lista.add(caneta);

            Produto caderno = new Produto();
            caderno.setDescricao("Caderno");
            caderno.setPreco(5.5f);
            caderno.setOferta(true);
            lista.add(caderno);
            
            Produto caneca = new Produto();
            caneca.setDescricao("Caneca");
            caneca.setPreco(10.0f);
            caneca.setOferta(false);
            lista.add(caneca);
                        
            Produto lapis = new Produto();
            lapis.setDescricao("Lapis");
            lapis.setPreco(1.0f);
            lapis.setOferta(false);
            lista.add(lapis);
            
            Produto borracha = new Produto();
            borracha.setDescricao("Borracha");
            borracha.setPreco(1.5f);
            borracha.setOferta(false);
            lista.add(borracha);
                        
            Produto sulfite = new Produto();
            sulfite.setDescricao("Folha Sulfite");
            sulfite.setPreco(5.0f);
            sulfite.setOferta(true);
            lista.add(sulfite);
        }        
    }
    
}
