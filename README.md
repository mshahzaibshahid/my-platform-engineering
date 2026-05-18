# Platform Engineering Ecosystem
**Student:** Muhammad Shahzaib Shahid
**Diploma:** AI Operations — EduQual Level 6
**Al-Nafi International College**

## Platform Components
| Component | Tool | Status |
|-----------|------|--------|
| Developer Portal | Backstage | ✅ Running |
| GitOps Deployment | ArgoCD | ✅ Running |
| Metrics & Dashboards | Prometheus + Grafana | ✅ Running |
| Log Aggregation | Loki | ✅ Running |
| Security Policies | OPA Gatekeeper | ✅ Running |
| Identity Management | Keycloak | ✅ Running |
| Infrastructure as Code | Terraform | ✅ Configured |
| CI/CD Pipeline | GitLab CI | ✅ Configured |

## How to Run

### Start Kubernetes
Docker Desktop must be running with Kubernetes enabled.

### Start All Services
```bash
./start-services.sh
```

### Access Points
- Backstage Portal: http://localhost:3000
- ArgoCD: https://localhost:8081
- Grafana: http://localhost:3004
- Prometheus: http://localhost:9092
- Keycloak: http://localhost:8443

## Architecture
This platform implements a complete Internal Developer Platform (IDP)
with self-service infrastructure, automated CI/CD, AIOps observability,
and security policy enforcement — aligned with ISO 27001 and NIST CSF.
