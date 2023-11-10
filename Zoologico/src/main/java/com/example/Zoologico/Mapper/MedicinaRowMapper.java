/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.Zoologico.Mapper;

import com.example.Zoologico.model.Medicina;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 * Clase que implementa el metodo para la transformacion de la consulta a un objeto medicina
 * 
 * @author Valeria Ramírez Vacheron 
 * @author Eduardo Alfonso Reyes López 
 * @author Mario Andrés Rosales Peña 
 * @author Erick Iram García Velasco 
 * @author Bruno Fernando Ortiz Amaya
 */
public class MedicinaRowMapper  implements RowMapper<Medicina>{
    
    
    /**
     * Metodo que transforma la consulta dada en un objeto medicina y lo regresa
     * 
     * @param rs - resultado de la consulta a transformar
     * @param rowNum - numero de renglon 
     * @return Medicina de la consulta
     * 
     */
     @Override
    public Medicina mapRow(ResultSet rs, int rowNum) throws SQLException {
        Medicina med = new Medicina();
        med.setIdInsumo(rs.getInt("idInsumo"));
        med.setNombre(rs.getString("nombre"));
        med.setCaducidad(rs.getString("caducidad"));
        med.setCantidad(rs.getInt("cantidad"));
        med.setRefrigeracion(rs.getBoolean("refrigeracion"));
        med.setTipo(rs.getString("tipo"));  
        med.setLaboratorio(rs.getString("laboratorio"));  
        
        return med;       
    }
}
