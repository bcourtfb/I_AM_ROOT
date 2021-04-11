#!/bin/bash


#Ensure the script is being ran as root or with sudo privileges
if [ "$(id -u)" -ne 0 ]; then
	printf '\e[0;36m%-6s\e[m' "$(tput bold)

    ░▀█▀░█░█░▀█▀░█▀▀░░░█▀▀░█▀▀░█▀▄░▀█▀░█▀█░▀█▀░░░█▄█░█░█░█▀▀░▀█▀░░░█▀▄░█▀▀
    ░░█░░█▀█░░█░░▀▀█░░░▀▀█░█░░░█▀▄░░█░░█▀▀░░█░░░░█░█░█░█░▀▀█░░█░░░░█▀▄░█▀▀
    ░░▀░░▀░▀░▀▀▀░▀▀▀░░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░░░░▀░░░░▀░▀░▀▀▀░▀▀▀░░▀░░░░▀▀░░▀▀▀
    ░█▀▄░█▀█░█▀█░░░█▀█░█▀▀░░░█▀▄░█▀█░█▀█░▀█▀░░░█▀█░█▀▄░░░█▀▀░█░█░█▀▄░█▀█
    ░█▀▄░█▀█░█░█░░░█▀█░▀▀█░░░█▀▄░█░█░█░█░░█░░░░█░█░█▀▄░░░▀▀█░█░█░█░█░█░█
    ░▀░▀░▀░▀░▀░▀░░░▀░▀░▀▀▀░░░▀░▀░▀▀▀░▀▀▀░░▀░░░░▀▀▀░▀░▀░░░▀▀▀░▀▀▀░▀▀░░▀▀▀

    "
	exit 1
fi

echo "
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;2;0;0m#[0m[38;2;2;0;0m#[0m[38;2;5;0;0m#[0m[38;2;14;0;0m#[0m[38;2;15;0;0m#[0m[38;2;28;0;0m#[0m[38;2;44;0;0m#[0m[38;2;47;0;1m#[0m[38;2;40;0;0m#[0m[38;2;38;0;1m#[0m[38;2;27;0;0m#[0m[38;2;30;0;0m#[0m[38;2;33;0;0m#[0m[38;2;13;0;0m#[0m[38;2;12;0;0m#[0m[38;2;11;0;0m#[0m[38;2;14;0;0m#[0m[38;2;9;0;0m#[0m[38;2;5;0;0m#[0m[38;2;5;0;0m#[0m[38;2;7;0;0m#[0m[38;2;5;0;0m#[0m[38;2;1;0;0m#[0m[38;2;1;0;0m#[0m[38;2;1;0;0m#[0m[38;2;1;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;5;0;0m#[0m[38;2;9;0;0m#[0m[38;2;12;0;0m#[0m[38;2;34;0;0m#[0m[38;2;51;0;1m#[0m[38;2;69;0;1m#[0m[38;2;85;0;1m#[0m[38;2;92;0;1m#[0m[38;2;103;0;1m#[0m[38;2;91;0;1m#[0m[38;2;89;0;1m#[0m[38;2;99;0;1m#[0m[38;2;84;0;1m#[0m[38;2;78;0;1m#[0m[38;2;51;0;1m#[0m[38;2;56;0;1m#[0m[38;2;42;0;1m#[0m[38;2;64;0;1m#[0m[38;2;41;0;1m#[0m[38;2;48;0;1m#[0m[38;2;34;0;1m#[0m[38;2;32;0;1m#[0m[38;2;19;0;0m#[0m[38;2;6;0;0m#[0m[38;2;5;0;0m#[0m[38;2;8;0;0m#[0m[38;2;7;0;0m#[0m[38;2;6;0;0m#[0m[38;2;6;0;0m#[0m[38;2;2;0;0m#[0m[38;2;5;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;4;0;0m#[0m[38;2;10;0;0m#[0m[38;2;13;0;0m#[0m[38;2;29;0;1m#[0m[38;2;61;0;1m#[0m[38;2;66;0;1m#[0m[38;2;69;0;1m#[0m[38;2;77;0;1m#[0m[38;2;62;0;1m#[0m[38;2;67;0;1m#[0m[38;2;74;0;1m#[0m[38;2;63;0;1m#[0m[38;2;67;0;1m#[0m[38;2;76;0;1m#[0m[38;2;71;0;1m#[0m[38;2;65;0;1m#[0m[38;2;59;0;1m#[0m[38;2;49;0;1m#[0m[38;2;44;0;1m#[0m[38;2;48;0;1m#[0m[38;2;36;0;1m#[0m[38;2;43;0;1m#[0m[38;2;46;0;1m#[0m[38;2;32;0;0m#[0m[38;2;25;0;1m#[0m[38;2;19;0;0m#[0m[38;2;7;0;0m#[0m[38;2;7;0;0m#[0m[38;2;6;0;0m#[0m[38;2;7;0;0m#[0m[38;2;5;0;0m#[0m[38;2;5;0;0m#[0m[38;2;6;0;0m#[0m[38;2;2;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;4;0;0m#[0m[38;2;13;0;0m#[0m[38;2;17;0;1m#[0m[38;2;29;0;1m#[0m[38;2;67;0;1m#[0m[38;2;89;0;1m#[0m[38;2;95;0;1m#[0m[38;2;87;0;1m#[0m[38;2;91;0;1m#[0m[38;2;91;0;1m#[0m[38;2;86;0;1m#[0m[38;2;89;0;1m#[0m[38;2;96;0;1m#[0m[38;2;88;0;1m#[0m[38;2;89;0;1m#[0m[38;2;96;0;1m#[0m[38;2;85;0;1m#[0m[38;2;94;0;1m#[0m[38;2;84;0;1m#[0m[38;2;42;0;1m#[0m[38;2;67;0;1m#[0m[38;2;77;0;1m#[0m[38;2;41;0;1m#[0m[38;2;52;0;1m#[0m[38;2;43;0;1m#[0m[38;2;33;0;0m#[0m[38;2;20;0;0m#[0m[38;2;23;0;0m#[0m[38;2;14;0;1m#[0m[38;2;14;0;1m#[0m[38;2;9;0;0m#[0m[38;2;8;0;0m#[0m[38;2;5;0;0m#[0m[38;2;5;0;0m#[0m[38;2;3;0;0m#[0m[38;2;1;0;0m#[0m[38;2;2;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;3;0;0m#[0m[38;2;12;0;1m#[0m[38;2;14;0;0m#[0m[38;2;17;0;0m#[0m[38;2;63;0;1m#[0m[38;2;80;0;1m#[0m[38;2;74;0;1m#[0m[38;2;73;0;1m#[0m[38;2;79;0;1m#[0m[38;2;70;0;1m#[0m[38;2;71;0;1m#[0m[38;2;75;0;1m#[0m[38;2;75;0;1m#[0m[38;2;73;0;1m#[0m[38;2;79;0;1m#[0m[38;2;74;0;1m#[0m[38;2;71;0;1m#[0m[38;2;75;0;1m#[0m[38;2;82;0;1m#[0m[38;2;64;0;1m#[0m[38;2;67;0;1m#[0m[38;2;57;0;1m#[0m[38;2;43;0;1m#[0m[38;2;59;0;1m#[0m[38;2;35;0;1m#[0m[38;2;22;0;1m#[0m[38;2;41;0;1m#[0m[38;2;15;0;0m#[0m[38;2;39;0;1m#[0m[38;2;13;0;1m#[0m[38;2;11;0;0m#[0m[38;2;8;0;0m#[0m[38;2;8;0;0m#[0m[38;2;2;0;0m#[0m[38;2;2;0;0m#[0m[38;2;4;0;0m#[0m[38;2;4;0;0m#[0m[38;2;4;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;2;0;0m#[0m[38;2;11;0;0m#[0m[38;2;9;0;0m#[0m[38;2;20;0;1m#[0m[38;2;70;0;1m#[0m[38;2;50;0;1m#[0m[38;2;86;0;1m#[0m[38;2;90;0;1m#[0m[38;2;81;0;1m#[0m[38;2;84;0;1m#[0m[38;2;86;0;1m#[0m[38;2;87;0;1m#[0m[38;2;85;0;1m#[0m[38;2;91;0;1m#[0m[38;2;89;0;1m#[0m[38;2;87;0;1m#[0m[38;2;95;0;1m#[0m[38;2;98;0;1m#[0m[38;2;85;0;1m#[0m[38;2;75;0;1m#[0m[38;2;65;0;1m#[0m[38;2;54;0;1m#[0m[38;2;67;0;1m#[0m[38;2;59;0;1m#[0m[38;2;40;0;1m#[0m[38;2;35;0;1m#[0m[38;2;37;0;1m#[0m[38;2;30;0;0m#[0m[38;2;43;0;1m#[0m[38;2;10;0;0m#[0m[38;2;9;0;1m#[0m[38;2;9;0;0m#[0m[38;2;7;0;0m#[0m[38;2;4;0;0m#[0m[38;2;6;0;0m#[0m[38;2;3;0;0m#[0m[38;2;3;0;0m#[0m[38;2;5;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;8;0;0m#[0m[38;2;9;0;0m#[0m[38;2;13;0;1m#[0m[38;2;40;0;0m#[0m[38;2;58;0;1m#[0m[38;2;70;0;1m#[0m[38;2;80;0;1m#[0m[38;2;85;0;1m#[0m[38;2;81;0;1m#[0m[38;2;75;0;1m#[0m[38;2;71;0;1m#[0m[38;2;84;0;1m#[0m[38;2;86;0;1m#[0m[38;2;84;0;1m#[0m[38;2;84;0;1m#[0m[38;2;82;0;1m#[0m[38;2;85;0;1m#[0m[38;2;87;0;1m#[0m[38;2;80;0;1m#[0m[38;2;76;0;1m#[0m[38;2;65;0;1m#[0m[38;2;73;0;1m#[0m[38;2;65;0;1m#[0m[38;2;71;0;1m#[0m[38;2;51;0;1m#[0m[38;2;59;0;1m#[0m[38;2;22;0;1m#[0m[38;2;32;0;1m#[0m[38;2;19;0;0m#[0m[38;2;20;0;0m#[0m[38;2;10;0;0m#[0m[38;2;12;0;0m#[0m[38;2;13;0;0m#[0m[38;2;6;0;0m#[0m[38;2;7;0;0m#[0m[38;2;2;0;0m#[0m[38;2;3;0;0m#[0m[38;2;2;0;0m#[0m[38;2;2;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;9;0;0m#[0m[38;2;7;0;0m#[0m[38;2;13;0;0m#[0m[38;2;46;0;1m#[0m[38;2;53;0;1m#[0m[38;2;61;0;1m#[0m[38;2;84;0;1m#[0m[38;2;79;0;1m#[0m[38;2;72;0;1m#[0m[38;2;81;0;1m#[0m[38;2;70;0;1m#[0m[38;2;75;0;1m#[0m[38;2;79;0;1m#[0m[38;2;84;0;1m#[0m[38;2;82;0;1m#[0m[38;2;80;0;1m#[0m[38;2;81;0;1m#[0m[38;2;81;0;1m#[0m[38;2;79;0;1m#[0m[38;2;84;0;1m#[0m[38;2;71;0;1m#[0m[38;2;48;0;1m#[0m[38;2;79;0;1m#[0m[38;2;49;0;1m#[0m[38;2;48;0;1m#[0m[38;2;58;0;1m#[0m[38;2;36;0;0m#[0m[38;2;40;0;1m#[0m[38;2;23;0;1m#[0m[38;2;11;0;0m#[0m[38;2;7;0;0m#[0m[38;2;18;0;0m#[0m[38;2;6;0;0m#[0m[38;2;10;0;0m#[0m[38;2;6;0;1m#[0m[38;2;6;0;0m#[0m[38;2;4;0;0m#[0m[38;2;1;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;1;0;0m#[0m[38;2;0;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;5;0;0m#[0m[38;2;11;0;1m#[0m[38;2;10;0;0m#[0m[38;2;31;0;1m#[0m[38;2;65;0;1m#[0m[38;2;51;0;1m#[0m[38;2;84;0;1m#[0m[38;2;72;0;1m#[0m[38;2;39;0;0m#[0m[38;2;24;0;0m#[0m[38;2;22;0;0m#[0m[38;2;23;0;0m#[0m[38;2;32;0;1m#[0m[38;2;42;0;1m#[0m[38;2;57;0;1m#[0m[38;2;82;0;1m#[0m[38;2;89;0;1m#[0m[38;2;90;0;1m#[0m[38;2;83;0;1m#[0m[38;2;72;0;1m#[0m[38;2;71;0;1m#[0m[38;2;52;0;1m#[0m[38;2;41;0;1m#[0m[38;2;26;0;1m#[0m[38;2;33;0;1m#[0m[38;2;56;0;1m#[0m[38;2;35;0;1m#[0m[38;2;45;0;1m#[0m[38;2;24;0;1m#[0m[38;2;14;0;0m#[0m[38;2;5;0;0m#[0m[38;2;16;0;0m#[0m[38;2;3;0;0m#[0m[38;2;5;0;0m#[0m[38;2;7;0;0m#[0m[38;2;7;0;0m#[0m[38;2;4;0;0m#[0m[38;2;2;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;2;0;0m#[0m[38;2;0;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;8;0;0m#[0m[38;2;8;0;0m#[0m[38;2;8;0;0m#[0m[38;2;32;0;0m#[0m[38;2;50;0;1m#[0m[38;2;48;0;1m#[0m[38;2;20;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;2;0;0m#[0m[38;2;21;0;1m#[0m[38;2;20;0;1m#[0m[38;2;25;0;1m#[0m[38;2;63;0;1m#[0m[38;2;70;0;1m#[0m[38;2;69;0;1m#[0m[38;2;43;0;1m#[0m[38;2;44;0;1m#[0m[38;2;25;0;1m#[0m[38;2;33;0;0m#[0m[38;2;39;0;0m#[0m[38;2;35;0;1m#[0m[38;2;38;0;1m#[0m[38;2;33;0;1m#[0m[38;2;23;0;0m#[0m[38;2;29;0;1m#[0m[38;2;16;0;0m#[0m[38;2;8;0;0m#[0m[38;2;5;0;0m#[0m[38;2;4;0;0m#[0m[38;2;6;0;0m#[0m[38;2;5;0;0m#[0m[38;2;2;0;0m#[0m[38;2;3;0;0m#[0m[38;2;2;0;0m#[0m[38;2;3;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;5;0;0m#[0m[38;2;12;0;0m#[0m[38;2;12;0;0m#[0m[38;2;30;0;1m#[0m[38;2;58;0;1m#[0m[38;2;66;0;1m#[0m[38;2;79;0;1m#[0m[38;2;35;0;1m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;5;0;0m#[0m[38;2;14;0;0m#[0m[38;2;24;0;0m#[0m[38;2;43;0;1m#[0m[38;2;56;0;1m#[0m[38;2;73;0;1m#[0m[38;2;57;0;1m#[0m[38;2;78;0;1m#[0m[38;2;59;0;1m#[0m[38;2;67;0;1m#[0m[38;2;32;0;1m#[0m[38;2;27;0;1m#[0m[38;2;40;0;1m#[0m[38;2;40;0;1m#[0m[38;2;45;0;1m#[0m[38;2;14;0;1m#[0m[38;2;30;0;1m#[0m[38;2;41;0;1m#[0m[38;2;29;0;0m#[0m[38;2;13;0;0m#[0m[38;2;6;0;0m#[0m[38;2;8;0;0m#[0m[38;2;4;0;0m#[0m[38;2;2;0;0m#[0m[38;2;1;0;0m#[0m[38;2;5;0;0m#[0m[38;2;8;0;0m#[0m[38;2;1;0;0m#[0m[38;2;2;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;7;0;0m#[0m[38;2;9;0;0m#[0m[38;2;10;0;0m#[0m[38;2;29;0;0m#[0m[38;2;57;0;1m#[0m[38;2;55;0;1m#[0m[38;2;65;0;1m#[0m[38;2;68;0;1m#[0m[38;2;70;0;1m#[0m[38;2;64;0;1m#[0m[38;2;54;0;1m#[0m[38;2;46;0;1m#[0m[38;2;52;0;1m#[0m[38;2;67;0;1m#[0m[38;2;74;0;1m#[0m[38;2;74;0;1m#[0m[38;2;58;0;1m#[0m[38;2;47;0;1m#[0m[38;2;59;0;1m#[0m[38;2;38;0;1m#[0m[38;2;51;0;1m#[0m[38;2;44;0;1m#[0m[38;2;51;0;1m#[0m[38;2;43;0;1m#[0m[38;2;37;0;1m#[0m[38;2;22;0;0m#[0m[38;2;15;0;0m#[0m[38;2;11;0;1m#[0m[38;2;7;0;0m#[0m[38;2;26;0;1m#[0m[38;2;9;0;0m#[0m[38;2;9;0;0m#[0m[38;2;6;0;0m#[0m[38;2;6;0;0m#[0m[38;2;1;0;0m#[0m[38;2;1;0;0m#[0m[38;2;0;0;0m#[0m[38;2;2;0;0m#[0m[38;2;3;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;2;0;0m#[0m[38;2;10;0;0m#[0m[38;2;12;0;0m#[0m[38;2;18;0;1m#[0m[38;2;63;0;1m#[0m[38;2;66;0;1m#[0m[38;2;95;0;1m#[0m[38;2;96;0;1m#[0m[38;2;101;0;1m#[0m[38;2;91;0;1m#[0m[38;2;86;0;1m#[0m[38;2;88;0;1m#[0m[38;2;79;0;1m#[0m[38;2;102;0;1m#[0m[38;2;97;0;1m#[0m[38;2;91;0;1m#[0m[38;2;50;0;1m#[0m[38;2;43;0;1m#[0m[38;2;91;0;1m#[0m[38;2;60;0;1m#[0m[38;2;29;0;1m#[0m[38;2;54;0;1m#[0m[38;2;67;0;1m#[0m[38;2;46;0;1m#[0m[38;2;66;0;1m#[0m[38;2;65;0;1m#[0m[38;2;37;0;1m#[0m[38;2;22;0;0m#[0m[38;2;9;0;0m#[0m[38;2;3;0;0m#[0m[38;2;25;0;1m#[0m[38;2;24;0;0m#[0m[38;2;6;0;0m#[0m[38;2;15;0;1m#[0m[38;2;6;0;0m#[0m[38;2;6;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;2;0;0m#[0m[38;2;4;0;0m#[0m[38;2;2;0;0m#[0m[38;2;0;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;5;0;0m#[0m[38;2;7;0;0m#[0m[38;2;13;0;1m#[0m[38;2;27;0;0m#[0m[38;2;39;0;1m#[0m[38;2;75;0;1m#[0m[38;2;54;0;1m#[0m[38;2;66;0;1m#[0m[38;2;47;0;0m#[0m[38;2;35;0;0m#[0m[38;2;19;0;1m#[0m[38;2;35;0;1m#[0m[38;2;52;0;1m#[0m[38;2;61;0;1m#[0m[38;2;79;0;1m#[0m[38;2;61;0;1m#[0m[38;2;35;0;1m#[0m[38;2;72;0;1m#[0m[38;2;34;0;1m#[0m[38;2;42;0;1m#[0m[38;2;55;0;1m#[0m[38;2;43;0;1m#[0m[38;2;31;0;1m#[0m[38;2;49;0;1m#[0m[38;2;12;0;0m#[0m[38;2;28;0;0m#[0m[38;2;18;0;1m#[0m[38;2;12;0;0m#[0m[38;2;28;0;1m#[0m[38;2;39;0;1m#[0m[38;2;33;0;0m#[0m[38;2;24;0;0m#[0m[38;2;5;0;0m#[0m[38;2;1;0;0m#[0m[38;2;4;0;0m#[0m[38;2;0;0;0m#[0m[38;2;2;0;0m#[0m[38;2;6;0;0m#[0m[38;2;5;0;0m#[0m[38;2;5;0;0m#[0m[38;2;2;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;1;0;0m#[0m[38;2;7;0;0m#[0m[38;2;6;0;0m#[0m[38;2;16;0;1m#[0m[38;2;35;0;0m#[0m[38;2;24;0;0m#[0m[38;2;82;0;1m#[0m[38;2;57;0;1m#[0m[38;2;21;0;1m#[0m[38;2;41;0;1m#[0m[38;2;84;0;1m#[0m[38;2;72;0;1m#[0m[38;2;83;0;1m#[0m[38;2;77;0;1m#[0m[38;2;61;0;1m#[0m[38;2;82;0;1m#[0m[38;2;54;0;1m#[0m[38;2;13;0;0m#[0m[38;2;51;0;1m#[0m[38;2;59;0;1m#[0m[38;2;33;0;1m#[0m[38;2;38;0;1m#[0m[38;2;39;0;1m#[0m[38;2;21;0;0m#[0m[38;2;34;0;1m#[0m[38;2;17;0;0m#[0m[38;2;13;0;0m#[0m[38;2;10;0;1m#[0m[38;2;6;0;0m#[0m[38;2;4;0;0m#[0m[38;2;5;0;0m#[0m[38;2;4;0;0m#[0m[38;2;3;0;0m#[0m[38;2;3;0;0m#[0m[38;2;1;0;0m#[0m[38;2;2;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;6;0;0m#[0m[38;2;16;0;1m#[0m[38;2;11;0;0m#[0m[38;2;14;0;0m#[0m[38;2;81;0;1m#[0m[38;2;73;0;1m#[0m[38;2;13;0;0m#[0m[38;2;41;0;0m#[0m[38;2;70;0;1m#[0m[38;2;56;0;1m#[0m[38;2;57;0;1m#[0m[38;2;48;0;1m#[0m[38;2;64;0;1m#[0m[38;2;69;0;1m#[0m[38;2;50;0;1m#[0m[38;2;34;0;1m#[0m[38;2;43;0;1m#[0m[38;2;40;0;1m#[0m[38;2;30;0;1m#[0m[38;2;41;0;1m#[0m[38;2;13;0;0m#[0m[38;2;23;0;1m#[0m[38;2;40;0;0m#[0m[38;2;36;0;0m#[0m[38;2;10;0;0m#[0m[38;2;5;0;0m#[0m[38;2;6;0;0m#[0m[38;2;7;0;0m#[0m[38;2;1;0;0m#[0m[38;2;0;0;0m#[0m[38;2;5;0;0m#[0m[38;2;6;0;0m#[0m[38;2;3;0;0m#[0m[38;2;1;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;9;0;0m#[0m[38;2;12;0;0m#[0m[38;2;15;0;1m#[0m[38;2;41;0;1m#[0m[38;2;72;0;1m#[0m[38;2;81;0;1m#[0m[38;2;67;0;1m#[0m[38;2;45;0;1m#[0m[38;2;66;0;1m#[0m[38;2;63;0;1m#[0m[38;2;68;0;1m#[0m[38;2;70;0;1m#[0m[38;2;63;0;1m#[0m[38;2;55;0;1m#[0m[38;2;49;0;1m#[0m[38;2;58;0;1m#[0m[38;2;51;0;1m#[0m[38;2;42;0;1m#[0m[38;2;35;0;1m#[0m[38;2;26;0;1m#[0m[38;2;25;0;1m#[0m[38;2;11;0;0m#[0m[38;2;8;0;1m#[0m[38;2;9;0;0m#[0m[38;2;8;0;0m#[0m[38;2;8;0;0m#[0m[38;2;6;0;0m#[0m[38;2;4;0;0m#[0m[38;2;2;0;0m#[0m[38;2;2;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;3;0;0m#[0m[38;2;9;0;0m#[0m[38;2;16;0;1m#[0m[38;2;28;0;1m#[0m[38;2;49;0;1m#[0m[38;2;81;0;1m#[0m[38;2;86;0;1m#[0m[38;2;77;0;1m#[0m[38;2;80;0;1m#[0m[38;2;70;0;1m#[0m[38;2;74;0;1m#[0m[38;2;80;0;1m#[0m[38;2;68;0;1m#[0m[38;2;66;0;1m#[0m[38;2;71;0;1m#[0m[38;2;67;0;1m#[0m[38;2;53;0;1m#[0m[38;2;55;0;1m#[0m[38;2;33;0;1m#[0m[38;2;46;0;1m#[0m[38;2;30;0;0m#[0m[38;2;24;0;0m#[0m[38;2;12;0;0m#[0m[38;2;12;0;0m#[0m[38;2;9;0;0m#[0m[38;2;7;0;0m#[0m[38;2;9;0;0m#[0m[38;2;7;0;0m#[0m[38;2;3;0;0m#[0m[38;2;4;0;0m#[0m[38;2;2;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;1;0;0m#[0m[38;2;10;0;0m#[0m[38;2;13;0;1m#[0m[38;2;13;0;1m#[0m[38;2;49;0;1m#[0m[38;2;75;0;1m#[0m[38;2;75;0;1m#[0m[38;2;66;0;1m#[0m[38;2;71;0;1m#[0m[38;2;78;0;1m#[0m[38;2;70;0;1m#[0m[38;2;65;0;1m#[0m[38;2;60;0;1m#[0m[38;2;45;0;1m#[0m[38;2;46;0;1m#[0m[38;2;61;0;1m#[0m[38;2;32;0;1m#[0m[38;2;25;0;1m#[0m[38;2;37;0;1m#[0m[38;2;14;0;0m#[0m[38;2;11;0;0m#[0m[38;2;8;0;0m#[0m[38;2;10;0;1m#[0m[38;2;7;0;1m#[0m[38;2;7;0;0m#[0m[38;2;4;0;0m#[0m[38;2;4;0;0m#[0m[38;2;2;0;0m#[0m[38;2;1;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;7;0;0m#[0m[38;2;14;0;0m#[0m[38;2;16;0;1m#[0m[38;2;37;0;1m#[0m[38;2;78;0;1m#[0m[38;2;90;0;1m#[0m[38;2;93;0;1m#[0m[38;2;82;0;1m#[0m[38;2;61;0;1m#[0m[38;2;72;0;1m#[0m[38;2;70;0;1m#[0m[38;2;47;0;1m#[0m[38;2;40;0;1m#[0m[38;2;45;0;1m#[0m[38;2;34;0;1m#[0m[38;2;39;0;1m#[0m[38;2;15;0;1m#[0m[38;2;20;0;0m#[0m[38;2;15;0;0m#[0m[38;2;8;0;1m#[0m[38;2;10;0;0m#[0m[38;2;6;0;0m#[0m[38;2;7;0;0m#[0m[38;2;2;0;0m#[0m[38;2;4;0;0m#[0m[38;2;0;0;0m#[0m[38;2;2;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;1;0;0m#[0m[38;2;6;0;0m#[0m[38;2;4;0;0m#[0m[38;2;5;0;0m#[0m[38;2;28;0;0m#[0m[38;2;26;0;0m#[0m[38;2;18;0;0m#[0m[38;2;20;0;0m#[0m[38;2;19;0;0m#[0m[38;2;20;0;0m#[0m[38;2;9;0;0m#[0m[38;2;14;0;0m#[0m[38;2;5;0;0m#[0m[38;2;6;0;0m#[0m[38;2;3;0;0m#[0m[38;2;5;0;0m#[0m[38;2;3;0;0m#[0m[38;2;3;0;0m#[0m[38;2;2;0;0m#[0m[38;2;2;0;0m#[0m[38;2;2;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m
            [0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m[38;2;0;0;0m#[0m
 "
sleep 1
printf '\e[0;31m%-6s\e[m' "$(tput bold)                                                                               
      @@@         @@@@@@   @@@@@@@@@@         @@@@@@@    @@@@@@    @@@@@@   @@@@@@@"
sleep .1
printf '\e[0;31m%-6s\e[m' "$(tput bold)  
      @@@        @@@@@@@@  @@@@@@@@@@@        @@@@@@@@  @@@@@@@@  @@@@@@@@  @@@@@@@"
sleep .1
printf '\e[0;31m%-6s\e[m' "$(tput bold)        
      @@!        @@!  @@@  @@! @@! @@!        @@!  @@@  @@!  @@@  @@!  @@@    @@!"
sleep .1
printf '\e[0;31m%-6s\e[m' "$(tput bold)    
      !@!        !@!  @!@  !@! !@! !@!        !@!  @!@  !@!  @!@  !@!  @!@    !@!"
sleep .1
printf '\e[0;31m%-6s\e[m' "$(tput bold)    
      !!@        @!@!@!@!  @!! !!@ @!@        @!@!!@!   @!@  !@!  @!@  !@!    @!!"
sleep .1
printf '\e[0;31m%-6s\e[m' "$(tput bold)    
      !!!        !!!@!!!!  !@!   ! !@!        !!@!@!    !@!  !!!  !@!  !!!    !!!"
sleep .1
printf '\e[0;31m%-6s\e[m' "$(tput bold)    
      !!:        !!:  !!!  !!:     !!:        !!: :!!   !!:  !!!  !!:  !!!    !!:"
sleep .1
printf '\e[0;31m%-6s\e[m' "$(tput bold)    
      :!:        :!:  !:!  :!:     :!:        :!:  !:!  :!:  !:!  :!:  !:!    :!:"
sleep .1
printf '\e[0;31m%-6s\e[m' "$(tput bold)    
       ::        ::   :::  :::     ::         ::   :::  ::::: ::  ::::: ::     ::"
sleep .1
printf '\e[0;31m%-6s\e[m' "$(tput bold)    
      :           :   : :   :      :           :   : :   : :  :    : :  :      :     
                                                                               
"

# printf '\e[0;31m%-6s\e[m' "$(tput bold)Creating Directory at /home/USER/I_AM_ROOT"
# mkdir /home/$whoami/I_AM_ROOT
# mkdir /home/$whoami/I_AM_ROOT/$IP_ADDRESS
#Function to check IP address is in the proper format
function validateIP(){
    IP_ADDRESS="$1"
    #Check if the format looks rightsdfasdffghdfghfghfg
    echo "$IP_ADDRESS" | grep -E -qE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' || return 1
    #Check that each octect is less than or equal to 255:
    echo "$IP_ADDRESS" | awk -F'.' '$1 <=255 && $2 <= 255 && $3 <=255 && $4 <= 255 {print "Y" } ' | grep -q Y || return 1
    return 0
}


echo
sleep 2
#Ask for user input
printf '\e[0;38m%-6s\e[m' "$(tput bold)Enter a valid IP: " 
read -r IP_ADDRESS
sleep 1
# While loop to validate the IP provided, if ip is not valid then it will ask for a valid ip
while ! validateIP "$IP_ADDRESS"
do
    printf '\e[0;31m%-6s\e[m' "$(tput bold)Invalid IP Format"
    sleep .1
    echo
    printf '\e[0;38m%-6s\e[m' "$(tput bold)Enter Valid IP: " 
    read -r IP_ADDRESS
done
# corey
# oogaboogatooga
sleep 1
printf '\e[0;32m%-6s\e[m' "$(tput bold)IP is valid"
echo
printf '\e[0;38m%-6s\e[m' "$(tput bold)Enter Username: "
read -r USERNAME
printf '\e[0;38m%-6s\e[m' "$(tput bold)Enter Password: " 
read -r PASSWD
echo
#Script will attempt to connect via ssh with credentials provided by the user
printf '\e[1;34m%-6s\e[m' "ATTEMPTING TO CONNECT....."
echo
echo
sleep 3
#Expect script to login via ssh and run sudo -l
expect RECON.exp "$USERNAME" "$IP_ADDRESS" "$PASSWD"