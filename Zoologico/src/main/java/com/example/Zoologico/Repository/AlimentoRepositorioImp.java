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
 * @author Eduardo
 */
public class AlimentoRepositorioImp implements AlimentoRepositorio{
    
    NamedParameterJdbcTemplate template;
    
    public AlimentoRepositorioImp(NamedParameterJdbcTemplate template){
        this.template = template;
    }
    @Override
    public List<Alimento> findAll() {
        return template.query("SELECT * FROM Alimento", new AlimentoRowMapper());
    }

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
