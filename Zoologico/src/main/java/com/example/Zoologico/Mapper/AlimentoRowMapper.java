/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.Zoologico.Mapper;

import com.example.Zoologico.model.Alimento;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 * Clase que implementa el metodo para la transformacion de la consulta a un objeto Alimento
 * 
 * @author Valeria Ramírez Vacheron 
 * @author Eduardo Alfonso Reyes López 
 * @author Mario Andrés Rosales Peña 
 * @author Erick Iram García Velasco 
 * @author Bruno Fernando Ortiz Amaya
 */
public class AlimentoRowMapper  implements RowMapper<Alimento>{

    /**
     * Metodo que transforma la consulta dada en un objeto Alimento y lo regresa
     * 
     * @param rs - resultado de la consulta a transformar
     * @param rowNum - numero de renglon 
     * @return Alimento de la consulta
     * 
     */
     @Override
    public Alimento mapRow(ResultSet rs, int rowNum) throws SQLException {
        Alimento alim = new Alimento();
        alim.setIdInsumo(rs.getInt("idInsumo"));
        alim.setNombre(rs.getString("nombre"));
        alim.setCaducidad(rs.getDate("caducidad"));
        alim.setCantidad(rs.getInt("cantidad"));
        alim.setRefrigeracion(rs.getBoolean("refrigeracion"));
        alim.setTipo(rs.getString("tipo"));  
        
        return alim;       
    }
}
