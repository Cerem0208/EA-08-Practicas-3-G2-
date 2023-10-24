/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Practica01.Grupo2.service.impl;
import Practica01.Grupo2.domain.Arbol;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import Practica01.Grupo2.dao.ArbolDao;
import Practica01.Grupo2.service.ArbolService;

@Service
public class ArbolServiceImpl implements ArbolService {
    
    @Autowired
    private ArbolDao categoriaDao;
    @Override
    @Transactional(readOnly=true)
    public List<Arbol> getCategorias(boolean activos) {
        var lista=categoriaDao.findAll();
        if (activos) {
           lista.removeIf(e -> !e.isActivo());
        }
        return lista;
    }
    
    @Override
    @Transactional(readOnly = true)
    public Arbol getCategoria(Arbol categoria) {
        return categoriaDao.findById(categoria.getIdCategoria()).orElse(null);
    }
    
    @Override
    @Transactional
    public void save(Arbol categoria) {
        categoriaDao.save(categoria);
    }
    
    @Override
    @Transactional
    public void delete(Arbol categoria) {
        categoriaDao.delete(categoria);
    }
       
}
