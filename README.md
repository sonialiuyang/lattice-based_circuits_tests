# A Novel Cost-Effective Layout-Aware Quantum Circuit Synthesis of Symmetric Functions On Triangular, Square, and Heavy-Hex Layouts

This repository contains the code and the resulting data from comparing Reed-Muller Lattice-based circuits (and a variant with CALA-$n$ [1]) with ESOP-based and BDD-based [2] circuits.

The `transpile.ipynb` notebook is used to transpile the circuits and calculate Transpilation Quantum Cost (TQC) [CALA]. The `maslov_cost.ipynb` was used to calculate Maslov cost for the ESOP-based circuits [3].

---

## Benchmarks
The benchmark functions tested are in the `benchmarks` folder. 
- rd53f1, rd53f2, rd73f1, rd73f3, rd84f1, rd84f3, and rd84f4 are from MCNC [4]. 
- sym6_63, sym9_71, sym10_207, and co14_1355 are from RevLib [5].
- sam_ex1, sam_ex2, sam_ex3, sam_ex4, and sam_ex5 are newly introduced.

---

## Circuits
The original (before transpilation) version of the Reed-Muller Lattice-based, ESOP-based, and BDD-Based circuits are in the `circuits` folder.
EXORCISM-4 [6] and the `esop_to_circuit.ipynb` notebook were used to create the ESOP-Based circuits. The BDD-Based circuits for sym6\_63 and sym9\_71 are from [2].

The transpiled circuits are in the `transpiled_circuits` folder. These were generated from inputting the circuits from the `circuits` folder into the `transpile.ipynb` notebook.

---

## References

[1] Al-Bayaty, A., Song, X. & Perkowski, M. CALA-n: A quantum library for realizing cost-effective 2-, 3-, 4-, and 5-bit gates
on IBM quantum computers using Bloch sphere approach, Clifford+ t gates, and layouts. arXiv preprint arXiv:2408.01025
(2024).

[2] Wille, R. & Drechsler, R. BDD-based synthesis of reversible logic for large functions. In 46th ACM/IEEE Design
Automation Conference, 270–275 (2009).

[3] Maslov, D. & Dueck, G. W. Improved quantum cost for n-bit Toffoli gates. Electron. Lett. 39, 1790–1791, DOI:
10.1049/el:20031202 (2003).

[4] Ko{\'z}mi{\'n}ski}, K. Benchmarks for layout synthesis –evolution and current status. In Proc. of the 28th ACM/IEEE Design
Automation Conference, 265–270 (1991).

[5] Wille, R., Große, D., Teuber, L., Dueck, G. W. & Drechsler, R. RevLib: An online resource for reversible functions and
reversible circuits. In Int’l Symp. on Multi-Valued Logic, 220–225 (2008). RevLib is available at http://www.revlib.org.

[6] Mishchenko, A. & Perkowski, M. Fast heuristic minimization of exclusive-sums-of-products. In Proceedings of the 5th
International Workshop on Applications of the Reed Muller Expansion in Circuit Design (2001).
