module {{module}}

{{module.module_name|upperfirst}} 1.0 {{module.module_name|upperfirst}}.qml
{% for interface in module.interfaces %}
{{interface}} 1.0 {{interface}}.qml
{% endfor %}
