solarized() {  # Solarized 1.0.0beta2
 S_base03=#002b36; S_base02=#073642; S_base01=#586e75; S_base00=#657b83
 S_base0=#839496;  S_base1=#93a1a1;  S_base2=#eee8d5;  S_base3=#fdf6e3
 S_yellow=#b58900; S_orange=#cb4b16; S_red=#dc322f;    S_magenta=#d33682
 S_violet=#6c71c4; S_blue=#268bd2;   S_cyan=#2aa198;   S_green=#859900
 if [ `date +%H` -lt 6 -o `date +%H` -ge 18 ]; then
  S_mono1=$S_base03; S_mono2=$S_base02; S_mono3=$S_base01; S_mono4=$S_base00
  S_mono5=$S_base0;  S_mono6=$S_base1;  S_mono7=$S_base2;  S_mono8=$S_base3
 else
  S_mono1=$S_base3;  S_mono2=$S_base2;  S_mono3=$S_base1;  S_mono4=$S_base0
  S_mono5=$S_base00; S_mono6=$S_base01; S_mono7=$S_base02; S_mono8=$S_base03
 fi
 printf "\e]10;$S_mono5\a\e]11;$S_mono1\a"
 printf "\e]4;0;$S_mono2\a\e]4;1;$S_red\a\e]4;2;$S_green\a\e]4;3;$S_yellow\a"
 printf "\e]4;4;$S_blue\a\e]4;5;$S_magenta\a\e]4;6;$S_cyan\a\e]4;7;$S_mono7\a"
 printf "\e]4;8;$S_mono1\a\e]4;9;$S_orange\a\e]4;10;$S_mono3\a\e]4;11;$S_mono4\a"
 printf "\e]4;12;$S_mono5\a\e]4;13;$S_violet\a\e]4;14;$S_mono6\a\e]4;15;$S_mono8\a"
}
export PS1="\[$(solarized)\]$PS1"
