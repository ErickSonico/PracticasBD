/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.Zoologico.Service;

import com.example.Zoologico.Repository.MedicinaRepositorio;
import com.example.Zoologico.model.Medicina;
import jakarta.annotation.Resource;
import java.util.List;
import org.springframework.stereotype.Service;

/**
 * Clase que implementa los métodos para el servicio de medicina.
 * @author Valeria Ramírez Vacheron. 
 * @author Eduardo Alfonso Reyes López. 
 * @author Mario Andrés Rosales Peña. 
 * @author Erick Iram García Velasco. 
 * @author Bruno Fernando Ortiz Amaya.
 */

@Service
public class MedicinaServicioImp implements MedicinaServicio{
    
    @Resource
    MedicinaRepositorio medicinaRep;
    
    /**
     * Rregresa una lista de todas las medicinas disponibles.
     * @return lista de medicinas.
     */
    @Override
    public List<Medicina> findAll(){
        return (List<Medicina>) medicinaRep.findAll();
    }
    
    /**
     * Inserta una medicina al repositorio de medicinas. 
     * @param med medicina para insertar.
     */
    @Override
    public void insertMedicina(Medicina med){
        medicinaRep.insertMedicina(med);
    }
    
    /**
     * Actualiza una medicina del repositorio.
     * @param med medicina para actualizar.
     */
    @Override
    public void updateMedicina(Medicina med){
        medicinaRep.updateMedicina(med);
    }
    
    /**
     * Método alternativo para actualizar una medicina del repositorio.
     * @param med medicina para actualizar.
     */
    @Override
    public void executeMedicina(Medicina med){
        medicinaRep.executeUpdateMedicina(med);
    }
    
    /**
     * Elimina una medicina del repositorio.
     * @param med medicina a eliminar.
     */
    @Override
    public void deleteMedicina(Medicina med){
        medicinaRep.deleteMedicina(med);
    }
}
