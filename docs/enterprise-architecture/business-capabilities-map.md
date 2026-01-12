
# 🗺️ Mapa de Capacidades de Negócio (DDD Estratégico) / Business Capabilities Map

## 🇧🇷 Português

### ✅ Capacidades e Domínios
| Capacidade                  | Domínio         | Classificação | Descrição                               |
|-----------------------------|-----------------|--------------|-----------------------------------------|
| Gestão de Contas            | Core Banking    | Core         | Abrange abertura, manutenção e encerramento |
| Gestão de Cashback          | Engajamento     | Supporting   | Gerencia regras, cálculo e distribuição |
| Compliance e Risco          | Suporte         | Supporting   | Validações regulatórias e prevenção a fraudes |
| Integração com Parceiros    | Engajamento     | Supporting   | APIs para parceiros de cashback         |
| Notificações                | Comunicação     | Supporting   | Envio de alertas e confirmações         |

### 🎯 Estratégia DDD
- **Domínios Core**: Gestão de Contas, Compliance.
- **Domínios de Suporte**: Notificações, Integração, Cashback.
- **Bounded Contexts** definidos para cada capacidade.

### 🛠️ Padrão Tático DDD
- **Aggregates**: Conta, Cashback, Transação.
- **Entities**: Cliente, Parceiro.
- **Value Objects**: Endereço, Documento.
- **Services**: Serviço de cálculo de cashback, serviço de notificação.

> **GIF ilustrativo** (substitua pelo link real):
>
> ![Business Capabilities](https://example.com/gifs/business-capabilities.gifs
| Capability                  | Domain          | Classification | Description                              |
|-----------------------------|-----------------|---------------|------------------------------------------|
| Account Management          | Core Banking    | Core          | Covers opening, maintenance, and closure |
| Cashback Management         | Engagement      | Supporting    | Manages rules, calculation, and distribution |
| Compliance and Risk         | Support         | Supporting    | Regulatory validations and fraud prevention |
| Partner Integration         | Engagement      | Supporting    | APIs for cashback partners               |
| Notifications               | Communication   | Supporting    | Sending alerts and confirmations         |

### 🎯 DDD Strategy
- **Core Domains**: Account Management, Compliance.
- **Supporting Domains**: Notifications, Integration, Cashback.
- **Bounded Contexts** defined for each capability.

### 🛠️ Tactical DDD Pattern
- **Aggregates**: Account, Cashback, Transaction.
- **Entities**: Customer, Partner.
- **Value Objects**: Address, Document.
- **Services**: Cashback calculation service, notification service.

>
>
