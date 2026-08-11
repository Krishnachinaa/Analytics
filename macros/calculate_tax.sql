{% macro calculate_tax(order_amount) %}
    {{ order_amount }} * 0.18
{% endmacro %}