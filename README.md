# Funções de banco de dados para descriptografar campos userlgi (inclusao) e userlga (alteração) do ERP Totvs Protheus

## exemplo de uso tabela de clientes SA1
```SQL
select 
a1_filial,
a1_cod,
a1_loja,
a1_nome,
a1_nreduz,
totvslg_data(a1_userlgi) as data_inclusao,
totvslg_data(a1_userlga) as data_alteracao
from sa1010
```




*Créditos funções mssql Douglas França*
