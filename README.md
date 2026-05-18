# Platform Engineering Ecosystem
**Student:** Muhammad Shahzaib Shahid
**Diploma:** AI Operations — EduQual Level 6
**Al-Nafi International College**

## Architecture
A complete Internal Developer Platform (IDP) with:
- Backstage Developer Portal (self-service)
- Terraform Infrastructure Automation (IaC)
- GitLab CI/CD Pipeline with security scanning
- ArgoCD GitOps Deployment
- Prometheus + Grafana + Loki (AIOps Observability)
- OPA Gatekeeper Security Policies
- Keycloak Identity & Access Management

## Running Services
| Service | Namespace | Purpose |
|---------|-----------|---------|
| myapp | dev | Sample application |
| Prometheus | monitoring | Metrics collection |
| Grafana | monitoring | Visualization & AIOps |
| Loki | monitoring | Log aggregation |
| ArgoCD | argocd | GitOps deployment |
| OPA Gatekeeper | gatekeeper-system | Policy enforcement |
| Keycloak | security | Identity management |

## How to Access
- Grafana: http://localhost:3004
- Prometheus: http://localhost:9092
- ArgoCD: https://localhost:8081
- Keycloak: http://localhost:8443
