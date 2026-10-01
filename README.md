# Research Evidence Notebook

这个仓库用于把“我读到的内容”“论文直接证明的内容”“我的研究假设”和“下一步需要验证的内容”分开保存。它特别适合 APAP、IR、CRLM、STAT3/NF-kB、SAA/LCN2、中性粒细胞和内皮功能等跨文献机制问题。

## 核心原则

- **一个 claim 一行**：不要把整段机制链写成一个无法核查的结论。
- **证据类型要明确**：observational、perturbation、binding、genetic、clinical、review 和 hypothesis 分开。
- **来源定位要具体**：图、表、页码、补充材料、数据库 accession 或代码版本。
- **相关性和因果性分开**：表达相关不能直接写成“导致”。
- **物种和模型必须匹配**：人、小鼠、体外细胞、动物模型和患者样本不能混为一谈。
- **不确定内容可以保存**：但要标记为 hypothesis 或 open_question，而不是伪装成事实。

## 工作流

1. 在文献工作台完成逐篇阅读。
2. 将可独立核查的句子复制到 `data/claims.csv`。
3. 给每条 claim 填 `evidence_type`、`confidence`、`species`、`model` 和 `source_location`。
4. 用 `data/mechanisms.csv` 把来源、作用对象、作用关系和结果串起来。
5. 在 `analysis/claim_summary.R` 中按项目、主题和可信度汇总。
6. 将证据不足的部分放入“下一步验证”，不要过度解释。

## 目录

~~~text
data/
├─ claims.csv             # 一条可核查结论一行
├─ mechanisms.csv         # 节点和有向关系
└─ projects.csv           # APAP、IR、CRLM 等项目登记

templates/
├─ claim-note.md
└─ mechanism-map.qmd

analysis/
└─ claim_summary.R

docs/
└─ confidence_rules.md
~~~

## 当前项目的示例假设

仓库中的示例只用于演示字段，不代表已经被本项目证实：

- APAP 肝损伤中的 SAA1/2、LCN2 与中性粒细胞募集；
- CD177 与 PECAM1 相关的跨内皮迁移；
- S100A8/A9 与 CD36 相关的内皮反应；
- IL6/STAT3/NF-kB 与急性期蛋白表达的方向关系。

每一条都需要填写物种、模型、干预和原文位置后，才能升级为“moderate”或“high”。

## 与其他仓库的关系

- [bioinformatics-literature-workbench](https://github.com/Threezs/bioinformatics-literature-workbench)：论文和阅读记录。
- [research-compendium-template-r](https://github.com/Threezs/research-compendium-template-r)：可复现项目骨架。
- [rnaseq-analysis-template](https://github.com/Threezs/rnaseq-analysis-template)：bulk RNA-seq 统计分析。
- [zotero-literature-tools](https://github.com/Threezs/zotero-literature-tools)：Zotero/BibTeX 整理。

