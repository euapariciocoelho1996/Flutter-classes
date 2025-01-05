# aulas_flutter_

## Getting Started: TextEditingController

Para usar o TextEditingController primeiro criamos um controlador:
- final TextEditingController _controller = TextEditingController();
    - _controller: variável privada.
    - TextEditingController: tipo.

| **Aspecto**             | **onChanged**                                   | **TextEditingController**                         |
|--------------------------|------------------------------------------------|--------------------------------------------------|
| **Captura do Texto**     | Passa o texto diretamente para a callback.     | Permite acessar o texto via o controlador.       |
| **Armazenamento**        | Não armazena o texto, você precisa gerenciá-lo.| Armazena o texto internamente.                  |
| **Reatividade**          | Atualiza em tempo real a cada digitação.       | Não é reativo por si só; precisa de eventos explícitos. |
| **Controle Programático**| Sem controle direto; apenas reativo.           | Permite manipular o texto diretamente.           |
| **Complexidade**         | Mais simples de implementar.                   | Requer configuração adicional.                  |
| **Uso Típico**           | Ações simples em tempo real.                   | Necessidade de acessar, alterar ou limpar o texto. |

## From

O **`Form`** em Flutter é um widget usado para agrupar e gerenciar múltiplos campos de entrada, como `TextFormField`. Ele oferece suporte a funcionalidades avançadas como **validação**, **gerenciamento de estado** e **submissão de dados**. Ideal para formulários complexos e com vários campos.

---

## **Características Principais**
- **Validação de Campos:**
  O `Form` pode validar todos os seus campos simultaneamente usando o método `validator` em cada campo.
  
- **Gerenciamento de Estado:**
  Utiliza uma **chave global** (`GlobalKey<FormState>`) para acessar e gerenciar o estado do formulário.

- **Agrupamento de Campos:**
  Permite tratar múltiplos widgets de entrada como parte de um único grupo.

- **Facilidade para Submissão:**
  Oferece métodos como `.validate()` e `.save()` para simplificar a lógica de envio.

---


