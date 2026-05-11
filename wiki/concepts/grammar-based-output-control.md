---
created: 2026-04-28
updated: 2026-04-28
tags: [decoding, structured-output, grammar]
sources: 2
---

# Grammar-based Output Control

## Definition

Output control pattern using formal grammar specifications (GBNF - Grammar-Based Normal Form) to constrain LLM output structure and format. Built-in mechanism similar to regular expressions that adjusts logits weights to enforce syntax rules during generation.

## Mechanism

- Define grammar in BNF-style syntax specifying allowed output structure
- Grammar parser integrated into inference engine
- During generation, parser constrains valid continuation tokens
- Only tokens matching grammar rules receive positive logits
- Invalid tokens are suppressed, ensuring format compliance

## Grammar Syntax (GBNF Example)

```
grammar_str = """
timestamp_literal ::= { t 'yyyy-mm-dd hh:mi:ss' } | 'date_literal time_literal'
date_literal ::= { d'yyyy-mm-dd'} | mm-dd-yyyy | mm/dd/yyyy
time_literal ::= { t 'hh:mi:ss'} | hh:mi:ss[:mls]
"""
```

## Implementation

```python
from transformers_cfg.grammar_utils import IncrementalGrammarConstraint
from transformers_cfg.generation.logits_process import GrammarConstrainedLogitsProcessor

grammar_str = """
root ::= (expr "=" ws term "\n")+
expr ::= term ([-+*/] term)*
term ::= ident | num | "(" ws expr ")" ws
ident ::= [a-z] [a-z0-9_]* ws
num ::= [0-9]+ ws
ws ::= [ \t\n]*
"""

grammar = IncrementalGrammarConstraint(grammar_str, "root", pipe.tokenizer)
grammar_processor = GrammarConstrainedLogitsProcessor(grammar)

pipe = pipeline(
    task="text-generation",
    model=MODEL_ID,
    logits_processor=[grammar_processor]
)
```

## Use Cases

- **SQL Generation**: Ensure syntactically correct SQL queries
- **JSON Output**: Enforce JSON structure with specific keys and value types
- **Code Generation**: Generate valid programming language syntax
- **Structured Data**: Output conforming to specific data schemas
- **Mathematical Expressions**: Ensure valid arithmetic notation

## Advantages

- Built-in format enforcement, highly deterministic
- Type safety through formal syntax specification
- No post-generation validation needed
- Works directly during inference generation
- Stronger guarantees than prompt-based formatting

## Limitations

- **Limited Model Support**: Primarily open-source models; closed-source APIs rarely support
- **BNF Complexity**: Grammar syntax difficult to debug and verify
- **Human Readability**: Formal syntax less intuitive than natural language rules
- **Flexibility**: Less dynamic than programmable Logits Masking rules
- **Rule Engine Integration**: Harder to integrate with external APIs or rule selection systems

## Comparison with Logits Masking

**Grammar is better for**:
- Fixed format structures (JSON, SQL, code)
- Type enforcement
- Built-in grammar libraries available

**Logits Masking is better for**:
- Dynamic, context-dependent rules
- Complex semantic constraints (brand terms, compliance)
- External API integration in rules
- Human-readable rule logic
- Multi-scenario rule selection

**Shared limitations**: Both intervene during generation, potentially impacting:
- Generation success rate (may produce empty output if too restrictive)
- Model accuracy (constrained token selection)
- Inference time (additional processing per token)

## Alternative Approaches

**Prompt-based formatting**: Instruct model to output specific format in prompt.

**Problems**:
- Unreliable, especially for smaller models
- Success depends on model capability and instruction following
- No deterministic guarantees

**Post-generation reformatting** (e.g., LangGraph): Extra model call to adjust format.

**Problems**:
- Additional inference overhead
- Two-step process increases latency

**API response_format**: Structured output via API parameter.

**Example**:
```python
completion = client.chat.completions.create(
    model="model-name",
    messages=[...],
    response_format={"type": "json_object"}
)
```

**Limitations**: Only for common formats, not custom grammars.

## Related Patterns

- [[logits-masking|Logits Masking]] — More flexible programmatic control
- [[style-transfer-pattern|Style Transfer]] — Example-based control
- [[structured-generation|Structured Generation]] — General concept of format enforcement

## Related Concepts

- [[beam-search|Beam Search]] — Decoding algorithm where grammar operates
- [[bnf|Backus-Naur Form (BNF)]] — Formal grammar notation
- [[syntax-constraints|Syntax Constraints]] — Formal language theory applied to generation

## Sources

- [[genai-output-control-design-patterns|GenAI Output Control Design Patterns]] — Pattern comparison and implementation examples
- [[grammar-constrained-bash-generation]] — NVIDIA research on grammar-constrained decoding for Bash command generation in small models

## Cross-references

- [[llm-inference|LLM Inference]] — Understanding where grammar constraints apply
- [[json-generation|JSON Generation]] — Common grammar application
- [[sql-generation|SQL Generation]] — Code generation use case