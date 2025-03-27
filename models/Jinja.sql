{%set country=['India','UK','USA','JAPAN']-%}
{%- for i in country-%}
{{i|capitalize}}
{%endfor%}

{%- set marks=59 -%}
{%- set pass_marks=60 -%}
{%- if marks>pass_marks -%}
you have passed the exam!
{%-else-%}
you have failed the exam!
{%endif%}