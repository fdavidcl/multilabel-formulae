---
title: Common multilabel formulae
subtitle: ...under a common notation
author: David Charte
abstract: "Multilabel Classification is a branch of Data Mining in which many different metrics and equations are defined. Each author uses different notation and basic definitions, thus difficulting the coherence of future papers where some of these formulas are used. This is a document where the multilabel scenario is presented with simple basic definitions, and a list of commonly used formulas are rigurously adapted to this notation, in an attempt to introduce them in a clear way."
header-includes:
  \newcommand{\func}[1]{\operatorname{\mathit{#1}}}
  \newcommand{\const}[1]{\mathit{#1}}
  \newcommand{\abs}[1]{\left\lvert{#1}\right\rvert}

mainfont: PT Serif
---

# Definitions

Let $A_1, A_2, \dots A_f$ be arbitrary sets. We will call them *input attributes*
or simply *attributes*. An instance will take a certain value on each of these
sets, that is, we will be working with elements of their cartesian product,
$A_1\times A_2\times\dots\times A_f$.

Let $L$ be a finite set. This will be the set of all
possible labels. Each instance of a dataset will then have a subset of active
labels or *labelset*, $y \subset L$.

Let $D$ be a finite subset of $A_1\times A_2\times\dots\times A_f\times\mathcal{P}(L)$,
where $\mathcal{P}(L)$ is the powerset of $L$, that is, the set of all possible
combinations of labels. We will call $D$ a *dataset* and each of its elements
an *instance*: $(x, y)\in D$ where $x=(x_1,x_2,\dots x_f)\in A_1\times A_2\times\dots\times A_f$ and
$y=\{l_1,\dots l_k\} \in\mathcal{P}(L)$.

**Note**: Since $D$ is a set, we will be assuming no two instances are identical.

# Basic measures

In the following we will assume $D$ is a fixed set. Otherwise, many of the
measures would be dependent on D. Some basic data directly extracted from the definitions are:

* Number of input attributes, $f$
* Number of labels, $\abs L$
* Number of instances, $\abs D$
* Number of distinct labelsets, $\abs{\{Y:(X, Y)\in D\}}$

## Example

Consider the following problem: several text documents are analysed and labeled. Each document can be labeled in several topics. After extracting relevant words, our dataset looks like the following table:



# Label-related measures

Many of the measures specific to multilabel classification are related to the
labels themselves. For instance, we can find out the mean number of labels in a labelset
(*Card*, @eq:Card) and its proportion as to the total number of labels (*Dens*,
@eq:Dens):

$$ \func{Card} = \frac 1 {\abs D} \sum_{(x,y)\in D} \abs y $$ {#eq:Card}

$$ \func{Dens} = \frac 1 {\abs D \abs L} \sum_{(x,y)\in D} \abs y $$ {#eq:Dens}

# Imbalance and concurrence
