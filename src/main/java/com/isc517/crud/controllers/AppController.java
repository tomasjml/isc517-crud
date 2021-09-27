package com.isc517.crud.controllers;

import com.isc517.crud.entities.Estudiante;
import com.isc517.crud.repositories.EstudianteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class AppController {

    public EstudianteRepository estudianteRepository;
    public boolean editable;

    @Autowired
    public AppController(){
        super();
        this.estudianteRepository = new EstudianteRepository();
        this.editable = false;
    }

    @RequestMapping(value = "/estudiante/delete/{matricula}")
    public String deleteEstudiante(Model model, @PathVariable String matricula){
        estudianteRepository.deleteEstudiante(Integer.parseInt(matricula));

        model.addAttribute("estudiantes", estudianteRepository.getEstudiantes());
        model.addAttribute("cantidadEstudiantes", estudianteRepository.estudiantes.size());
        return "redirect:/";
    }

    @RequestMapping(value = "/estudiante/agregar", method = RequestMethod.POST)
    public String agregarEstudiante(Model model, @RequestParam Map<String, String> requestParams){
        estudianteRepository.addEstudiante(
                new Estudiante(
                        Integer.parseInt(requestParams.get("matricula")),
                        requestParams.get("nombre"),
                        requestParams.get("apellido"),
                        requestParams.get("telefono")
                )
        );

        model.addAttribute("estudiantes", estudianteRepository.getEstudiantes());
        model.addAttribute("cantidadEstudiantes", estudianteRepository.estudiantes.size());
        return "redirect:/";
    }

    @RequestMapping(value = "/estudiante/{matriculaPasada}", method = RequestMethod.POST)
    public String editarEstudiante(Model model, @PathVariable int matriculaPasada, @RequestParam Map<String, String> requestParams){
        estudianteRepository.putEstudiante(
                matriculaPasada,
                new Estudiante(
                Integer.parseInt(requestParams.get("matricula")),
                requestParams.get("nombre"),
                requestParams.get("apellido"),
                requestParams.get("telefono")
        ));
        model.addAttribute("estudiantes", estudianteRepository.getEstudiantes());
        model.addAttribute("cantidadEstudiantes", estudianteRepository.estudiantes.size());
        return "redirect:/";
    }

    /**
     * http://localhost:8081/
     *
     * @param model
     * @return
     */
    @RequestMapping("/")
    public String getIndex(Model model) {
        model.addAttribute("estudiantes", estudianteRepository.getEstudiantes());
        model.addAttribute("cantidadEstudiantes", estudianteRepository.estudiantes.size());
        return "/index";
    }
}
