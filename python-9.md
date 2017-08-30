# Complexity assumption
## Order of growth (O-Notation)
In general, the more input data, the more time is required to make output. The order of growth can be categolized in following formula.

- *O*(1) - Flat: The required time is same regardless of input size
- *O*(log(n)) - The required time is increased depend on input, but will becomming flatter if the input data is big enough. The base of Log is not big matter. For example, binary search.
- *O*(n) - Linear: The graph of the primary function. y = ax + b
- *O*(n log(n)): The required time is increased more than *O*(n), but not so severe as *O*(n^c). e.g. Vipire Number calculation
- *O*(n^c): n: Number of input, c: Constant, for example, calculation n\*n matrix is n\*\*2
- *O*(c^n): Very high growth
