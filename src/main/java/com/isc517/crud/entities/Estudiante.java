package com.isc517.crud.entities;

import lombok.Data;
import lombok.NonNull;

@Data
public class Estudiante {
    @NonNull
    private int matricula;
    @NonNull
    private String nombre;
    @NonNull
    private String apellido;
    @NonNull
    private String telefono;
}
