
# 📡 API Documentation

## 🇧🇷 Português

### 🌍 Visão Geral
Este documento fornece as especificações e diretrizes para uso da API do projeto **Carrefour Core Banking Architecture**. Ele descreve os endpoints disponíveis, formatos de requisição e resposta, além dos métodos de autenticação.

### 🔗 Base URL
http://api.carrefour-core-banking-architecture.com/v1

### 🔐 Autenticação
Todas as requisições exigem autenticação via **Bearer Token**:
```http
Authorization: Bearer <seu_token>
🧩 Endpoints
1️⃣ Obter Informações da Conta

Endpoint: /accounts/{accountId}
Method: GET
Descrição: Retorna informações sobre uma conta específica.
Parâmetros:

accountId (path): ID da conta.


Respostas:

200 OK: Detalhes da conta.
404 Not Found: Conta não encontrada.



2️⃣ Criar Nova Conta

Endpoint: /accounts
Method: POST
Descrição: Cria uma nova conta.
Body:

{
  "accountType": "string",
  "initialBalance": "number"
}
Respostas:

201 Created: Detalhes da conta criada.
400 Bad Request: Dados inválidos.



3️⃣ Transferir Fundos

Endpoint: /transfer
Method: POST
Descrição: Transfere fundos entre contas.
Body:

{
  "fromAccountId": "string",
  "toAccountId": "string",
  "amount": "number"
}
Respostas:

200 OK: Confirmação da transferência.
400 Bad Request: Detalhes inválidos.

⚠️ Tratamento de Erros
Todas as respostas de erro seguem o formato:

{
  "error": {
    "code": "string",
    "message": "string"
  }
}
⏱️ Rate Limiting
Exceder o limite retorna 429 Too Many Requests.

GIF ilustrativo (substitua pelo link real):
!API Flow
🇺🇸 English
🌍 Overview
This document provides the specifications and usage guidelines for the Carrefour Core Banking Architecture API. It outlines available endpoints, request/response formats, and authentication methods.
🔗 Base URL
http://api.carrefour-core-banking-architecture.com/v1
🔐 Authentication
All API requests require Bearer Token authentication:
Authorization: Bearer <your_token>
🧩 Endpoints
1️⃣ Get Account Information

Endpoint: /accounts/{accountId}
Method: GET
Description: Retrieves information about a specific account.
Parameters:

accountId (path): Account ID.


Responses:

200 OK: Account details.
404 Not Found: Account not found.



2️⃣ Create a New Account

Endpoint: /accounts
Method: POST
Description: Creates a new account.
Body:

{
  "accountType": "string",
  "initialBalance": "number"
}
Responses:

201 Created: Created account details.
400 Bad Request: Invalid input.



3️⃣ Transfer Funds

Endpoint: /transfer
Method: POST
Description: Transfers funds between accounts.
Body:

{
  "fromAccountId": "string",
  "toAccountId": "string",
  "amount": "number"
}
Responses:

200 OK: Transfer confirmation.
400 Bad Request: Invalid transfer details.

⚠️ Error Handling
All error responses follow this structure:

{
  "error": {
    "code": "string",
    "message": "string"
  }
}
⏱️ Rate Limiting
Exceeding the limit returns 429 Too Many Requests.

Illustration GIF (replace with real link):
!API Flow
