/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.example.Zoologico.Service;

import com.example.Zoologico.model.Medicina;
import java.util.List;
/**
 *
 * @author Los Basados
 */
public interface MedicinaServicio {
    List<Medicina> findAll();
    void insertMedicina(Medicina ali);
    void updateMedicina(Medicina ali);
    void executeMedicina(Medicina ali);
    void deleteMedicina(Medicina ali);
}
