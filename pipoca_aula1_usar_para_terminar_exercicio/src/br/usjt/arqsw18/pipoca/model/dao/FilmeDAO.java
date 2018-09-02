package br.usjt.arqsw18.pipoca.model.dao;

import java.sql.Connection;
import java.sql.SQLException;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import br.usjt.arqsw18.pipoca.model.entity.Filme;

public class FilmeDAO {

	public int inserirFilme(Filme filme) throws SQLException {
		
		//especificar o comando sql de inserção de um filme
		String sqlInsert = "INSERT INTO filmes(nome, descricao) VALUES (?, ?)";
		
		try(Connection conn = ConnectionFactory.getConnection();
				PreparedStatement stm = conn.prepareStatement(sqlInsert);)
		{	
			//pré compilar o comando sql
			stm.setString(1, filme.getNome());
			stm.setString(2, filme.getDescricao());
			
			//executar o comando
			stm.execute();
			
			//pré compilar o comando sql que permite a obtenção do último
			//id gerado na sessão atual
			String sqlQuery = "SELECT LAST_INSERT_ID()";
			try (PreparedStatement stm2 =  conn.prepareStatement(sqlQuery); ResultSet rs = stm2.executeQuery();)
			{
				if(rs.next()) {
					//devolver o id gerado
					filme.setId(rs.getInt(1));
				}
				
			}
			
			
			
		}
		return filme.getId();
	}

}
