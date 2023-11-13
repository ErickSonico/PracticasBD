/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.Zoologico.Repository;

import com.example.Zoologico.Mapper.AlimentoRowMapper;
import com.example.Zoologico.model.Alimento;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.PreparedStatementCallback;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Valeria Ramírez Vacheron.
 * @author Eduardo Alfonso Reyes López.
 * @author Mario Andrés Rosales Peña.
 * @author Erick Iram García Velasco. 
 * @author Bruno Fernando Ortiz Amaya.
 */

/**
 * 
 * Clase con la implementación de la intefraz AlimentoRepositorio.
 */
@Repository
public class AlimentoRepositorioImp implements AlimentoRepositorio{
    
    /**
     * Variable para las operaciones actualizar, ejecutar queries, consultas
     * y utilizar los preparatory statement.
     */
    NamedParameterJdbcTemplate template;
    
    public AlimentoRepositorioImp(NamedParameterJdbcTemplate template){
        this.template = template;
    }
    
    /**
     * Método que nos devuelve todas las tuplas de la tabla Alimento.
     * Se usa el AlimentoRowMapper para que la lista que pase la query
     * lo transforme en un operador.
     * @return List<Alimento> -- Lista con las tuplas de la tabla Alimento
     */
    @Override
    public List<Alimento> findAll() {
        return template.query("SELECT * FROM Alimento", new AlimentoRowMapper());
    }

    /**
     * Método que inserta una tupla en la tabla.
     * Se hace la consulta SQL INSERT con los parámetros mostrados.
     * El holder permite mandar la información de manera segura.
     * @param op -- Operador Alimento
     */
    @Override
    public void insertAlimento(Alimento op) {
        final String sql = "INSERT INTO Alimento(idInsumo,nombre,caducidad,"
            + "cantidad,refrigeracion,tipo) values (:idInsumo,:nombre,"
            + ":caducidad,:cantidad,:refrigeracion,:tipo)";
        KeyHolder holder = new GeneratedKeyHolder();
        SqlParameterSource param = new MapSqlParameterSource()
                .addValue("idInsumo", op.getIdInsumo())
                .addValue("nombre", op.getNombre())
                .addValue("caducidad", op.getCaducidad())
                .addValue("cantidad", op.getCantidad())
                .addValue("refrigeracion", op.getRefrigeracion())
                .addValue("tipo", op.getTipo());
        template.update(sql,param,holder); 
    }
    
    /**
     * Método que actualiza un alimento.
     * Emplea un holder en coordinación con template para realizar
     * los cambios.
     * @param op -- Operador Alimento
     */
    @Override
    public void updateAlimento(Alimento op) {
            final String sql = "UPDATE Alimento SET idInsumo:=idInsumo,"
                + "nombre=:nombre,caducidad=:caducidad,cantidad=:cantidad,"
                + "refrigeracion=:refrigeracion,tipo=:tipo "
                + "WHERE idInsumo=:idInsumo";
            
        KeyHolder holder = new GeneratedKeyHolder();
        SqlParameterSource param = new MapSqlParameterSource()
                .addValue("idInsumo", op.getIdInsumo())
                .addValue("nombre", op.getNombre())
                .addValue("caducidad", op.getCaducidad())
                .addValue("cantidad", op.getCantidad())
                .addValue("refrigeracion", op.getRefrigeracion())
                .addValue("tipo", op.getTipo());
        template.update(sql,param,holder);
    }

    /**
     * Método que hace un mapeo de los campos de la tabla Alimento
     * para efectuar una query UPDATE usando un Prepared Statemnt
     * que garantiza la seguridad de la operación.
     * @param op -- Operador Alimento
     */
    @Override
    public void executeUpdateAlimento(Alimento op) {
        
        final String sql = "UPDATE Alimento SET idInsumo=:idInsumo,"
                + "nombre=:nombre,caducidad=:caducidad,"
                + "cantidad=:cantidad,"
                + "refrigeracion=:refrigeracion,tipo=:tipo "
                + "WHERE idInsumo=:idInsumo";
            
        Map<String,Object> map = new HashMap<String,Object>();
                map.put("idInsumo", op.getIdInsumo());
                map.put("nombre", op.getNombre());
                map.put("caducidad", op.getCaducidad());
                map.put("cantidad", op.getCantidad());
                map.put("refrigeracion", op.getRefrigeracion());
                map.put("tipo", op.getTipo());
               
                template.execute(sql,map,new PreparedStatementCallback<Object>(){
                    @Override
                    public Object doInPreparedStatement(PreparedStatement ps)
                            throws SQLException, DataAccessException{
                        return ps.executeUpdate();
                    } 
                });
                
    }

    /**
     * Método para eleminar alguna tupla de la tabla Alimento.
     * Se efectúa con el template que usa como parámetros la query
     * DELETE SQL y el mapeo con el idInsumo de la tupla a borrar
     * con un Prepared Statement.
     * @param op -- Operador Alimento
     */
    @Override
    public void deleteAlimento(Alimento op) {
        final String sql = "DELETE FROM Alimento WHERE idInsumo=:idInsumo";
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("idInsumo",op.getIdInsumo());
        template.execute(sql,map,new PreparedStatementCallback<Object>(){
            @Override
            public Object doInPreparedStatement(PreparedStatement ps)
                throws SQLException, DataAccessException{
                return ps.executeUpdate();
            }  
        });
    }
    
}
