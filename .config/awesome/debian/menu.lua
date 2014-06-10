-- automatically generated file. Do not edit (see /usr/share/doc/menu/html)

module("debian.menu")

Debian_menu = {}

Debian_menu["Debian_Игры_Головоломки"] = {
	{"gbrainy","/usr/games/gbrainy","/usr/share/pixmaps/gbrainy.xpm"},
	{"Gnome Sudoku","/usr/games/gnome-sudoku","/usr/share/pixmaps/gnome-sudoku.xpm"},
	{"Gnomine","/usr/games/gnomine","/usr/share/pixmaps/gnomine.xpm"},
	{"Quadrapassel","/usr/games/quadrapassel","/usr/share/pixmaps/quadrapassel.xpm"},
}
Debian_menu["Debian_Игры_Игрушки"] = {
	{"Oclock","oclock"},
	{"Xclock (analog)","xclock -analog"},
	{"Xclock (digital)","xclock -digital -update 1"},
	{"Xeyes","xeyes"},
	{"Xlogo","xlogo"},
}
Debian_menu["Debian_Игры_Карточные"] = {
	{"Gnome FreeCell","/usr/games/sol --variation freecell",},
	{"Gnome Solitaire Games","/usr/games/sol","/usr/share/pixmaps/aisleriot.xpm"},
}
Debian_menu["Debian_Игры_Настольные"] = {
	{"Gnome Mahjongg","/usr/games/mahjongg","/usr/share/pixmaps/mahjongg.xpm"},
}
Debian_menu["Debian_Игры"] = {
	{ "Головоломки", Debian_menu["Debian_Игры_Головоломки"] },
	{ "Игрушки", Debian_menu["Debian_Игры_Игрушки"] },
	{ "Карточные", Debian_menu["Debian_Игры_Карточные"] },
	{ "Настольные", Debian_menu["Debian_Игры_Настольные"] },
}
Debian_menu["Debian_Приложения_Видео"] = {
	{"Totem","/usr/bin/totem","/usr/share/pixmaps/totem.xpm"},
}
Debian_menu["Debian_Приложения_Графика"] = {
	{"GNOME Screenshot Tool","/usr/bin/gnome-panel-screenshot"},
	{"ImageMagick","/usr/bin/display logo:","/usr/share/pixmaps/display.xpm"},
	{"OpenOffice.org Draw","/usr/bin/oodraw","/usr/share/icons/hicolor/32x32/apps/openofficeorg3-draw.xpm"},
	{"X Window Snapshot","xwd | xwud"},
}
Debian_menu["Debian_Приложения_Научные_Математика"] = {
	{"Bc", "x-terminal-emulator -e ".."/usr/bin/bc"},
	{"Dc", "x-terminal-emulator -e ".."/usr/bin/dc"},
	{"GCalcTool","/usr/bin/gcalctool","/usr/share/pixmaps/gcalctool.xpm"},
	{"Gnuplot", "x-terminal-emulator -e ".."/usr/bin/gnuplot"},
	{"OpenOffice.org Math","/usr/bin/oomath","/usr/share/icons/hicolor/32x32/apps/openofficeorg3-math.xpm"},
	{"Xcalc","xcalc"},
}
Debian_menu["Debian_Приложения_Научные"] = {
	{ "Математика", Debian_menu["Debian_Приложения_Научные_Математика"] },
}
Debian_menu["Debian_Приложения_Оболочки"] = {
	{"Bash", "x-terminal-emulator -e ".."/bin/bash --login"},
	{"Dash", "x-terminal-emulator -e ".."/bin/dash -i"},
	{"Sh", "x-terminal-emulator -e ".."/bin/sh --login"},
	{"Zsh", "x-terminal-emulator -e ".."/bin/zsh4"},
}
Debian_menu["Debian_Приложения_Офисные"] = {
	{"HPLIP Fax address book","/usr/bin/hp-fab","/usr/share/pixmaps/HPmenu.xpm"},
	{"HPLIP Fax utility","/usr/bin/hp-sendfax","/usr/share/pixmaps/HPmenu.xpm"},
	{"OpenOffice.org Calc","/usr/bin/oocalc","/usr/share/icons/hicolor/32x32/apps/openofficeorg3-calc.xpm"},
	{"OpenOffice.org Impress","/usr/bin/ooimpress","/usr/share/icons/hicolor/32x32/apps/openofficeorg3-impress.xpm"},
	{"OpenOffice.org Writer","/usr/bin/oowriter","/usr/share/icons/hicolor/32x32/apps/openofficeorg3-writer.xpm"},
}
Debian_menu["Debian_Приложения_Программирование"] = {
	{"Erlang Shell", "x-terminal-emulator -e ".."/usr/bin/erl","/usr/share/pixmaps/erlang.xpm"},
	{"GDB", "x-terminal-emulator -e ".."/usr/bin/gdb"},
	{"Python (v2.6)", "x-terminal-emulator -e ".."/usr/bin/python2.6","/usr/share/pixmaps/python2.6.xpm"},
	{"Tclsh8.4", "x-terminal-emulator -e ".."/usr/bin/tclsh8.4"},
	{"Tclsh8.5", "x-terminal-emulator -e ".."/usr/bin/tclsh8.5"},
	{"TkWish8.4","x-terminal-emulator -e /usr/bin/wish8.4"},
	{"TkWish8.5","x-terminal-emulator -e /usr/bin/wish8.5"},
}
Debian_menu["Debian_Приложения_Программы_просмотра"] = {
	{"Evince","/usr/bin/evince","/usr/share/pixmaps/evince.xpm"},
	{"Eye of GNOME","/usr/bin/eog","/usr/share/pixmaps/gnome-eog.xpm"},
	{"F-Spot","/usr/bin/f-spot"},
	{"Xditview","xditview"},
	{"XDvi","/usr/bin/xdvi"},
}
Debian_menu["Debian_Приложения_Работа_со_звуком"] = {
	{"gmix (Gnome 2.0 Mixer)","/usr/bin/gnome-volume-control","/usr/share/pixmaps/gnome-mixer.xpm"},
	{"grecord (GNOME 2.0 Recorder)","/usr/bin/gnome-sound-recorder","/usr/share/pixmaps/gnome-grecord.xpm"},
	{"Rhythmbox","/usr/bin/rhythmbox","/usr/share/pixmaps/rhythmbox-small.xpm"},
}
Debian_menu["Debian_Приложения_Работа_с_текстом"] = {
	{"Character map","/usr/bin/gucharmap"},
	{"GNOME Dictionary","/usr/bin/gnome-dictionary","/usr/share/pixmaps/gdict.xpm"},
}
Debian_menu["Debian_Приложения_Редакторы"] = {
	{"Gedit","/usr/bin/gedit","/usr/share/pixmaps/gedit-icon.xpm"},
	{"Nano", "x-terminal-emulator -e ".."/bin/nano","/usr/share/nano/nano-menu.xpm"},
	{"Xedit","xedit"},
}
Debian_menu["Debian_Приложения_Сеть_Общение"] = {
	{"Evolution","/usr/bin/evolution","/usr/share/pixmaps/evolution.xpm"},
	{"Mutt", "x-terminal-emulator -e ".."/usr/bin/mutt","/usr/share/pixmaps/mutt.xpm"},
	{"qutIM","/usr/bin/qutim","/usr/share/pixmaps/qutim.xpm"},
	{"Telnet", "x-terminal-emulator -e ".."/usr/bin/telnet"},
	{"Terminal Server Client","/usr/bin/tsclient -f","/usr/share/pixmaps/tsclient.xpm"},
	{"Xbiff","xbiff"},
}
Debian_menu["Debian_Приложения_Сеть_Пересылка_файлов"] = {
	{"Transmission BitTorrent Client (GTK)","/usr/bin/transmission","/usr/share/pixmaps/transmission.xpm"},
}
Debian_menu["Debian_Приложения_Сеть_Просмотр_веб"] = {
	{"Firefox Browser","/usr/bin/firefox","/usr/share/pixmaps/firefox.png"},
	{"w3m", "x-terminal-emulator -e ".."/usr/bin/w3m /usr/share/doc/w3m/MANUAL.html"},
}
Debian_menu["Debian_Приложения_Сеть"] = {
	{ "Общение", Debian_menu["Debian_Приложения_Сеть_Общение"] },
	{ "Пересылка файлов", Debian_menu["Debian_Приложения_Сеть_Пересылка_файлов"] },
	{ "Просмотр веб", Debian_menu["Debian_Приложения_Сеть_Просмотр_веб"] },
}
Debian_menu["Debian_Приложения_Системные_Администрирование"] = {
	{"Aptitude", "x-terminal-emulator -e ".."/usr/bin/aptitude"},
	{"Debian Task selector", "x-terminal-emulator -e ".."su-to-root -c tasksel"},
	{"DSL/PPPoE configuration tool", "x-terminal-emulator -e ".."/usr/sbin/pppoeconf","/usr/share/pixmaps/pppoeconf.xpm"},
	{"Editres","editres"},
	{"Gnome Control Center","/usr/bin/gnome-control-center","/usr/share/pixmaps/control-center2.xpm"},
	{"GNOME Network Tool","/usr/bin/gnome-nettool","/usr/share/pixmaps/gnome-nettool.xpm"},
	{"HPLIP File printing","/usr/bin/hp-print","/usr/share/pixmaps/HPmenu.xpm"},
	{"OpenJDK Java 6 Policy Tool","/usr/lib/jvm/java-6-openjdk/bin/policytool","/usr/share/pixmaps/openjdk-6.xpm"},
	{"pppconfig", "x-terminal-emulator -e ".."su-to-root -p root -c /usr/sbin/pppconfig"},
	{"Shares Admin","/usr/bin/shares-admin","/usr/share/gnome-system-tools/pixmaps/shares.xpm"},
	{"TeXconfig", "x-terminal-emulator -e ".."/usr/bin/texconfig"},
	{"Time Admin","/usr/bin/time-admin","/usr/share/gnome-system-tools/pixmaps/time.xpm"},
	{"User accounts Admin","/usr/bin/users-admin","/usr/share/gnome-system-tools/pixmaps/users.xpm"},
	{"Xclipboard","xclipboard"},
	{"Xfontsel","xfontsel"},
	{"Xkill","xkill"},
	{"Xrefresh","xrefresh"},
}
Debian_menu["Debian_Приложения_Системные_Аппаратное_обеспечение"] = {
	{"HPLIP Toolbox","/usr/bin/hp-toolbox","/usr/share/pixmaps/HPmenu.xpm"},
	{"Xvidtune","xvidtune"},
}
Debian_menu["Debian_Приложения_Системные_Безопасность"] = {
	{"Seahorse","/usr/bin/seahorse","/usr/share/pixmaps/seahorse.xpm"},
}
Debian_menu["Debian_Приложения_Системные_Мониторинг"] = {
	{"GNOME Log Viewer","/usr/bin/gnome-system-log","/usr/share/pixmaps/gnome-system-log.xpm"},
	{"GNOME system monitor","/usr/bin/gnome-system-monitor"},
	{"htop", "x-terminal-emulator -e ".."/usr/bin/htop"},
	{"Pstree", "x-terminal-emulator -e ".."/usr/bin/pstree.x11","/usr/share/pixmaps/pstree16.xpm"},
	{"Top", "x-terminal-emulator -e ".."/usr/bin/top"},
	{"Xconsole","xconsole -file /dev/xconsole"},
	{"Xev","x-terminal-emulator -e xev"},
	{"Xload","xload"},
}
Debian_menu["Debian_Приложения_Системные_Управление_пакетами"] = {
	{"Synaptic Package Manager","/usr/bin/gksu /usr/sbin/synaptic","/usr/share/synaptic/pixmaps/synaptic_32x32.xpm"},
}
Debian_menu["Debian_Приложения_Системные_Языковое_окружение"] = {
	{"im-switch", "x-terminal-emulator -e ".."/usr/bin/im-switch"},
}
Debian_menu["Debian_Приложения_Системные"] = {
	{ "Администрирование", Debian_menu["Debian_Приложения_Системные_Администрирование"] },
	{ "Аппаратное обеспечение", Debian_menu["Debian_Приложения_Системные_Аппаратное_обеспечение"] },
	{ "Безопасность", Debian_menu["Debian_Приложения_Системные_Безопасность"] },
	{ "Мониторинг", Debian_menu["Debian_Приложения_Системные_Мониторинг"] },
	{ "Управление пакетами", Debian_menu["Debian_Приложения_Системные_Управление_пакетами"] },
	{ "Языковое окружение", Debian_menu["Debian_Приложения_Системные_Языковое_окружение"] },
}
Debian_menu["Debian_Приложения_Специальные_возможности"] = {
	{"Xmag","xmag"},
}
Debian_menu["Debian_Приложения_Управление_данными"] = {
	{"Tomboy","/usr/bin/tomboy"},
}
Debian_menu["Debian_Приложения_Управление_файлами"] = {
	{"Baobab","/usr/bin/baobab","/usr/share/pixmaps/baobab.xpm"},
	{"Brasero","/usr/bin/brasero"},
	{"File-Roller","/usr/bin/file-roller","/usr/share/pixmaps/file-roller.xpm"},
	{"GNOME Search Tool","/usr/bin/gnome-search-tool","/usr/share/pixmaps/gsearchtool.xpm"},
	{"Nautilus","/usr/bin/nautilus","/usr/share/pixmaps/nautilus.xpm"},
	{"PCManFM","/usr/bin/pcmanfm"},
}
Debian_menu["Debian_Приложения_Эмуляторы_терминалов"] = {
	{"Gnome Terminal","/usr/bin/gnome-terminal","/usr/share/pixmaps/gnome-terminal.xpm"},
	{"Rxvt-Unicode","urxvt","/usr/share/pixmaps/urxvt.xpm"},
	{"Rxvt-Unicode (Black,Xft)","urxvt -fn \"xft:Courier New\" -rv","/usr/share/pixmaps/urxvt.xpm"},
	{"XTerm","xterm","/usr/share/pixmaps/xterm-color_32x32.xpm"},
	{"X-Terminal as root (GKsu)","/usr/bin/gksu -u root /usr/bin/x-terminal-emulator","/usr/share/pixmaps/gksu-debian.xpm"},
	{"XTerm (Unicode)","uxterm","/usr/share/pixmaps/xterm-color_32x32.xpm"},
}
Debian_menu["Debian_Приложения"] = {
	{ "Видео", Debian_menu["Debian_Приложения_Видео"] },
	{ "Графика", Debian_menu["Debian_Приложения_Графика"] },
	{ "Научные", Debian_menu["Debian_Приложения_Научные"] },
	{ "Оболочки", Debian_menu["Debian_Приложения_Оболочки"] },
	{ "Офисные", Debian_menu["Debian_Приложения_Офисные"] },
	{ "Программирование", Debian_menu["Debian_Приложения_Программирование"] },
	{ "Программы просмотра", Debian_menu["Debian_Приложения_Программы_просмотра"] },
	{ "Работа со звуком", Debian_menu["Debian_Приложения_Работа_со_звуком"] },
	{ "Работа с текстом", Debian_menu["Debian_Приложения_Работа_с_текстом"] },
	{ "Редакторы", Debian_menu["Debian_Приложения_Редакторы"] },
	{ "Сеть", Debian_menu["Debian_Приложения_Сеть"] },
	{ "Системные", Debian_menu["Debian_Приложения_Системные"] },
	{ "Специальные возможности", Debian_menu["Debian_Приложения_Специальные_возможности"] },
	{ "Управление данными", Debian_menu["Debian_Приложения_Управление_данными"] },
	{ "Управление файлами", Debian_menu["Debian_Приложения_Управление_файлами"] },
	{ "Эмуляторы терминалов", Debian_menu["Debian_Приложения_Эмуляторы_терминалов"] },
}
Debian_menu["Debian_Справка"] = {
	{"Info", "x-terminal-emulator -e ".."info"},
	{"TeXdoctk","/usr/bin/texdoctk"},
	{"Xman","xman"},
	{"yelp","/usr/bin/yelp"},
}
Debian_menu["Debian"] = {
	{ "Игры", Debian_menu["Debian_Игры"] },
	{ "Приложения", Debian_menu["Debian_Приложения"] },
	{ "Справка", Debian_menu["Debian_Справка"] },
}
