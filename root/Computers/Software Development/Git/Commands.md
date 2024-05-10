# LOCAL:

git init: inicia um repositório no diretório atual

git commit: salva o instantâneo no histórico do projeto e conclui o processo de rastreamento de alterações. Em suma, um commit funciona 
como tirar uma foto. Qualquer coisa que tenha sido testada com git add irá tornar-se parte do instantâneo com git commit.

git commit --amend: abre um editor de texto para modificar a mensagem do ultimo commit
	
git status: mostra o status das alterações como não rastreadas, modificadas ou testadas.

git branch: mostra os branches que estão sendo trabalhados localmente.

git merge: faz merge das linhas de desenvolvimento. De modo geral, esse comando é usado para combinar alterações feitas em dois branches distintos. Por exemplo, um desenvolvedor faria merge quando quisesse combinar alterações de um branch de recurso no branch principal para implantação.

git pull: atualiza a linha local de desenvolvimento com atualizações de sua contraparte remota. Os desenvolvedores usam este
comando se um colega fez commits em um branch remoto, e eles gostaria de refletir essas alterações no seu ambiente local.

git push: atualiza o repositório remoto com quaisquer commits feitos localmente em um branch.

git diff: Mostra diferenças no arquivo que foram realizadas

git rm --cached file_to_remove.txt

git rm --cached -r directory_to_remove
# BRANCHS:

*git branch -m master main*: troca a branch master pela main
 
*git branch nome_da_branch*: cria uma nova branch com o nome digitado
	
*git branch*: mostra os branches que estão sendo trabalhados localmente.
	
*git branch -a*: mostra todas as branchs locais e remotas

*git checkout nome_da_branch*: entra em uma branch
	
*git switch nome_da_branch*: entra em uma branch

*git checkout -b nome_da_branch*: cria uma nova branche e entra nela

*git switch -c new-branch*: cria uma nova branche e entra nela
 	
*git branch -m*: renomeia a branch

*git branch -d nome_da_branch*: deleta a branch
	
*git merge branch_escolhida*: "junta" na branch atual as modificação da branch_escolhida

# REMOTE:
*git remote add origin link_do_remote*: conecta o repositório remoto no local	

*git push*: atualiza o repositório remoto com quaisquer commits feitos localmente em uma branch.	
	
*git checkout nome_da_branch*: trás e entra em uma branch remota de mesmo nome se esta nao existir no repo local.
	
*git push --set-upstream origin nome_branch*: cria uma branch remota como o nome da branch local e recebe as modicações.
	
*git push -d origin nome_branch*: deleta a branch remota.

git push origin nome_branch_local:nome_branch_remota : 
	
*git pull*: é a junção de dois comandos:
		*git fetch*: trás as alterações do remote.
		*git merge origin/nome_branch*: junta as alterações na brancha atual.


# COMMIT:
	
*git commit --amend*: altera a mensagem do último commit
*git rebase -i HEAD~n*: altera mais de um commit no range colocado no lugar de "n"