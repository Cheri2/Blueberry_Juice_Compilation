///music_get_room_bgm()

switch(room) {
    case rTitle:
    case rMenu:
    case rOptions:
        return "";
    case stc_room1:
    case stc_room2:
    case stc_room3:
    case stc_room4:
    case stc_room5:
    case stc_room6:
        return "stadv"
    case vor_room1:
    case vor_room2:
    case vor_room3:
    case vor_room4:
    case vor_room5:
    case vor_room6:
    case vor_roomend:
        return "musVoracious"

    default:
        return "";
}
