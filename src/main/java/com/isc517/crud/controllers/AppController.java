package com.isc517.crud.controllers;

import com.isc517.crud.entities.Estudiante;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@Controller
public class AppController {

    public ArrayList<Estudiante> estudiantes;

    @Autowired
    public AppController(){
        super();
        estudiantes = new ArrayList<>();
        estudiantes.add(new Estudiante(20141130, "Tomas", "Molina", "8295722702"));
        estudiantes.add(new Estudiante(20011818, "Maria", "Miguelina", "8292220000"));
    }
    /**
     * http://localhost:8080/
     *
     * @param model
     * @return
     */
    @RequestMapping("/")
    public String getIndex(Model model) {
        model.addAttribute("estudiantes", estudiantes);
        model.addAttribute("cantidadEstudiantes", estudiantes.size());
        return "/index";
    }
}
