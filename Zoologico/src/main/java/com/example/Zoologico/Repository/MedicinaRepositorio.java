/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.example.Zoologico.Repository;

import com.example.Zoologico.model.Medicina;
import java.util.List;
/**
 *
 * @author bruno
 */
public interface MedicinaRepositorio {
    List<Medicina> findAll();
    void insertMedicina(Medicina op);
    void updateMedicina(Medicina op);
    void executeUpdateMedicina(Medicina op);
    public void deleteMedicina(Medicina op);
}
