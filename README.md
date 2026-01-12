🔥 Carrefour Core Banking Architecture


🌍 Visão Geral
O projeto Carrefour Core Banking Architecture é um framework completo para desenvolvimento e implantação de serviços financeiros (fintech).
Ele utiliza tecnologias cloud-native modernas para garantir escalabilidade, resiliência e manutenibilidade.

🎯 Propósito
Este projeto serve como blueprint para:

Construção de aplicações core banking.
Integração de serviços financeiros.
Gestão de infraestrutura via Kubernetes e Crossplane.


🔧 Setup Instructions


Clone o repositório:
Shellgit clone https://github.com/rlsouza-cyber/carrefour-core-banking-architecture.gitcd carrefour-core-banking-architectureShow more lines


Instale as dependências:

Docker
Kubernetes (kubectl)
Crossplane



Configure o Crossplane:

Aplique as configurações em crossplane/.
Configure o provider AWS conforme crossplane/providers/aws-provider.yaml.



Deploy dos serviços:
Shellcd scriptsbash deploy.shShow more lines



🚀 Quick Start

Testar serviços via Ingress:
Shell HOST=http://fintech-domain.com bash test.shShow more lines

Limpar recursos:
Shell bash cleanup.shShow more lines



📚 Documentação

Arquitetura Geral
Enterprise Architecture (TOGAF, DDD)
APIs
Deployment Guide
Troubleshooting


🖼️ Diagramas

Diagramas draw.io disponíveis em drawio/:

architecture-vision-basic.drawio
architecture-vision-aws.drawio (com ícones AWS)


Exportar para PNG/SVG para apresentações.


🛠️ Infraestrutura

Kubernetes Manifests: k8s/ (namespaces, apps, security, monitoring)
Crossplane: crossplane/ (XRD, Composition, Claim)
Docker: docker/ (transaction-api, notification-service)
Scripts: scripts/ (deploy, cleanup, test)


✅ Tecnologias

🐳 Docker
☸️ Kubernetes
🔗 Crossplane
🏗️ AWS (EKS, RDS, S3)
📈 Prometheus & Grafana


🤝 Contribuições são bem-vindas!
Abra um Pull Request ou Issue para melhorias ou correções.

📜 Licença
Este projeto está licenciado sob os termos do arquivo LICENSE.