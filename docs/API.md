# API Documentation

## Overview

This document provides the specifications and usage guidelines for the API of the Carrefour Core Banking Architecture project. It outlines the available endpoints, request and response formats, and authentication methods.

## Base URL

The base URL for accessing the API is:

```
http://api.carrefour-core-banking-architecture.com/v1
```

## Authentication

All API requests require authentication. Use the following method to authenticate:

- **Bearer Token**: Include the token in the Authorization header.

```
Authorization: Bearer <your_token>
```

## Endpoints

### 1. Get Account Information

- **Endpoint**: `/accounts/{accountId}`
- **Method**: `GET`
- **Description**: Retrieves information about a specific account.
- **Parameters**:
  - `accountId` (path): The ID of the account to retrieve.
- **Response**:
  - **200 OK**: Returns account details.
  - **404 Not Found**: Account not found.

### 2. Create a New Account

- **Endpoint**: `/accounts`
- **Method**: `POST`
- **Description**: Creates a new account.
- **Request Body**:
  ```json
  {
    "accountType": "string",
    "initialBalance": "number"
  }
  ```
- **Response**:
  - **201 Created**: Returns the created account details.
  - **400 Bad Request**: Invalid input data.

### 3. Transfer Funds

- **Endpoint**: `/transfer`
- **Method**: `POST`
- **Description**: Transfers funds between accounts.
- **Request Body**:
  ```json
  {
    "fromAccountId": "string",
    "toAccountId": "string",
    "amount": "number"
  }
  ```
- **Response**:
  - **200 OK**: Returns transfer confirmation.
  - **400 Bad Request**: Invalid transfer details.

## Error Handling

All error responses will have the following structure:

```json
{
  "error": {
    "code": "string",
    "message": "string"
  }
}
```

## Rate Limiting

The API enforces rate limiting. Exceeding the limit will result in a `429 Too Many Requests` response.

## Contact

For further inquiries, please contact the API support team at support@carrefour-core-banking-architecture.com.