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
 *
 * @author Los Basados
 */
@Service
public class AlimentoServicioImp implements AlimentoServicio{
    
    @Resource
    AlimentoRepositorio alimentoRep;
    
    @Override
    public List<Alimento> findAll(){
        return (List<Alimento>) alimentoRep.findAll();
    }
    
    @Override
    public void insertAlimento(Alimento ali){
        alimentoRep.insertAlimento(ali);
    }
    
    @Override
    public void updateAlimento(Alimento ali){
        alimentoRep.updateAlimento(ali);
    }
    
    @Override
    public void executeAlimento(Alimento ali){
        alimentoRep.executeUpdateAlimento(ali);
    }
    
    @Override
    public void deleteAlimento(Alimento ali){
        alimentoRep.deleteAlimento(ali);
    }
}
