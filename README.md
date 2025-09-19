# 🐧 Arch Dotfiles

Мои личные конфиги для **Arch Linux** с **Hyprland** с темой **Catppucin Macchiato**  и кучей приложений.  Фактически большая часть это просто темы **Macchiato** под эти утилиты, однико тут есть и мои повседневные настройки, например в config.fish, так и мои обычные конфиги с цветами из **Catppucin**. Ниже я привёл ссылки на темы или конфиги, которые я взял с других репозиториев. 
Здесь собрано всё, что я использую каждый день: от оболочки до редактора и статус-бара.  


---

## 📂 Структура
- **bottom/** — конфиг для [bottom](https://github.com/ClementTsang/bottom), мониторинг ресурсов в терминале. [Catppuccin bottom theme](https://github.com/catppuccin/bottom)  
- **fastfetch/** — оформление [fastfetch](https://github.com/fastfetch-cli/fastfetch) для красивого вывода инфы о системе. [Fastfetch hyprland style](https://github.com/LierB/fastfetch)  
- **fish/** — мои алиасы и функции для [fish shell](https://fishshell.com/)  
- **hypr/** — конфиги [Hyprland](https://hyprland.org/)  
- **kitty/** — оформление и настройки терминала [Kitty](https://sw.kovidgoyal.net/kitty/). [Catppuccin kitty theme](https://github.com/catppuccin/kitty)  
- **mako/** — конфиги [mako](https://wayland.emersion.fr/mako/) (уведомления под Wayland). [Catppuccin mako theme](https://github.com/catppuccin/mako)  
- **nvim/** — мой [Neovim](https://neovim.io/) со всеми настройками. [Catppuccin nvim theme](https://github.com/catppuccin/nvim)  
- **ranger/** — конфиги терминального файлового менеджера [ranger](https://ranger.github.io/)  
- **spicetify/** — оформление Spotify через [spicetify](https://github.com/spicetify/spicetify-cli). [Catppuccin spicetify theme](https://github.com/catppuccin/spicetify)  
- **waybar/** — мой статус-бар для Hyprland ([Waybar](https://github.com/Alexays/Waybar)). [Catppuccin waybar theme](https://github.com/catppuccin/waybar)  
- **wofi/** — конфиги [wofi](https://hg.sr.ht/~scoopta/wofi), меню приложений/эмодзи/прочее  

---

## 🚀 Установка
Просто скопируй нужные конфиги в соответствующие директории.  

Например:  
```bash
# fish
cp -r fish/* ~/.config/fish/

# kitty
cp -r kitty/* ~/.config/kitty/

# waybar
cp -r waybar/* ~/.config/waybar/
````

---

## ✨ Используемые штуки

* **WM:** Hyprland
* **Bar:** Waybar
- **Menu:** Wofi
* **Shell:** Fish
* **Terminal:** Kitty
* **Editor:** Neovim
- **Theme:** Catppuccin (Macchiato)
___
## 📝 Фишки и изменения
- **Hyprfetch:** алиас из конфига fish, запускающий fastfetch с красивым конфигом как на скриншоте ниже (автозапуск при каждой сессии терминала)
- Убрано оповещение об обновлении Hyprland
- **! Класические бинды Hyprland изменены:**
	- Открытие терминала на Mod+E
	- Закрытие окна на Mod + Q
	- Запуск Wofi на Mod + D

---
## 📸 Скриншоты

**Hyprfetch + Ranger + Bottom**  
![Hyprfetch + Ranger + Bottom](images/Pasted%20image%2020250919164544.png)

**Wallpaper + Waybar**  
![Wallpaper + Waybar](images/Pasted%20image%2020250919164600.png)

**Spicetify + Neovim + Mako**  
![Spicetify + Neovim + Mako](images/Pasted%20image%2020250919164722.png)


---

## 📜 Лицензия

Никаких лицензий. Только анархия)


