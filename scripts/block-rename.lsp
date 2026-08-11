;; block-rename.lsp - Batch rename block definitions with rules
;; Load: APPLOAD -> block-rename.lsp
;; Run: BRENAME
;; Compatible with GstarCAD 2024-2026, AutoCAD 2021-2026

(defun c:BRENAME (/ old new blks blk)
  (setq old (getstring T "\nCurrent block name: ")
        new (getstring T "\nNew block name: ")
        blks (vla-get-blocks
              (vla-get-activedocument (vlax-get-acad-object))))
  (vlax-for blk blks
    (if (= (strcase (vla-get-name blk)) (strcase old))
      (vla-put-name blk new)))
  (princ (strcat "\nBlock '" old "' renamed to '" new "'.")))