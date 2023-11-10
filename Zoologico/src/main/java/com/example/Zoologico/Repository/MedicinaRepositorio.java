/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.example.Zoologico.Repository;

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
