# Adapted from https://github.com/elerch/vcsh_mdlrc/blob/master/.mdl.rb
all
# https://github.com/markdownlint/markdownlint/blob/925eadbbbe507ffa477edd93dbe77efee962a486/test/rule_tests/long_lines_code_style.rb
rule 'MD003', :style => :atx
exclude_rule 'MD013'
rule 'MD029', :style => :ordered
# rule 'MD046', :style => :consistent
