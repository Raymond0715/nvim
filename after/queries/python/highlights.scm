;; --- Triton compatibility patch ---

; 让所有 tl.xx 识别为函数调用
((attribute
  object: (identifier) @module
  attribute: (identifier) @function.call)
 (#eq? @module "tl"))

; 让 tl.constexpr 识别为类型
((attribute
  object: (identifier) @module
  attribute: (identifier) @type)
 (#eq? @module "tl")
 (#eq? @type "constexpr"))
