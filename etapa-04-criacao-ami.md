# Etapa 04 – Criar a AMI a partir da Instância EC2

Nesta etapa foi criada uma **imagem da máquina Amazon (AMI)** a partir da instância EC2 configurada na etapa anterior.

Essa AMI será utilizada posteriormente para criar o **Launch Template** e configurar o **Auto Scaling Group (ASG)**.

A criação foi feita manualmente pelo Console da AWS.

---

## 1. Criar Imagem (AMI) da Instância

>Acesse o Console da AWS > **EC2 > Instâncias > Selecione a instância criada na Etapa 03 > Ações > Imagens e Modelos > Criar Imagem**

As seguintes configurações foram aplicadas:

- **Nome da AMI:** `projeto-asg-ami`
- **Descrição:** AMI criada para o Auto Scaling Group do Projeto ASG
- **Opção de reinicialização:** Mantivemos a opção padrão (✔️ Rebootar a instância durante a criação)

## 2. Verificar a Criação da AMI

Após iniciar o processo de criação:

- Acompanhe o progresso acessando:  
**EC2 > AMIs**

- Status esperado: ✅ **Available (Disponível)**

## ✅ Conclusão da Etapa

A **AMI personalizada** foi criada com sucesso e estará disponível para ser usada na próxima etapa, durante a criação do **Launch Template**.

---

### **[🔙 Voltar - Etapa 03](etapa-03-ec2-userdata.md) | [➡️ Avançar - Etapa 05](etapa-05-launch-template.md)**