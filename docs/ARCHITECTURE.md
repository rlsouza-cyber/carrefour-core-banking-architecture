
# 🏗️ Architectural Overview

## 🇧🇷 Português

### 🌍 Introdução
Este documento descreve as decisões arquiteturais e princípios de design que orientam o desenvolvimento do projeto **Carrefour Core Banking Architecture**. Ele serve como referência para entender a estrutura, os componentes e as interações do sistema.

### 🎯 Objetivos Arquiteturais
- **Escalabilidade**: Projetada para lidar com cargas crescentes, escalando componentes de forma independente.
- **Modularidade**: Cada componente é desenvolvido como um módulo separado, facilitando manutenção e atualizações.
- **Resiliência**: Construída para tolerar falhas, garantindo alta disponibilidade e confiabilidade.
- **Segurança**: Práticas de segurança integradas para proteger dados sensíveis e manter conformidade regulatória.

### 🔧 Componentes do Sistema
1. **Crossplane**: Gerencia recursos e serviços cloud via configuração declarativa.
   - **CRDs**: Define recursos necessários para serviços fintech.
   - **Providers**: Integra com provedores como AWS para provisionamento.

2. **Serviços Docker**: Aplicações containerizadas que fornecem funcionalidades core banking.
   - **Notification Service**: Gerencia notificações e alertas.
   - **Transaction API**: Processa transações e operações relacionadas.

3. **Kubernetes**: Orquestra deploy, escalabilidade e gerenciamento das aplicações.
   - **Namespaces**: Organiza recursos no cluster.
   - **Monitoramento**: Prometheus e Grafana para observabilidade.
   - **Políticas de Segurança**: Network Policies e RBAC para controle de acesso.

### 🖼️ Diagramas
Diagramas disponíveis em `drawio/`:
- `architecture.xml`
- `fintech.drawio` (com ícones AWS)


>
> [Architecture Overview]
> (carrefour-core-banking-architecture/docs/Arq_BC.jpg)

### 🎯 Architectural Goals
- **Scalability**: Designed to handle increasing loads by scaling components independently.
- **Modularity**: Each component is developed as a separate module for easier maintenance and updates.
- **Resilience**: Built to be fault-tolerant, ensuring high availability and reliability.
- **Security**: Security best practices integrated to protect sensitive data and maintain compliance.

### 🔧 System Components
1. **Crossplane**: Manages cloud resources and services through declarative configuration.
   - **CRDs**: Defines resources required for fintech services.
   - **Providers**: Integrates with cloud providers like AWS to provision resources.

2. **Docker Services**: Containerized applications providing core banking functionalities.
   - **Notification Service**: Handles notifications and alerts for users.
   - **Transaction API**: Manages transaction processing and related operations.

3. **Kubernetes**: Orchestrates deployment, scaling, and management of containerized applications.
   - **Namespaces**: Organizes resources within the cluster.
   - **Monitoring**: Uses Prometheus and Grafana for observability.
   - **Security Policies**: Implements Network Policies and RBAC for secure access control.

### 🖼️ Diagrams
Diagrams available in `drawio/`:
- `architecture.xml`
- `fintech.drawio` (with AWS icons)

> 
>
>  
---

### 🏁 Conclusion
This architectural overview provides a high-level understanding of the **Carrefour Core Banking Architecture** project and serves as a foundation for further documentation and development efforts.
