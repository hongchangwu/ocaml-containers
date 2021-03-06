
(* This file is free software, part of containers. See file "license" for more details. *)

(** {1 Handling S-expressions} *)

type 'a or_error = ('a, string) Result.result
type 'a sequence = ('a -> unit) -> unit
type 'a gen = unit -> 'a option

(** {2 Abstract representation of S-expressions}

    @since NEXT_RELEASE *)
module type SEXP = CCSexp_intf.SEXP

(** {2 Operations over S-expressions}

    @since NEXT_RELEASE *)
module type S = CCSexp_intf.S

(** {2 Functorized operations}

    This builds a parser and printer for S-expressions represented as
    in the [Sexp] argument.

    @since NEXT_RELEASE *)
module Make(Sexp : SEXP) : S with type t = Sexp.t

(** {2 Basics} *)

(** A simple, structural representation of S-expressions. *)
type t = [
  | `Atom of string
  | `List of t list
]

include S with type t := t
