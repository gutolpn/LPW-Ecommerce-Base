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
public class Produto {
    private String descricao;
    private float preco;
    private boolean oferta;
    private static ArrayList<Produto> lista = new ArrayList();
    
    public String getDescricao(){
        return this.descricao;
    }
    
    public void setDescricao(String descricao){
        this.descricao = descricao;
    }

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }

    public static ArrayList<Produto> getLista() {
        return lista;
    }

    public static void setLista(ArrayList<Produto> lista) {
        Produto.lista = lista;
    }

    public boolean isOferta() {
        return oferta;
    }

    public void setOferta(boolean oferta) {
        this.oferta = oferta;
    }
        
    
}
