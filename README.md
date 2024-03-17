# THE MAI实习
公司是初创公司，主要业务是基于LLM的写作助手研发，在此记录一下我的项目demo，不泄露公司数据。
### Demo1.Graph RAG
实现Graph RAG，部署图数据库，利用LLM构建知识图谱并简单实现KGQA问答任务。
- 代码：RAG-gov_report.ipynb（数据：gov_report1）
- 参考：https://siwei.io/graph-rag/
### Demo2.RAG-finetune
参考RAG论文，基于Bert问题编码器和Bart生成器，使用中文数据集，端到端微调RAG，用于检索和生成。
- 代码：
- 参考：https://arxiv.org/abs/2005.11401
- https://github.com/huggingface/transformers/tree/main/examples/research_projects/rag
### Demo3.Agent多轮对话
参与写作助手Agent项目，实现并测试Function calling函数调用，通过多轮对话方式实现Agent流程。
- 代码：
- 参考：ChatGLM3 Function calling功能介绍与Agent实战.pdf
