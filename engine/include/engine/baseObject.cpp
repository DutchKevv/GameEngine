#include "baseObject.h"
#include "shader.h"

BaseObject::BaseObject()
{
}

void BaseObject::init()
{
}

void BaseObject::update(float delta)
{
    for (BaseObject *child : children)
    {
        // consoleLog("update");
        child->update(delta);
    }
}

void BaseObject::draw(float delta)
{
    for (BaseObject *child : children)
    {
        // consoleLog("draw");
        child->draw(delta);
    }
}

void BaseObject::destroy()
{
}
