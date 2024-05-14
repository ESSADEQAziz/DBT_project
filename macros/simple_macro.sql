{% macro to_celsius(Fahrenheit, decimal_places=1) %}
    ROUND(({{Fahrenheit}}) * 5/9,{{ decimal_places }})
{% endmacro %}