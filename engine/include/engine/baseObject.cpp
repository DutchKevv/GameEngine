#include "baseObject.h"
#include "shader.h"

BaseObject::BaseObject()
{
}

void BaseObject::init()
{
}

void BaseObject::update()
{
    for (BaseObject *child : children)
    {
        // consoleLog("update");
        child->update();
    }
}

void BaseObject::draw()
{
    for (BaseObject *child : children)
    {
        // consoleLog("draw");
        child->draw();
    }
}

void BaseObject::destroy()
{
}
