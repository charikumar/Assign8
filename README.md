# Family Tree in Prolog

---

## Repository & File Overview

**Assignment 8: Building a Family Tree in Prolog**:

1. **README** (usage instructions, project structure)  
2. **Prolog code** (`family_tree.pl`)  
3. **Sample queries** with expected outputs  

---

## 1. README

### Family Tree in Prolog

A simple Prolog program to model and query family relationships:  
- **parent/2**  
- **grandparent/2**  
- **sibling/2**  
- **cousin/2**  
- **descendant/2**  

### Project Structure

family-tree-prolog/ 
├── README.md ← this file
├── family_tree.pl ← Prolog facts & rules

### Prerequisites

- **SWI‑Prolog** (version ≥ 8.x)  
- Terminal or command prompt

### Sample Queries

```bash

?- consult('family_tree.pl').


?- parent(john, Child).


?- parent(arthur, Child).


?- grandparent(GP, carol).


?- descendant(david, arthur).


?- findall(A, descendant(carol, A), Ancestors).


?- findall(D, descendant(D, martha), Descs).


```
