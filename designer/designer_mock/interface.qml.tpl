import QtQuick

Item {
    {% for property in interface.properties %}
        {% if property.type.is_enum %}
            {% set type = "int" %}
            {% set default_value = "0" %}
        {% elif not property.type.is_primitive %}
            {% set type = "var" %}
            {% set default_value = "QtObject { }"%}
        {% else %}
            {% set type = property.type.name %}
            {% if property.type.name == "int" %}
                {% set default_value = "0"%}
            {% elif property.type.name == "string" %}
                {% set default_value = "\"Text\""%}
            {% elif property.type.name == "bool" %}
                {% set default_value = "false"%}
            {% elif property.type.name == "real" %}
                {% set default_value = "0.0"%}
            {% elif property.type.name == "var" %}
                {% set default_value = "0"%}
            {% endif %}
        {% endif %}
    property {{type}} {{property}}: {{default_value}}
    {% endfor %}
}
