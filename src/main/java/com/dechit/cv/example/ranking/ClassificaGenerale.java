package com.dechit.cv.example.ranking;

import com.dechit.cv.example.user.Utente;

import javax.persistence.*;

@org.hibernate.annotations.NamedQueries({
        @org.hibernate.annotations.NamedQuery(
                name= "ClassificaGenerale.getRankingByNationQuery",
                query = "FROM ClassificaGenerale WHERE nazione = :naz",
                timeout = 1
        ),
        @org.hibernate.annotations.NamedQuery(
                name= "ClassificaGenerale.getAllRankingQuery",
                query= "FROM ClassificaGenerale ",
                timeout = 1
        ),
        @org.hibernate.annotations.NamedQuery(
                name="ClassificaGenerale.getRankingByTypeQuery",
                query= "FROM ClassificaGenerale WHERE tipo = :tipo",
                timeout = 1
        )
})

@Entity
@Table(name = "classificagenerale")
public class ClassificaGenerale {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;

    @ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.LAZY)
    @JoinColumn(name="nickUtente", referencedColumnName = "nickUtente")
    private Utente utente;

    @Column(name = "nazione")
    private String nazione;

    @Column(name="punteggio")
    private Integer punteggio;

    @Column(name = "tipo")
    private String tipoDiGioco;


    public ClassificaGenerale() {
        // TODO Auto-generated constructor stub
    }

    public ClassificaGenerale(Utente utente, String nazione, Integer punteggio,
                              String tipoDiGioco) {
        this.utente = utente;
        this.nazione = nazione;
        this.punteggio = punteggio;
        this.tipoDiGioco = tipoDiGioco;
    }

    public String getNazione() {
        return nazione;
    }

    public void setNazione(String nazione) {
        this.nazione = nazione;
    }

    public Utente getUtente() {
        return utente;
    }

    public void setUtente(Utente utente) {
        this.utente = utente;
    }

    public Integer getPunteggio() {
        return punteggio;
    }

    public void setPunteggio(Integer punteggio) {
        this.punteggio = punteggio;
    }

    public String getTipoDiGioco() {
        return tipoDiGioco;
    }

    public void setTipoDiGioco(String tipoDiGioco) {
        this.tipoDiGioco = tipoDiGioco;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "ClassificaGenerale{" +
                "id=" + id +
                ", utente=" + utente.getNickUtente() +
                ", nazione=" + nazione +
                ", punteggio=" + punteggio +
                ", tipoDiGioco='" + tipoDiGioco + '\'' +
                '}';
    }
}
