/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.example.Zoologico.Service;

import com.example.Zoologico.Repository.AlimentoRepositorio;
import com.example.Zoologico.model.Alimento;
import jakarta.annotation.Resource;
import java.util.List;
import org.springframework.stereotype.Service;

/**
 * Servicio del objeto Alimento 
 * @author Valeria Ramírez Vacheron. 
 * @author Eduardo Alfonso Reyes López. 
 * @author Mario Andrés Rosales Peña. 
 * @author Erick Iram García Velasco. 
 * @author Bruno Fernando Ortiz Amaya.
 */

@Service
public class AlimentoServicioImp implements AlimentoServicio{
    
    @Resource
    AlimentoRepositorio alimentoRep;
    
    /**
     * Regresa una lista con todos los alimentos.
     * @return lista con todos los alimentos.
     */
    @Override
    public List<Alimento> findAll(){
        return (List<Alimento>) alimentoRep.findAll();
    }
    
    /**
     * Inserta un alimento al repositorio de alimentos.
     * @param ali alimento para insertar.
     */
    @Override
    public void insertAlimento(Alimento ali){
        alimentoRep.insertAlimento(ali);
    }
    
    /**
     * Actualiza un alimento en el repositorio.
     * @param ali alimento actualizado.
     */
    @Override
    public void updateAlimento(Alimento ali){
        alimentoRep.updateAlimento(ali);
    }
    
    /**
     * Método alternativo para actualizar un elemento en el repositorio.
     * @param ali alimento a actualizar
     */
    @Override
    public void executeAlimento(Alimento ali){
        alimentoRep.executeUpdateAlimento(ali);
    }
    
    /**
     * Elimina un alimento del repositorio de alimentos.
     * @param ali alimento a eliminar.
     */
    @Override
    public void deleteAlimento(Alimento ali){
        alimentoRep.deleteAlimento(ali);
    }
}
