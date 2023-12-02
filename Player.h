#ifndef PLAYER_H
#define PLAYER_H
#include "Entity.h"

class Player : public Entity
{
private:
    bool thrust;
    int dir;

public:
    Player();
    void update();
    // Generate definitions for getters and setters
    bool getThrust();
    void setThrust(bool thrust);
    int getDir();
    void setDir(int dir);
};

#endif