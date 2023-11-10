/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.Zoologico.Controller;

import com.example.Zoologico.Service.MedicinaServicio;
import com.example.Zoologico.model.Medicina;
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
 * Controlador para gestionar las medicinas.
 */
@RestController
@RequestMapping("/postgressApp")
public class MedicinaController {
    @Resource
    MedicinaServicio medicinaServicio;
   
    /**
     * Obtiene una lista de todas las medicinas disponibles.
     * 
     * @return Una lista de objetos {@link Medicina}.
     */
   @GetMapping(value="/medicinaList")
   public List<Medicina> getMedicinas(){
       return medicinaServicio.findAll();
   }
   
    /**
     * Añade una medicina al repositorio.
     * 
     * @param m El objeto {@link Medicina} que será agregado.
     */
   @PostMapping(value="/createMedicina")
   public void createMedicina(@RequestBody Medicina m){
       medicinaServicio.insertMedicina(m);
   }
   
    /**
     * Actualiza la información de una medicina existente.
     * 
     * @param m El objeto {@link Medicina} que será actualizado.
     */
   @PutMapping(value ="/updateMedicina")
   public void updateMedicina(@RequestBody Medicina m){
      medicinaServicio.updateMedicina(m);
   }
   
    /**
     * Método alternativo para actualizar la información de una medicina.
     * 
     * @param m El objeto {@link Medicina} que será actualizado.
     */
   @PutMapping(value ="/executeUpdateMedicina")
   public void executeUpdateMedicina(@RequestBody Medicina m){
      medicinaServicio.executeMedicina(m);
   }
   
    /**
     * Elimina una medicina del repositorio.
     * 
     * @param m El objeto {@link Medicina} que será eliminado.
     */
   @DeleteMapping(value = "/deleteMedicinaById")
   public void borrarMedicina(@RequestBody Medicina m){
       medicinaServicio.deleteMedicina(m);
   }
}

