;;; hide-comnt-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (hide/show-comments hide-whitespace-before-comment-flag
;;;;;;  ignore-comments-flag) "hide-comnt" "hide-comnt.el" (21779
;;;;;;  23539 209785 999000))
;;; Generated autoloads from hide-comnt.el

(defvar ignore-comments-flag t "\
*Non-nil means macro `with-comments-hidden' hides comments.")

(custom-autoload 'ignore-comments-flag "hide-comnt" t)

(defvar hide-whitespace-before-comment-flag t "\
*Non-nil means `hide/show-comments' hides whitespace preceding a comment.
It does not hide empty lines (newline chars), however.")

(custom-autoload 'hide-whitespace-before-comment-flag "hide-comnt" t)

(autoload 'hide/show-comments "hide-comnt" "\
Hide or show comments from START to END.
Interactively, hide comments, or show them if you use a prefix arg.
\(This is thus *NOT* a toggle command.)

If option `hide-whitespace-before-comment-flag' is non-nil, then hide
also any whitespace preceding a comment.

Interactively, START and END default to the region limits, if active.
Otherwise, including non-interactively, they default to `point-min'
and `point-max'.

Uses `save-excursion', restoring point.

Be aware that using this command to show invisible text shows *ALL*
such text, regardless of how it was hidden.  IOW, it does not just
show invisible text that you previously hid using this command.

From Lisp, a HIDE/SHOW value of `hide' hides comments.  Other values
show them.

This command does nothing in Emacs versions prior to Emacs 21, because
it needs `comment-search-forward'.

\(fn &optional HIDE/SHOW START END)" t nil)

;;;***

;;;### (autoloads nil nil ("hide-comnt-pkg.el") (21779 23539 217871
;;;;;;  906000))

;;;***

(provide 'hide-comnt-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; hide-comnt-autoloads.el ends here
