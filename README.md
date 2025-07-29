## Rackathon CLEARSY 2025

<h2>📖 Descrição</h2>
Hackathon organizado pela CLEARSY, com o apoio ativo do Dr. Marcel Oliveira. Ocorreu no Instituto Metrópole Digital/UFRN (Natal, Brasil) de 21/07/2025 a 25/07/2025, com duração total de 8h20.

<h2>🎯 Objetivo</h2>
O objetivo é utilizar o B para modelagem e comprovação de software com o Atelier B e o ProB. O tema foi um controle de sistema de portas trabalhando em diferentes pressões. O sistema deve controlar as aberturas das portas com base na pressão da sala intermediaria L para garantir a segurança do processo.

<h2>🛠️ Ferramentas</h2>

- ProB
- Atelier B

<h2>📝 Organização do projeto</h2>

O projeto está organizado em duas principais categorias de arquivos:

- **Máquinas Abstratas**  
  Contêm a especificação formal do sistema, descrevendo os estados, variáveis e invariantes sem detalhes de implementação. O foco são apenas as especificações de segurança.

- **Implementações**  
  Refinam as máquinas abstratas, detalhando como os requisitos são realizados na prática.

Abaixo segue uma explicação rápida sobre as máquinas:

**ACCES CARD**

Responsavel por realizar a validação dos cartões de acesso.

**CTX**

Delimita os conjuntos de valores que as váriaveis podem assumir.

**SENSORS**

Résponsavel pelas váriaveiss dos sensores e por atualizar seus valores.

**ENABLE**

Résponsavel por realizar a verificação se a porta atende as condições de segurança e está habilitada a ser aberta.

**CONTROLLER**

Faz o controle dos objetivos e das ações para atingir os objetivos. Há três controladores, dois utilizados na MAIN e um para o test.

**MAIN**

Centraliza o sistema e verifica os estados dos controladores henrique e daniel, para se certificar de definir a ação a ser executada apenas se os estados estiverem iguais.

**tests**

Utilizados para realização de testes e animações das máquinas no ProB.


> **Nota:** Os arquivos podem ser abertos e analisados com o Atelier.

<h3>Autor</h3>
<a href="https://github.com/JoabUrbano">Joab Urbano</a><br>