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
    private Integer idInsumo;
    private String nombre;
    private java.sql.Date caducidad;
    private Integer cantidad;
    private Boolean refrigeracion;
    private String tipo;
    
    public Alimento() {
    
    }
    
    public Alimento(Integer idInsumo,String nombre, java.sql.Date caducidad, 
            Integer cantidad, Boolean refrigeracion, String tipo) {
        this.idInsumo = idInsumo;
        this.nombre = nombre;
        this.caducidad = caducidad;
        this.cantidad = cantidad;
        this.refrigeracion = refrigeracion;
        this.tipo = tipo;
    }
    
    /**
     * Metodo que regesa el ID del alimento
     * @return ID del alimento
     */
    public Integer getIdInsumo() {
        return idInsumo;
    }
    
    /**
    * Metodo que asigna un nuevo ID del alimento
    * @param idInsumo - nuevo ID
    */
    public void setIdInsumo(Integer idInsumo) {
        this.idInsumo = idInsumo;
    }
    
    /**
     * Metodo que regresa el nombre del alimento
     * @return nombre del alimento
     */
    public String getNombre() {
        return nombre;
    }   
        
    /**
     * Metodo que asigna un nuevo nombre al alimento
     * @param nombre - nuevo nombre 
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    /**
     * Metodo que regresa la fecha de caducidad del alimento
     * @return caducidad de la medicina
     */
    public java.sql.Date getCaducidad() {
        return caducidad;
    }
    
    /**
     * Metodo que asigna una nueva fecha de caducidad del alimento
     * @param caducidad - nueva fecha de caducidad
     */
    public void setCaducidad(java.sql.Date caducidad) {
        this.caducidad = caducidad;
    }
    
    /**
     * Metodo que regresa la cantidad de alimento
     * @return cantidad de medicina
     */
    public Integer getCantidad() {
        return cantidad;
    }
    
    /**
     * Metodo que asigna una nueva cantidad del alimento
     * @param cantidad - nueva cantidad
     */
    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }
    
    /**
     * Metodo que regresa la refrigeracion del alimento
     * @return refrigeracion de medicina
     */
    public Boolean getRefrigeracion() {
        return refrigeracion;
    }
    
    /**
     * Metodo que asigna una nueva refrigeracion del alimento
     * @param refrigeracion - nueva refrigeracion
     */
    public void setRefrigeracion(Boolean refrigeracion) {
        this.refrigeracion = refrigeracion;
    }
    
    /**
     * Metodo que regresa el tipo del alimento
     * @return tipo de medicina
     */
    public String getTipo() {
        return tipo;
    }
    
    /**
     * Metodo que asigna un nuevo tipo al alimento
     * @param tipo - nuevo tipo
     */
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
}
