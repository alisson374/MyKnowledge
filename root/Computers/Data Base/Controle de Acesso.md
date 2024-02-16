### Estrutura o GRANT

Estrutura básica do grant:
```sql
GRANT <nome_privegio> 
ON <objeto/tabela>
TO {user_name |PUBLIC |role_name} [WITH GRANT OPTION]
```

Exemplo, comando para permitir que todos os usuários façam consultas na tabela livro:
```sql
GRANT SELECT ON Livro TO PUBLIC
```

