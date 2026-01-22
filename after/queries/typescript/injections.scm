;extends

; query
;; string sql injection
((string_fragment) @injection.content
                   (#match? @injection.content "^(\r\n|\r|\n)*-{2,}( )*[sS][qQ][lL]")
                   (#set! injection.language "sql"))
        
; query
;; string javascript injection
((string_fragment) @injection.content
                   (#match? @injection.content "^(\r\n|\r|\n)*/{2,}( )*[jJ][aA][vV][aA][sS][cC][rR][iI][pP][tT]")
                   (#set! injection.language "javascript"))
        
; query
;; string typescript injection
((string_fragment) @injection.content
                   (#match? @injection.content "^(\r\n|\r|\n)//+( )*[tT][yY][pP][eE][sS][cC][rR][iI][pP][tT]")
                   (#set! injection.language "typescript"))
        
; query
;; string html injection
((string_fragment) @injection.content
                   (#match? @injection.content "^(\r\n|\r|\n)\\<\\!-{2,}( )*[hH][tT][mM][lL]( )*-{2,}\\>")
                   (#set! injection.language "html"))
        
; query
;; string css injection
((string_fragment) @injection.content
                   (#match? @injection.content "^(\r\n|\r|\n)/\\*+( )*[cC][sS][sS]( )*\\*+/")
                   (#set! injection.language "css"))
        
; query
;; string python injection
((string_fragment) @injection.content
                   (#match? @injection.content "^(\r\n|\r|\n)*#+( )*[pP][yY][tT][hH][oO][nN]")
                   (#set! injection.language "python"))
        
              ; query
              ;; comment python injection
              ((comment) @comment .
                (call_expression
                  function: (identifier) @_decorator
                  arguments: (arguments
                    (object
                      (pair
                        key: (property_identifier) @_key
                        value: (template_string) @injection.content
                      )
                    )
                  )
                )
                (#eq? @_decorator "Component")
                (#eq? @_key "template")
                (#match? @comment "^//+( )*[pP][yY][tT][hH][oO][nN]( )*")
                (#set! injection.language "python")
              )
            
              ; query
              ;; comment html injection
              ((comment) @comment .
                (call_expression
                  function: (identifier) @_decorator
                  arguments: (arguments
                    (object
                      (pair
                        key: (property_identifier) @_key
                        value: (template_string) @injection.content
                      )
                    )
                  )
                )
                (#eq? @_decorator "Component")
                (#eq? @_key "template")
                (#match? @comment "^//+( )*[hH][tT][mM][lL]( )*")
                (#set! injection.language "html")
              )
            
              ; query
              ;; comment sql injection
              ((comment) @comment .
                (call_expression
                  function: (identifier) @_decorator
                  arguments: (arguments
                    (object
                      (pair
                        key: (property_identifier) @_key
                        value: (template_string) @injection.content
                      )
                    )
                  )
                )
                (#eq? @_decorator "Component")
                (#eq? @_key "template")
                (#match? @comment "^//+( )*[sS][qQ][lL]( )*")
                (#set! injection.language "sql")
              )
            
              ; query
              ;; comment typescript injection
              ((comment) @comment .
                (call_expression
                  function: (identifier) @_decorator
                  arguments: (arguments
                    (object
                      (pair
                        key: (property_identifier) @_key
                        value: (template_string) @injection.content
                      )
                    )
                  )
                )
                (#eq? @_decorator "Component")
                (#eq? @_key "template")
                (#match? @comment "^//+( )*[tT][yY][pP][eE][sS][cC][rR][iI][pP][tT]( )*")
                (#set! injection.language "typescript")
              )
            
              ; query
              ;; comment css injection
              ((comment) @comment .
                (call_expression
                  function: (identifier) @_decorator
                  arguments: (arguments
                    (object
                      (pair
                        key: (property_identifier) @_key
                        value: (template_string) @injection.content
                      )
                    )
                  )
                )
                (#eq? @_decorator "Component")
                (#eq? @_key "template")
                (#match? @comment "^//+( )*[cC][sS][sS]( )*")
                (#set! injection.language "css")
              )
            
              ; query
              ;; comment javascript injection
              ((comment) @comment .
                (call_expression
                  function: (identifier) @_decorator
                  arguments: (arguments
                    (object
                      (pair
                        key: (property_identifier) @_key
                        value: (template_string) @injection.content
                      )
                    )
                  )
                )
                (#eq? @_decorator "Component")
                (#eq? @_key "template")
                (#match? @comment "^//+( )*[jJ][aA][vV][aA][sS][cC][rR][iI][pP][tT]( )*")
                (#set! injection.language "javascript")
              )
            