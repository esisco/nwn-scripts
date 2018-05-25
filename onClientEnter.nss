void JumpToStart(object oPC)
{
    object oStartPoint;
    switch (GetRacialType(oPC)) {
        case RACIAL_TYPE_HUMAN:
            oStartPoint = GetWaypointByTag("WP_HUMAN");
            break;
        case RACIAL_TYPE_HALFORC:
            oStartPoint = GetWaypointByTag("WP_HALFORC");
            break;
        case RACIAL_TYPE_ELF:
            oStartPoint = GetWaypointByTag("WP_ELF");
            break;
        case RACIAL_TYPE_DWARF:
            oStartPoint = GetWaypointByTag("WP_DWARF");
            break;
        default:
            oStartPoint = GetWaypointByTag("WP_OTHER");
            break;
    }
    ClearAllActions();
    JumpToObject(oStartPoint);
}

void main()
{
    object oPC = GetEnteringObject();
    if (GetIsPC(oPC)) {
        JumpToStart(oPC);
    }
}