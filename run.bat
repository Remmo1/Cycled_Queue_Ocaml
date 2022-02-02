ocamlc -c QUEUE_MUT.mli
ocamlc -c QUEUE_MUT.ml
ocamlc -c QUEUE_MUT_Test.ml
ocamlc -o QUEUE_MUT_Test QUEUE_MUT.cmo QUEUE_MUT_Test.cmo
ocamlrun QUEUE_MUT_Test
