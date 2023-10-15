#include <QQmlExtensionPlugin>

#include "weather.h"

class ApplicationImportsPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID QQmlExtensionInterface_iid)
public:
    void registerTypes(const char *uri) override
    {
        Weather::registerTypes();
        Weather::registerQmlTypes();
    }
};

#include "plugin.moc"
