;;; yas-setup.el --- YASnippet helper functions for nxml-mode
;;; Commentary:
;; These functions, for now, are primarily intended to work with PreTeXt

;;; Code:
;; PreTeXt functions

;; The function below is adapted from the discussion here:
;; https://emacs.stackexchange.com/questions/14278/mirror-with-character-replacement-in-yasnippet
;; The name of the current file is added to the beginning of the label
;; to avoid labels with the same name.
(defun string-for-pretext-labels (string)
  "format automatic labels for PreTeXt to use with YASnippet"
  (setq string  (replace-regexp-in-string "[[:punct:]]" "-" string))
  (setq string  (replace-regexp-in-string "[[:space:]]" "-" string))
  (setq string  (replace-regexp-in-string "-+" "-" string))
  (setq string  (replace-regexp-in-string "^-" "" string))
  (setq string  (replace-regexp-in-string "-$" "" string))
  (setq string  (downcase string)))

;;; yas-setup.el ends here
