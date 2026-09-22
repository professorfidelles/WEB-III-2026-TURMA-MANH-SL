package com.example.crud.dao;

import com.example.crud.config.Conexao;
import com.example.crud.model.Aluno;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AlunoDao {
    public List<Aluno> findByAlunos(){
       String sql = "SELECT * FROM alunos";
       List<Aluno> alunos = new ArrayList<>();
       ResultSet resultado;

       try {
           Connection conn = Conexao.getConnection();
           resultado = conn.createStatement().executeQuery(sql);

           while (resultado.next()){
               Aluno aluno = new Aluno();
               aluno.setNome(resultado.getString("nome"));
               aluno.setCpf(resultado.getString("cpf"));
               aluno.setEmail(resultado.getString("email"));
               aluno.setTelefone(resultado.getString("telefone"));
               alunos.add(aluno);

           }

       }catch (SQLException e){
           throw new RuntimeException(e);
       }
       return alunos;

    }

    public void inserir(Aluno aluno){
        String sql = "INSERT INTO alunos(nome,cpf,email,telefone) VALUES(?,?,?,?)";
        PreparedStatement ps;

        try{
            Connection conn = Conexao.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1 , aluno.getNome());
            ps.setString(2 , aluno.getCpf());
            ps.setString(3 , aluno.getEmail());
            ps.setString(4 , aluno.getTelefone());
            ps.execute();
            ps.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
