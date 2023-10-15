import QtQuick

QtObject {
    {% for enum in module.enums %}
    enum {{enum}} {
        {% for member in enum.members %}
        {{member.name}}{{ "," if not loop.last else "" }}
        {% endfor %}
    }
    {% endfor %}
}
