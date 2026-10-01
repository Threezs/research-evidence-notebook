# Research Evidence Notebook

这是我的生物信息学和机制研究证据本。它不把“看到一个差异”直接写成“证明了机制”，而是把观察、解释、替代解释、证据等级和下一步验证拆开。

## 核心记录

每条证据至少记录：

- 研究对象、物种、模型、组织和干预；
- 原文位置（图、表、结果段或方法）；
- 观察到的结果与最小结论；
- 相关性、干预证据还是机制证据；
- 可能的替代解释；
- 与当前项目的关联；
- 下一步独立验证。

## 证据等级

- **direct**：直接实验干预或明确的机制读出；
- **support**：与机制一致，但不能单独证明因果；
- **exploration**：由模型、富集、embedding 或预测得到的候选；
- **hypothesis**：待验证的解释。

每一条都需要填写物种、模型、干预和原文位置后，才能升级为“moderate”或“high”。

## 与其他仓库的关系

- [bioinformatics-literature-workbench](https://github.com/Threezs/bioinformatics-literature-workbench)：论文和阅读记录。
- [research-compendium-template-r](https://github.com/Threezs/research-compendium-template-r)：可复现项目骨架。
- [rnaseq-analysis-template](https://github.com/Threezs/rnaseq-analysis-template)：bulk RNA-seq 统计分析。
- [zotero-literature-tools](https://github.com/Threezs/zotero-literature-tools)：Zotero/BibTeX 整理。

## 与方法目录对接

- 方法选择：先查 [nature-methods-bioinformatics-catalog](https://github.com/Threezs/nature-methods-bioinformatics-catalog) 的 docs/function_map.md。
- 输入和运行状态：复制 catalog 的 templates/method_run_manifest.yml，记录 baseline、checkpoint 和 execution_mode。
- 细胞级输出：CellRank、Mellon density、embedding、niche 和细胞比例必须带 sample_id/donor_id，按样本汇总后再写入 claim。
- 多模态输出：MISO、SCMMIB 和 scMultiBench 先记录 shared key、任务、模态、split 和评价指标；不要把 benchmark 排名写成普遍机制证据。
- 长读长 RNA：NaRMBench 先记录 chemistry、ground truth、是否重训练和 site-level calibration；修饰检测结果默认是 support/exploration，仍需独立验证。
- 结果表达：使用 catalog 的 templates/result_interpretation.md，分别填写观察、最小结论、不能推出的内容、替代解释和验证。
