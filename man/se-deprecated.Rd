% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/colwise.R, R/count-tally.R, R/distinct.R,
%   R/do.r, R/funs.R, R/group-by.r, R/group-indices.R, R/manip.r,
%   R/select-vars.R, R/tbl-sql.r
\name{summarise_each_}
\alias{summarise_each_}
\alias{summarize_each_}
\alias{mutate_each_}
\alias{tally_}
\alias{count_}
\alias{add_tally_}
\alias{add_count_}
\alias{distinct_}
\alias{do_}
\alias{funs_}
\alias{group_by_}
\alias{group_indices_}
\alias{filter_}
\alias{slice_}
\alias{summarise_}
\alias{summarize_}
\alias{mutate_}
\alias{transmute_}
\alias{arrange_}
\alias{select_}
\alias{rename_}
\alias{se-deprecated}
\alias{select_vars_}
\alias{rename_vars_}
\alias{do_.tbl_sql}
\title{Deprecated SE versions of main verbs.}
\usage{
summarise_each_(tbl, funs, vars)

summarize_each_(tbl, funs, vars)

mutate_each_(tbl, funs, vars)

tally_(x, wt, sort = FALSE)

count_(x, vars, wt = NULL, sort = FALSE)

add_tally_(x, wt, sort = FALSE)

add_count_(x, vars, wt = NULL, sort = FALSE)

distinct_(.data, ..., .dots, .keep_all = FALSE)

do_(.data, ..., .dots = list())

funs_(dots, args = list(), env = base_env())

group_by_(.data, ..., .dots = list(), add = FALSE)

group_indices_(.data, ..., .dots = list())

filter_(.data, ..., .dots = list())

slice_(.data, ..., .dots = list())

summarise_(.data, ..., .dots = list())

summarize_(.data, ..., .dots = list())

mutate_(.data, ..., .dots = list())

transmute_(.data, ..., .dots = list())

arrange_(.data, ..., .dots = list())

select_(.data, ..., .dots = list())

rename_(.data, ..., .dots = list())

select_vars_(vars, args, include = character(), exclude = character())

rename_vars_(vars, args)

\method{do_}{tbl_sql}(.data, ..., .dots = list(), .chunk_size = 10000L)
}
\arguments{
\item{tbl}{a tbl}

\item{funs}{List of function calls, generated by \code{\link[=funs]{funs()}}, or
a character vector of function names.}

\item{vars}{Various meanings depending on the verb.}

\item{x}{a \code{\link[=tbl]{tbl()}} to tally/count.}

\item{wt}{(Optional) If omitted, will count the number of rows. If
specified, will perform a "weighted" tally by summing the
(non-missing) values of variable \code{wt}. This variable is passed by
expression and evaluated in the context of the data frame. It
supports \link[rlang:quasiquotation]{unquoting}.}

\item{sort}{if \code{TRUE} will sort output in descending order of \code{n}}

\item{.data}{A data frame.}

\item{.keep_all}{If \code{TRUE}, keep all variables in \code{.data}.
If a combination of \code{...} is not distinct, this keeps the
first row of values.}

\item{dots, .dots, ...}{Pair/values of expressions coercible to lazy objects.}

\item{args}{Various meanings depending on the verb.}

\item{env}{The environment in which functions should be evaluated.}

\item{add}{When \code{add = FALSE}, the default, \code{group_by()} will
override existing groups. To instead add to the existing groups,
use \code{add = TRUE}}

\item{include}{Character vector of column names to always
include/exclude.}

\item{exclude}{Character vector of column names to always
include/exclude.}

\item{.chunk_size}{The size of each chunk to pull into R. If this number is
too big, the process will be slow because R has to allocate and free a lot
of memory. If it's too small, it will be slow, because of the overhead of
talking to the database.}
}
\description{
dplyr used to offer twin versions of each verb suffixed with an
underscore. These versions had standard evaluation (SE) semantics:
rather than taking arguments by code, like NSE verbs, they took
arguments by value. Their purpose was to make it possible to
program with dplyr. However, dplyr now uses tidy evaluation
semantics. NSE verbs still capture their arguments, but you can now
unquote parts of these arguments. This offers full programmability
with NSE verbs. Thus, the underscored versions are now superfluous.
}
\details{
Unquoting triggers immediate evaluation of its operand and inlines
the result within the captured expression. This result can be a
value or an expression to be evaluated later with the rest of the
argument. See \code{vignette("programming")} for more information.
}
