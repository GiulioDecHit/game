package com.dechit.cv.example.controller;

import com.dechit.cv.example.match.Partita;
import com.dechit.cv.example.ranking.ClassificaGenerale;
import com.dechit.cv.example.service.MatchService;
import com.dechit.cv.example.service.RankingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MatchController {
    @Autowired(required = true)
    private MatchService matchService;


    public void setMatchService(MatchService matchService) {
        this.matchService = matchService;
    }

    @RequestMapping(value = "nuovoGioco")
    public String newGame(Model model) {
        model.addAttribute("partita", new Partita());
        return "newGame";
    }

    @RequestMapping(value = "endGame")
    public String endGame(@RequestParam("partita") Partita partita) {
        this.matchService.addMatch(partita);
        RankingService rankingService = null;
                rankingService.addRanked(new ClassificaGenerale(partita.getUtente(), partita.getUtente().getPaese()
                                                                , partita.getPunteggio(), "badware"));
        return "ranking";
    }

}
