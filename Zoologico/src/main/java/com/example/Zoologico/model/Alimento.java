/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.Zoologico.model;

/**
 * Clase que representa la entidad Alimneto.
 * @author Valeria Ramírez Vacheron 
 * @author Eduardo Alfonso Reyes López 
 * @author Mario Andrés Rosales Peña 
 * @author Erick Iram García Velasco 
 * @author Bruno Fernando Ortiz Amaya
 */
public class Alimento {
    private String nombre;
    private String caducidad;
    private Integer cantidad;
    private Boolean refrigeracion;
    private Integer numProveedor;
    private String tipo;
    
    public Alimento() {
    
    }
    
    public Alimento(String nombre, String caducidad, Integer cantidad, 
            Boolean refrigeracion, Integer numProveedor, String tipo) {
        this.nombre = nombre;
        this.caducidad = caducidad;
        this.cantidad = cantidad;
        this.refrigeracion = refrigeracion;
        this.numProveedor = numProveedor;
        this.tipo = tipo;
    }
    
    public String getNombre() {
        return nombre;
    }   
        
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String getCaducidad() {
        return caducidad;
    }
    
    public void setCaducidad(String caducidad) {
        this.caducidad = caducidad;
    }
    
    public Integer getCantidad() {
        return cantidad;
    }
    
    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }
    
    public Boolean getRefrigeracion() {
        return refrigeracion;
    }
    
    public void setRefrigeracion(Boolean refrigeracion) {
        this.refrigeracion = refrigeracion;
    }
    
    public Integer getNumProveedor() {
        return numProveedor;
    }
    
    public void setNumProveedor(Integer numProveedor) {
        this.numProveedor = numProveedor;
    }
    
    public String getTipo() {
        return tipo;
    }
    
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
}
