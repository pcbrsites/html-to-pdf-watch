# 📄 HTML para PDF - Monitor Automático

🔍 Monitor automático que converte arquivos HTML para PDF em tempo real.

## ✨ Características

- 🔄 Monitoramento automático de diretório
- 📝 Conversão HTML para PDF
- 🐳 Containerizado com Docker
- ⚡ Conversão instantânea ao salvar arquivos

## 🛠️ Pré-requisitos

- 🐳 Docker instalado
- 🐳 Docker Compose instalado 


## 🚀 Como Usar

1. 📦 **Construa e inicie com Docker Compose:**

   ```sh
   docker-compose up --build
   ```

2. 🐳 **Execute com Docker:**

   ```sh
   docker build -t html-to-pdf-watch .
   docker run -d -v $(pwd)/html:/app/html html-to-pdf-watch
   ```

## 📋 Exemplo de Execução

1. Coloque seus arquivos HTML no diretório `html`.
2. Execute o comando para iniciar o monitoramento e conversão:

   ```sh
   docker-compose up --build
   ```

3. Ou, se preferir usar Docker diretamente:

   ```sh
   docker build -t html-to-pdf-watch .
   docker run -d -v $(pwd)/html:/app/html html-to-pdf-watch
   ```

4. Os arquivos PDF convertidos serão salvos no diretório `html`.

