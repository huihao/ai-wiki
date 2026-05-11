---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Verilog

## Definition

Verilog is a hardware description language (HDL) used to model, simulate, and synthesize digital electronic systems at the register-transfer level, enabling hardware designers to specify the behavior and structure of circuits that are then compiled into physical gate implementations on FPGAs or ASICs.

## Key Aspects

- Verilog describes hardware as modules with inputs, outputs, and internal logic, using procedural blocks (always, initial) and continuous assignments (assign) to model combinational and sequential logic.
- In the Tiny-TPU project, Verilog was used to implement all components of a complete Tensor Processing Unit: the systolic array of processing elements, unified buffer, vector processing unit, weight FIFOs, and the 94-bit custom instruction set decoder.
- The weight-stationary dataflow in the systolic array is expressed in Verilog as: weights are loaded into processing element registers and held fixed, while inputs stream rightward and partial sums flow downward.
- Pipelining in Verilog splits operations across clock cycles using pipeline registers, enabling higher clock frequencies by reducing the critical path length within each cycle.
- Double buffering is implemented by instantiating shadow registers that load the next layer's weights while the current layer computes, hiding loading latency.
- Verilog designs are verified through testbenches (simulation) before synthesis to hardware, with the Tiny-TPU team validating their design by solving the XOR problem through both inference and training.
- The Verilog-to-bitstream flow targets FPGA platforms for prototyping, while ASIC flows (used by Google for production TPUs) go through place-and-route and fabrication.

## Related Concepts

- [[systolic-array]] -- the grid of processing elements that forms the TPU's compute core
- [[vpu]] -- Vector Processing Unit for element-wise operations in the TPU
- [[tpu]] -- the Tensor Processing Unit that Verilog is used to implement

## Sources

- [[tiny-tpu-the-why-and-how]]
