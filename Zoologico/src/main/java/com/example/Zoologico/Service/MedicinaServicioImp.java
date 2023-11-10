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
 *
 * @author Los Basados
 */
public class MedicinaServicioImp implements MedicinaServicio{
    
    @Resource
    MedicinaRepositorio medicinaRep;
    
    @Override
    public List<Medicina> findAll(){
        return (List<Medicina>) medicinaRep.findAll();
    }
    
    @Override
    public void insertMedicina(Medicina med){
        medicinaRep.insertMedicina(med);
    }
    
    @Override
    public void updateMedicina(Medicina med){
        medicinaRep.updateMedicina(med);
    }
    
    @Override
    public void executeMedicina(Medicina med){
        medicinaRep.executeUpdateMedicina(med);
    }
    
    @Override
    public void deleteMedicina(Medicina med){
        medicinaRep.deleteMedicina(med);
    }
}