/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */

package com.example.Zoologico.Service;

import com.example.Zoologico.model.Alimento;
import java.util.List;

/**
 * Interfaz para los métodos del servicio de alimento.
 * @author Valeria Ramírez Vacheron.
 * @author Eduardo Alfonso Reyes López.
 * @author Mario Andrés Rosales Peña.
 * @author Erick Iram García Velasco. 
 * @author Bruno Fernando Ortiz Amaya.
 */
public interface AlimentoServicio {
    List<Alimento> findAll();
    void insertAlimento(Alimento ali);
    void updateAlimento(Alimento ali);
    void executeAlimento(Alimento ali);
    void deleteAlimento(Alimento ali);
}
