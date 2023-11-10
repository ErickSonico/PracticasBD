/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.Zoologico.model;

/**
 * Clase que repredenta la entidad Medicina
 * @author Valeria Ramírez Vacheron 
 * @author Eduardo Alfonso Reyes López 
 * @author Mario Andrés Rosales Peña 
 * @author Erick Iram García Velasco 
 * @author Bruno Fernando Ortiz Amaya
 */
public class Medicina {
    private Integer idInsumo
    private String nombre;
    private String caducidad;
    private Integer cantidad;
    private Boolean refrigeracion;
    private String tipo;
    private String laboratorio;
    
    /**
     * Metodo constructor vacio de Medicina 
     */
    public Medicina() {
    
    }
    
    /**
     * Metodo constructor Medicina
     * @param nombre - nombre de la medicina
     * @param caducidad - fecha de caducidad de la medicina
     * @param cantidad - cantidad de la medicina
     * @param refrigeracion - refrigeracion de la medicina
     * @param numProveedor - numero del proveedor de la medicina
     * @param tipo - tipo de medicina
     * @param laboratorio - laboratorio de la medicina
     */
    public Medicina(Integer idInsumo,String nombre, String caducidad, 
            Integer cantidad, Boolean refrigeracion, String tipo, 
            String laboratorio) {
        this.idInsumo = idInsumo;
        this.nombre = nombre;
        this.caducidad = caducidad;
        this.cantidad = cantidad;
        this.refrigeracion = refrigeracion;
        this.tipo = tipo;
        this.laboratorio = laboratorio;
    }
    
    /**
     * Metodo que regesa el ID de la medicina
     * @return ID del alimento
     */
    public Integer getIdInsumo() {
        return idInsumo;
    }
    
    /**
    * Metodo que asigna un nuevo ID a la medicina
    * @param cantidad - nueva cantidad
    */
    public void setIdInsumo(Integer cantidad) {
        this.cantidad = cantidad;
    }
    
    /**
     * Metodo que regresa la refrigeracion de la medicina
     * @return refrigeracion de medicina
     */
    public Boolean getRefrigeracion() {
        return refrigeracion;
    }
    
    /**
     * Metodo que regresa el nombre de la medicina
     * @return nombre de la medicina
     */
    public String getNombre() {
        return nombre;
    }   
        
    /**
     * Metodo que asigna un nuevo nombre a la medicina
     * @param nombre - nuevo nombre 
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    /**
     * Metodo que regresa la fecha de caducidad de la medicina
     * @return caducidad de la medicina
     */
    public String getCaducidad() {
        return caducidad;
    }
    
    /**
     * Metodo que asigna una nueva fecha de caducidad
     * @param caducidad - nueva fecha de caducidad
     */
    public void setCaducidad(String caducidad) {
        this.caducidad = caducidad;
    }
    
    /**
     * Metodo que regresa la cantidad de medicina
     * @return cantidad de medicina
     */
    public Integer getCantidad() {
        return cantidad;
    }
    
    /**
     * Metodo que asigna una nueva cantidad de la medicina
     * @param cantidad - nueva cantidad
     */
    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }
    
    /**
     * Metodo que regresa la refrigeracion de la medicina
     * @return refrigeracion de medicina
     */
    public Boolean getRefrigeracion() {
        return refrigeracion;
    }
    
    /**
     * Metodo que asigna una nueva refrigeracion de la medicina
     * @param refrigeracion - nueva refrigeracion
     */
    public void setRefrigeracion(Boolean refrigeracion) {
        this.refrigeracion = refrigeracion;
    }
    
    /**
     * Metodo que regresa el tipo de la medicina
     * @return tipo de medicina
     */
    public String getTipo() {
        return tipo;
    }
    
    /**
     * Metodo que asigna un nuevo tipo a la medicina
     * @param tipo - nuevo tipo
     */
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
    /**
     * Metodo que regresa el nombre de laboratorio de la medicina
     * @return laboratorio de la medicina
     */
    public String getLaboratorio() {
        return laboratorio;
    }
    
    /**
     * Metodo que asigna un nuevo laboratorio a la medicina
     * @param laboratorio - nuevo laboratorio
     */
    public void setLaboratorio(String laboratorio) {
        this.laboratorio = laboratorio;
    }
}
