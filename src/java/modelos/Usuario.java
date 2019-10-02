/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

import java.util.ArrayList;

/**
 *
 * @author gutol
 */
public class Usuario {
    private String email;
    private String senha;
    private String nome;
    private static ArrayList<Usuario> lista = new ArrayList();

    public static boolean login(String email, String senha){
        boolean logado=false;
        
        for(Usuario user:lista){
            if(user.getEmail().equals(email) &&
               user.getSenha().equals(senha)){
                logado = true;
                break;
            }
        }
        
        return logado;
    }
    
    public static ArrayList<Usuario> getLista() {
        return lista;
    }

    public static void setLista(ArrayList<Usuario> lista) {
        Usuario.lista = lista;
    }        
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    
}
