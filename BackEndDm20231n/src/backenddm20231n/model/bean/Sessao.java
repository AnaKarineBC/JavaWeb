/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package backenddm20231n.model.bean;
/**
 *
 * @author Ana
 */
public class Sessao {
    private int id;
    private int idSala;
    private int idAnima;
    private String categoria;
    private Animacao animacao;
    private Sala sala;

    public Sessao(int id) {
        this.id = id;
    }
    
    public Sessao(int id, int idSala, int idAnima, String categoria) {
        this.id = id;
        this.idSala = idSala;
        this.idAnima = idAnima;
        this.categoria = categoria;
    }

    public Sessao(int idSala, int idAnima) {
        this.idSala = idSala;
        this.idAnima = idAnima;
    }

    public Sessao(String categoria) {
        this.categoria = categoria;
    }

    public Sessao(int idSala, int idAnima, String categoria) {
        this.idSala = idSala;
        this.idAnima = idAnima;
        this.categoria = categoria;
    }

    public Sessao(int id, int idSala, int idAnima) {
        this.id = id;
        this.idSala = idSala;
        this.idAnima = idAnima;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdSala() {
        return idSala;
    }

    public void setIdSala(int idSala) {
        this.idSala = idSala;
    }

    public int getIdAnima() {
        return idAnima;
    }

    public void setIdAnima(int idAnima) {
        this.idAnima = idAnima;
    }

    public Animacao getAnimacao() {
        return animacao;
    }

    public void setAnimacao(Animacao animacao) {
        this.animacao = animacao;
    }

    public Sala getSala() {
        return sala;
    }

    public void setSala(Sala sala) {
        this.sala = sala;
    }

    @Override
    public String toString() {
        return "Sessao " + "\nId: " + id + "\nIdSala:" + idSala + "\nIdAnima:" + idAnima + "\nCategoria: " + categoria ;
    }

    
    
    
}
