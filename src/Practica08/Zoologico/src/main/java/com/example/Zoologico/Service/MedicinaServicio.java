/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */

package com.example.Zoologico.Service;

import com.example.Zoologico.model.Medicina;
import java.util.List;

/**
 * Interfaz para los métodos del servicio de medicina.  
 * @author Valeria Ramírez Vacheron. 
 * @author Eduardo Alfonso Reyes López. 
 * @author Mario Andrés Rosales Peña. 
 * @author Erick Iram García Velasco. 
 * @author Bruno Fernando Ortiz Amaya.
 */
public interface MedicinaServicio {
    List<Medicina> findAll();
    void insertMedicina(Medicina ali);
    void updateMedicina(Medicina ali);
    void executeMedicina(Medicina ali);
    void deleteMedicina(Medicina ali);
}
