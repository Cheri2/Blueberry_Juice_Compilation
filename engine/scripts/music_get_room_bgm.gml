///music_get_room_bgm()

switch(room) {
    case rTitle:
    case rMenu:
    case rOptions:
        return "";
    case stb_room1:
    case stb_room2:
    case stb_room3:
    case stb_room4:
        return "lapisbgm"
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
    case vor_room7:
    case vor_roomend:
        return "musVoracious"
    case rBlueberry1:
    case rBlueberry2:
    case rBlueberry3:
    case rBlueBerry4:
    case rBlueberry5:
    case rBlueberry6:
    case rBlueberrySecret:
        return "musLevis"
    case stv_room1:
    case stv_room2:
        case stv_room3:
    case stv_room4:
        return "trrt"
    default:
        return "";
}
