;; block-counter.lsp - Count and list all block instances in a drawing
;; Load: APPLOAD -> block-counter.lsp
;; Run: BCOUNT
;; Compatible with GstarCAD 2024-2026, AutoCAD 2021-2026

(defun c:BCOUNT (/ ss i name alist entry)
  (setq ss (ssget "X" '((0 . "INSERT")))
        i 0)
  (if ss
    (progn
      (while (< i (sslength ss))
        (setq name (cdr (assoc 2 (entget (ssname ss i))))
              entry (assoc name alist))
        (if entry
          (setq alist (subst (cons name (1+ (cdr entry))) entry alist))
          (setq alist (cons (cons name 1) alist)))
        (setq i (1+ i)))
      (foreach item alist
        (princ (strcat "\n" (car item) " : " (itoa (cdr item)))))
      (princ "\nBlock count done."))))