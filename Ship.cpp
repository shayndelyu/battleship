#include "Ship.h"

Ship::Ship() : Ship(1, '-', false) {

}

Ship::Ship (int length, char icon, bool isHorizontal) {
    this->length = length;
    this->icon = icon;
    this->isHorizontal = isHorizontal;
}

int Ship::getLength() const {
    return length;
}

char Ship::getIcon() const {
    return icon;
}

bool Ship::getIsHorizontal() const {
    return isHorizontal;
}