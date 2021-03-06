(* This file is free software, part of containers. See file "license" for more details. *)

(** {1 Basic Bool functions} *)

type t = bool

val compare : t -> t -> int
(** Total ordering on booleans, similar to {!Pervasives.compare}. *)

val equal : t -> t -> bool

val to_int : t -> int
(** [to_int true = 1], [to_int false = 0].
    @since NEXT_RELEASE *)

val of_int : int -> t
(** [of_int i] is the same as [i <> 0]
    @since NEXT_RELEASE *)

val negate : t -> t
(** Negation on booleans (functional version of [not]).
    @deprecated since 1.3, simply use {!not} instead. *)

type 'a printer = Format.formatter -> 'a -> unit

val pp : t printer
