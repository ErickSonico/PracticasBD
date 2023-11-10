/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.Zoologico.Controller;

import com.example.Zoologico.Service.AlimentoServicio;
import com.example.Zoologico.model.Alimento;
import jakarta.annotation.Resource;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Controlador para gestionar los alimentos.
 */
@RestController
@RequestMapping("/postgressApp")
public class AlimentoController {
    @Resource
    AlimentoServicio alimentoServicio;
   
    /**
     * Obtiene una lista de todos los alimentos disponibles.
     * 
     * @return Una lista de objetos {@link Alimento}.
     */
   @GetMapping(value="/alimentoList")
   public List<Alimento> getAlimentos(){
       return alimentoServicio.findAll();
   }
   
   /**
     * Añade un alimento al repositorio.
     * 
     * @param a El objeto {@link Alimento} que será agregado.
     */
   @PostMapping(value="/createAlimento")
   public void createAlimento(@RequestBody Alimento a){
       alimentoServicio.insertAlimento(a);
   }
   
   /**
     * Actualiza la información de un alimento existente.
     * 
     * @param a El objeto {@link Alimento} que será actualizado.
     */
   @PutMapping(value ="/updateAlimento")
   public void updateAlimento(@RequestBody Alimento a){
      alimentoServicio.updateAlimento(a);
   }
   
   /**
     * Método alternativo para actualizar la información de un alimento.
     * 
     * @param a El objeto {@link Alimento} que será actualizado.
     */
   @PutMapping(value ="/executeUpdateAlimento")
   public void executeUpdateAlimento(@RequestBody Alimento a){
      alimentoServicio.executeAlimento(a);
   }
   
   /**
     * Elimina un alimento del repositorio.
     * 
     * @param a El objeto {@link Alimento} que será eliminado.
     */
   @DeleteMapping(value = "/deleteAlimentoById")
   public void borrarAlimento(@RequestBody Alimento a){
       alimentoServicio.deleteAlimento(a);
   }
}
