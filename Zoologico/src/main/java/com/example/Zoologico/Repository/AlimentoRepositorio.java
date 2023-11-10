/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.example.Zoologico.Repository;

import com.example.Zoologico.model.Alimento;
import java.util.List;
/**
 *
 * @author bruno
 */
public interface AlimentoRepositorio {
    List<Alimento> findAll();
    void insertAlimento(Alimento op);
    void updateAlimento(Alimento op);
    void executeUpdateAlimento(Alimento op);
    public void deleteAlimento(Alimento op);
}
