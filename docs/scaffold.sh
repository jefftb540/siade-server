#!/bin/bash
#Criando Scaffold das tabelas do SIADE
echo "---------------------------------------------------------"
echo "----------------------Tabela Estado----------------------"
rails generate scaffold Estado nome_estado:string sigla:string
echo "---------------------------------------------------------"
echo "----------------------Tabela Cidade----------------------"
rails generate scaffold Cidade estado_id:integer nome_cidade:string 
echo "---------------------------------------------------------"
echo "----------------------Tabela Bairro----------------------"
rails generate scaffold Bairro cidade_id:integer nome_bairro:string
echo "---------------------------------------------------------"
echo "----------------------Tabela Quadra----------------------"
rails generate scaffold Quadra bairro_id:integer total_imoveis:integer total_c:integer total_r:integer total_pe:integer total_tb:integer total_o:integer
echo "---------------------------------------------------------"
echo "----------------------Tabela Lado----------------------"
rails generate scaffold Lado quadra_id:integer rua_id:integer referencia:string
echo "---------------------------------------------------------"
echo "----------------------Tabela Rua----------------------"
rails generate scaffold Rua nome_rua:string
echo "---------------------------------------------------------"
echo "----------------------Tabela Imovel----------------------"
rails generate scaffold Imovel lado_id:integer tipo_id:integer habitantes:integer
echo "---------------------------------------------------------"
echo "----------------------Tabela Tipo----------------------"
rails generate scaffold Tipo nome_tipo:string
echo "---------------------------------------------------------"
echo "----------------------Tabela Visita----------------------"
rails generate scaffold Visita imovel_id:integer hora:datetime atividade_id:integer tratamento_id:integer pesquisa_id:integer pendencia:integer data:date ciclo:integer usuario_id:integer
echo "---------------------------------------------------------"
echo "----------------------Tabela Atividade----------------------"
rails generate scaffold Atividade descricao:string
echo "---------------------------------------------------------"
echo "----------------------Tabela Tratamento----------------------"
rails generate scaffold Tratamento eliminados:integer imovel_tratado:integer tipo_larvicida:string quantidade_larvicida:float quantidade_deposito_tratado:integer
echo "---------------------------------------------------------"
echo "----------------------Tabela Pesquisa----------------------"
rails generate scaffold Pesquisa a1:integer a2:integer b:integer c:integer d1:integer d2:integer e:integer imovel_especionado:integer n_amostra_inicial:integer n_amostra_final:integer quantidade_tubitos:integer
echo "---------------------------------------------------------"
echo "----------------------Tabela Usuario----------------------"
rails generate scaffold Usuario nome:string codigo:string senha:string nivel:integer