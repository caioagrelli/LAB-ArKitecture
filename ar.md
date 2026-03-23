# ❄️ Tabela de Conferência (Ar-Condicionados – Power BI × Planilha × Quantidade)

## 📊 Mapeamento

| Power BI | Planilha | Código | Quantidade |
|----------|----------|--------|------------|
| CASSETE 18000 BTU | Cassete 18000 BTU/h (condensador) | A1 | 15 |
| CASSETE 18000 BTU | Cassete 18000 BTU/h (evaporador) | A2 | 15 |
| CASSETE 24000 BTU | Cassete 24000 BTU/h (condensador) | A3 | 15 |
| CASSETE 24000 BTU | Cassete 24000 BTU/h (evaporador) | A4 | 15 |
| CASSETE 36000 BTU | Cassete 36000 BTU/h (condensador) | A5 | 4 |
| CASSETE 36000 BTU | Cassete 36000 BTU/h (evaporador) | A6 | 4 |
| HI WALL 12000 BTU | Hi Wall 12000 BTU/h (condensador) | A7 | 8 |
| HI WALL 12000 BTU | Hi Wall 12000 BTU/h (evaporador) | A8 | 8 |
| HI WALL 24000 BTU | Hi Wall 24000 BTU/h (condensador) | A11 | 11 |
| HI WALL 24000 BTU | Hi Wall 24000 BTU/h (evaporador) | A12 | 11 |
| HI WALL 30000 BTU | Hi Wall 30000 BTU/h (condensador) | A13 | 15 |
| HI WALL 30000 BTU | Hi Wall 30000 BTU/h (evaporador) | A14 | 15 |
| JANELA 7500 BTU | Janela 7500 BTU/h | A17 | 3 |
| PISO TETO 48000 BTU | Piso-teto 48000 BTU/h (condensador) | A19 | 2 |
| PISO TETO 48000 BTU | Piso-teto 48000 BTU/h (evaporador) | A20 | 2 |
| PISO TETO ECO 58000 BTU | Piso-teto 60000 BTU/h (condensador) | A21 | 2 |
| PISO TETO ECO 58000 BTU | Piso-teto 60000 BTU/h (evaporador) | A22 | 2 |
| PISO TETO ÁGUA 24000 BTU | Piso-teto água 24000 BTU/h (condensador) | A23 | 2 |
| PISO TETO ÁGUA 24000 BTU | Piso-teto água 24000 BTU/h (evaporador) | A24 | 2 |
| VRF 12HP | VRF 12HP (condensador) | A26 | 1 |
| VRF 20HP | VRF 20HP (condensador) | A28 | 1 |

---

## ⚠️ Observações Críticas

### 1. Conversão de capacidade
- **58000 BTU → tratado como 60000 BTU**
  - Pode gerar divergência técnica dependendo do padrão adotado

### 2. Itens não mapeados
- HI WALL 18000 BTU → não encontrado
- JANELA 9000 / 12000 / 18000 BTU → não encontrados
- VRF 10HP / 14HP / recuperador → não encontrados
- UNIDADE EXTERNA UNIVERSAL 36000 → sem correspondência clara

### 3. Estrutura duplicada (condensador + evaporador)
- Cada equipamento split foi duplicado em:
  - condensador
  - evaporador
- Isso pode inflar total se a base original já estiver consolidada

---

## 📌 Riscos Identificados

- Possível **supercontagem** (duplicação de unidades)
- Possível **classificação incorreta por aproximação (BTU)**
- Perda de rastreabilidade entre tipos (ex: split vs piso-teto)

---

## 💡 Recomendações

1. Padronizar base Power BI com:
   - Tipo (Cassete / Hi Wall / Piso Teto / VRF)
   - Capacidade exata (BTU)
   - Estrutura (Condensadora / Evaporadora)

2. Evitar conversões aproximadas (ex: 58k → 60k)

3. Validar se:
   - Cada linha representa 1 equipamento completo  
   **ou**
   - Partes separadas (condensador + evaporador)

---

## 🧾 Uso

- Conferência entre sistemas (Power BI vs Planilha)
- Auditoria de inventário
- Base para ajuste e padronização de dados