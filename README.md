atividade 07

<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Comentários</title>
  <style>
    body { font-family: Arial; padding: 20px; }
    .comentario { margin: 10px 0; padding: 10px; border: 1px solid #ccc; position: relative; }
    button { margin-left: 5px; }
  </style>
</head>
<body>

  <h1>Faça o comentario</h1>

  <input type="text" id="comentarioInput" placeholder="Digite seu comentário">
  <button onclick="adicionarComentario()">Adicionar Comentário</button>

  <div id="comentariosContainer"></div>

  <script>
    function adicionarComentario() {
      const input = document.getElementById("comentarioInput");
      const texto = input.value.trim();

      if (texto === "") {
        alert("O comentário não pode estar vazio.");
        return;
      }

      const div = document.createElement("div");
      div.className = "comentario";

      const p = document.createElement("p");
      p.textContent = texto;

      const btnEditar = document.createElement("button");
      btnEditar.textContent = "Editar";
      btnEditar.onclick = function () {
        const novoTexto = prompt("Edite o comentário:", p.textContent);
        if (novoTexto !== null) {
          p.textContent = novoTexto.trim();
        }
      };

      const btnRemover = document.createElement("button");
      btnRemover.textContent = "Remover";
      btnRemover.onclick = function () {
        div.remove();
      };

      div.appendChild(p);
      div.appendChild(btnEditar);
      div.appendChild(btnRemover);

      document.getElementById("comentariosContainer").appendChild(div);

      input.value = ""; 
    }
  </script>

</body>
</html>
