package com.isc517.crud.repositories;

import com.isc517.crud.entities.Estudiante;
import lombok.Data;
import lombok.NonNull;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Optional;

@Data
public class EstudianteRepository {
    public ArrayList<Estudiante> estudiantes;

    public EstudianteRepository() {
        estudiantes = new ArrayList<>();
        estudiantes.add(new Estudiante(20141130, "Tomas", "Molina", "8295722702"));
        estudiantes.add(new Estudiante(20011818, "Maria", "Miguelina", "8292220000"));
    }

    public Optional<Estudiante> findEstudiante(int matricula) {
        Estudiante foundEstudiante = null;
        for(Estudiante estudiante : estudiantes) {
            if(estudiante.getMatricula() == matricula){
                foundEstudiante = estudiante;
            }
        };
        return Optional.of(foundEstudiante);
    }

    public void deleteEstudiante(int matricula){
        estudiantes.remove(findEstudiante(matricula).get());
    }

    public void addEstudiante(Estudiante estudiante){
        estudiantes.add(estudiante);
    }

    public void putEstudiante(int matriculaPasada, Estudiante nuevoEstudiante){
        estudiantes.remove(findEstudiante(matriculaPasada));
        estudiantes.add(nuevoEstudiante);
    }


}
