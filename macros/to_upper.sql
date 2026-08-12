{% macro to_upper(column_name) %}
    UPPER({{ column_name }})
{% endmacro %}