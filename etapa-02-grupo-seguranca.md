# Etapa 02 – Criar o Grupo de Segurança (Security Group)

Nesta etapa foi criado o **grupo de segurança (Security Group)** que será utilizado pelas instâncias EC2 e pelo Classic Load Balancer (CLB) do projeto.

As regras de segurança foram configuradas para permitir o tráfego de entrada nas portas necessárias, seguindo as boas práticas para ambientes de teste em nuvem.

---

## 1. Criação do Grupo de Segurança

>Acesse o console da AWS > **EC2 > Grupos de segurança > Criar grupo de segurança**

As seguintes configurações foram aplicadas:

- **Nome do grupo de segurança:** `projeto-asg-sg`
- **Descrição:** Grupo de segurança para EC2 e CLB – Projeto ASG
- **VPC associada:** `projeto-asg-vpc`

## 2. Regras de Entrada (Inbound Rules)

Foram configuradas as seguintes permissões de entrada:

| Tipo      | Protocolo | Porta | Origem      | Descrição                      |
|-----------|-----------|------ |-------------|--------------------------------|
| HTTP      | TCP       | 80    | 0.0.0.0/0   | Permitir acesso web externo    |
| SSH       | TCP       | 22    | Meu IP  | Permitir acesso SSH para administração |

> 🔐 **Observação:** A porta SSH (22) foi liberada **apenas para o IP atual** (origem: Meu IP), seguindo boas práticas de segurança em ambiente de testes.  

## 3. Regras de Saída (Outbound Rules)

Mantivemos a regra padrão da AWS, permitindo **todo o tráfego de saída**:

| Tipo          | Protocolo | Porta | Destino    | Descrição                  |
|---------------|-----------|------ |------------|----------------------------|
| All traffic   | All       | All   | 0.0.0.0/0  | Permitir todo o tráfego de saída |

## ✅ Conclusão da Etapa

Com o **grupo de segurança configurado**, as instâncias EC2 e o Classic Load Balancer já terão as permissões básicas de comunicação necessárias para as próximas etapas do projeto.

---

### **[🔙 Voltar - Etapa 01](etapa-01-criacao-vpc.md) | [➡️ Avançar - Etapa 03](etapa-03-ec2-userdata.md)**