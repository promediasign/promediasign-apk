.class public abstract Lsk/mimac/slideshow/userinput/KeyMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEYCODES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/userinput/KeyMapper;->KEYCODES:Ljava/util/Map;

    const/4 v1, 0x1

    const-string v2, "SOFT LEFT"

    const/4 v3, 0x2

    const-string v4, "SOFT RIGHT"

    .line 1
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x4

    .line 2
    const-string v2, "BACK"

    const/4 v3, 0x5

    const-string v4, "CALL"

    .line 3
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x6

    .line 4
    const-string v2, "ENDCALL"

    const/4 v3, 0x7

    const-string v4, "0"

    .line 5
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x8

    .line 6
    const-string v2, "1"

    const/16 v3, 0x9

    const-string v4, "2"

    .line 7
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xa

    .line 8
    const-string v2, "3"

    const/16 v3, 0xb

    const-string v4, "4"

    .line 9
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xc

    .line 10
    const-string v2, "5"

    const/16 v3, 0xd

    const-string v4, "6"

    .line 11
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xe

    .line 12
    const-string v2, "7"

    const/16 v3, 0xf

    const-string v4, "8"

    .line 13
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x10

    .line 14
    const-string v2, "9"

    const/16 v3, 0x11

    const-string v4, "STAR"

    .line 15
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x12

    .line 16
    const-string v2, "POUND"

    const/16 v3, 0x13

    const-string v4, "DPAD UP"

    .line 17
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x14

    .line 18
    const-string v2, "DPAD DOWN"

    const/16 v3, 0x15

    const-string v4, "DPAD LEFT"

    .line 19
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x16

    .line 20
    const-string v2, "DPAD RIGHT"

    const/16 v3, 0x17

    const-string v4, "DPAD CENTER"

    .line 21
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x1a

    .line 22
    const-string v2, "POWER"

    const/16 v3, 0x1b

    const-string v4, "CAMERA"

    .line 23
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x1c

    .line 24
    const-string v2, "CLEAR"

    const/16 v3, 0x1d

    const-string v4, "A"

    .line 25
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x1e

    .line 26
    const-string v2, "B"

    const/16 v3, 0x1f

    const-string v4, "C"

    .line 27
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x20

    .line 28
    const-string v2, "D"

    const/16 v3, 0x21

    const-string v4, "E"

    .line 29
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x22

    .line 30
    const-string v2, "F"

    const/16 v3, 0x23

    const-string v4, "G"

    .line 31
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x24

    .line 32
    const-string v2, "H"

    const/16 v3, 0x25

    const-string v4, "I"

    .line 33
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x26

    .line 34
    const-string v2, "J"

    const/16 v3, 0x27

    const-string v4, "K"

    .line 35
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x28

    .line 36
    const-string v2, "L"

    const/16 v3, 0x29

    const-string v4, "M"

    .line 37
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x2a

    .line 38
    const-string v2, "N"

    const/16 v3, 0x2b

    const-string v4, "O"

    .line 39
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x2c

    .line 40
    const-string v2, "P"

    const/16 v3, 0x2d

    const-string v4, "Q"

    .line 41
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x2e

    .line 42
    const-string v2, "R"

    const/16 v3, 0x2f

    const-string v4, "S"

    .line 43
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x30

    .line 44
    const-string v2, "T"

    const/16 v3, 0x31

    const-string v4, "U"

    .line 45
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x32

    .line 46
    const-string v2, "V"

    const/16 v3, 0x33

    const-string v4, "W"

    .line 47
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x34

    .line 48
    const-string v2, "X"

    const/16 v3, 0x35

    const-string v4, "Y"

    .line 49
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x36

    .line 50
    const-string v2, "Z"

    const/16 v3, 0x37

    const-string v4, "COMMA"

    .line 51
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x38

    .line 52
    const-string v2, "PERIOD"

    const/16 v3, 0x39

    const-string v4, "ALT Left"

    .line 53
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x3a

    .line 54
    const-string v2, "ALT Right"

    const/16 v3, 0x3b

    const-string v4, "SHIFT Left"

    .line 55
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x3c

    .line 56
    const-string v2, "SHIFT Right"

    const/16 v3, 0x3d

    const-string v4, "TAB"

    .line 57
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x3e

    .line 58
    const-string v2, "SPACE"

    const/16 v3, 0x3f

    const-string v4, "SYM"

    .line 59
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x40

    .line 60
    const-string v2, "EXPLORER"

    const/16 v3, 0x41

    const-string v4, "ENVELOPE"

    .line 61
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x42

    .line 62
    const-string v2, "ENTER"

    const/16 v3, 0x43

    const-string v4, "DEL"

    .line 63
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x44

    .line 64
    const-string v2, "GRAVE"

    const/16 v3, 0x45

    const-string v4, "MINUS"

    .line 65
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x46

    .line 66
    const-string v2, "EQUALS"

    const/16 v3, 0x47

    const-string v4, "LEFT BRACKET"

    .line 67
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x48

    .line 68
    const-string v2, "RIGHT BRACKET"

    const/16 v3, 0x49

    const-string v4, "BACKSLASH"

    .line 69
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x4a

    .line 70
    const-string v2, "SEMICOLON"

    const/16 v3, 0x4b

    const-string v4, "APOSTROPHE"

    .line 71
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x4c

    .line 72
    const-string v2, "SLASH"

    const/16 v3, 0x4d

    const-string v4, "AT"

    .line 73
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x4e

    .line 74
    const-string v2, "NUM"

    const/16 v3, 0x4f

    const-string v4, "HEADSETHOOK"

    .line 75
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x51

    .line 76
    const-string v2, "PLUS"

    const/16 v3, 0x53

    const-string v4, "NOTIFICATION"

    .line 77
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x54

    .line 78
    const-string v2, "SEARCH"

    const/16 v3, 0x55

    const-string v4, "MEDIA PLAY PAUSE"

    .line 79
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x56

    .line 80
    const-string v2, "MEDIA STOP"

    const/16 v3, 0x57

    const-string v4, "MEDIA NEXT"

    .line 81
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x58

    .line 82
    const-string v2, "MEDIA PREVIOUS"

    const/16 v3, 0x59

    const-string v4, "MEDIA REWIND"

    .line 83
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x5a

    .line 84
    const-string v2, "MEDIA FAST FORWARD"

    const/16 v3, 0x5c

    const-string v4, "PAGE UP"

    .line 85
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x5d

    .line 86
    const-string v2, "PAGE DOWN"

    const/16 v3, 0x5e

    const-string v4, "PICTSYMBOLS"

    .line 87
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x5f

    .line 88
    const-string v2, "SWITCH CHARSET"

    const/16 v3, 0x60

    const-string v4, "BUTTON A"

    .line 89
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x61

    .line 90
    const-string v2, "BUTTON B"

    const/16 v3, 0x62

    const-string v4, "BUTTON C"

    .line 91
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x63

    .line 92
    const-string v2, "BUTTON X"

    const/16 v3, 0x64

    const-string v4, "BUTTON Y"

    .line 93
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x65

    .line 94
    const-string v2, "BUTTON Z"

    const/16 v3, 0x66

    const-string v4, "BUTTON L1"

    .line 95
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x67

    .line 96
    const-string v2, "BUTTON R1"

    const/16 v3, 0x68

    const-string v4, "BUTTON L2"

    .line 97
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x69

    .line 98
    const-string v2, "BUTTON R2"

    const/16 v3, 0x6a

    const-string v4, "BUTTON THUMBL"

    .line 99
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x6b

    .line 100
    const-string v2, "BUTTON THUMBR"

    const/16 v3, 0x6c

    const-string v4, "BUTTON START"

    .line 101
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x6d

    .line 102
    const-string v2, "BUTTON SELECT"

    const/16 v3, 0x6e

    const-string v4, "BUTTON MODE"

    .line 103
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x6f

    .line 104
    const-string v2, "ESCAPE"

    const/16 v3, 0x70

    const-string v4, "FORWARD DEL"

    .line 105
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x71

    .line 106
    const-string v2, "CTRL LEFT"

    const/16 v3, 0x72

    const-string v4, "CTRL RIGHT"

    .line 107
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x73

    .line 108
    const-string v2, "CAPS LOCK"

    const/16 v3, 0x74

    const-string v4, "SCROLL LOCK"

    .line 109
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x75

    .line 110
    const-string v2, "META LEFT"

    const/16 v3, 0x76

    const-string v4, "META RIGHT"

    .line 111
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x77

    .line 112
    const-string v2, "FUNCTION"

    const/16 v3, 0x78

    const-string v4, "SYSRQ"

    .line 113
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x79

    .line 114
    const-string v2, "BREAK"

    const/16 v3, 0x7a

    const-string v4, "MOVE HOME"

    .line 115
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x7b

    .line 116
    const-string v2, "MOVE END"

    const/16 v3, 0x7c

    const-string v4, "INSERT"

    .line 117
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x7d

    .line 118
    const-string v2, "FORWARD"

    const/16 v3, 0x7e

    const-string v4, "MEDIA PLAY"

    .line 119
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x7f

    .line 120
    const-string v2, "MEDIA PAUSE"

    const/16 v3, 0x80

    const-string v4, "MEDIA CLOSE"

    .line 121
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x81

    .line 122
    const-string v2, "MEDIA EJECT"

    const/16 v3, 0x82

    const-string v4, "MEDIA RECORD"

    .line 123
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x83

    .line 124
    const-string v2, "F1"

    const/16 v3, 0x84

    const-string v4, "F2"

    .line 125
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x85

    .line 126
    const-string v2, "F3"

    const/16 v3, 0x86

    const-string v4, "F4"

    .line 127
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x87

    .line 128
    const-string v2, "F5"

    const/16 v3, 0x88

    const-string v4, "F6"

    .line 129
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x89

    .line 130
    const-string v2, "F7"

    const/16 v3, 0x8a

    const-string v4, "F8"

    .line 131
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x8b

    .line 132
    const-string v2, "F9"

    const/16 v3, 0x8c

    const-string v4, "F10"

    .line 133
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x8d

    .line 134
    const-string v2, "F11"

    const/16 v3, 0x8e

    const-string v4, "F12"

    .line 135
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x8f

    .line 136
    const-string v2, "NUM LOCK"

    const/16 v3, 0x90

    const-string v4, "NUMPAD 0"

    .line 137
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x91

    .line 138
    const-string v2, "NUMPAD 1"

    const/16 v3, 0x92

    const-string v4, "NUMPAD 2"

    .line 139
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x93

    .line 140
    const-string v2, "NUMPAD 3"

    const/16 v3, 0x94

    const-string v4, "NUMPAD 4"

    .line 141
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x95

    .line 142
    const-string v2, "NUMPAD 5"

    const/16 v3, 0x96

    const-string v4, "NUMPAD 6"

    .line 143
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x97

    .line 144
    const-string v2, "NUMPAD 7"

    const/16 v3, 0x98

    const-string v4, "NUMPAD 8"

    .line 145
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x99

    .line 146
    const-string v2, "NUMPAD 9"

    const/16 v3, 0x9a

    const-string v4, "NUMPAD DIVIDE"

    .line 147
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x9b

    .line 148
    const-string v2, "NUMPAD MULTIPLY"

    const/16 v3, 0x9c

    const-string v4, "NUMPAD SUBTRACT"

    .line 149
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x9d

    .line 150
    const-string v2, "NUMPAD ADD"

    const/16 v3, 0x9e

    const-string v4, "NUMPAD DOT"

    .line 151
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x9f

    .line 152
    const-string v2, "NUMPAD COMMA"

    const/16 v3, 0xa0

    const-string v4, "NUMPAD ENTER"

    .line 153
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xa1

    .line 154
    const-string v2, "NUMPAD EQUALS"

    const/16 v3, 0xa2

    const-string v4, "NUMPAD LEFT PAREN"

    .line 155
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xa3

    .line 156
    const-string v2, "NUMPAD RIGHT PAREN"

    const/16 v3, 0xa5

    const-string v4, "INFO"

    .line 157
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xa6

    .line 158
    const-string v2, "CHANNEL UP"

    const/16 v3, 0xa7

    const-string v4, "CHANNEL DOWN"

    .line 159
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xa8

    .line 160
    const-string v2, "ZOOM IN"

    const/16 v3, 0xa9

    const-string v4, "ZOOM OUT"

    .line 161
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xaa

    .line 162
    const-string v2, "TV"

    const/16 v3, 0xab

    const-string v4, "WINDOW"

    .line 163
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xac

    .line 164
    const-string v2, "GUIDE"

    const/16 v3, 0xad

    const-string v4, "DVR"

    .line 165
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xae

    .line 166
    const-string v2, "BOOKMARK"

    const/16 v3, 0xaf

    const-string v4, "CAPTIONS"

    .line 167
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xb0

    .line 168
    const-string v2, "SETTINGS"

    const/16 v3, 0xb1

    const-string v4, "TV POWER"

    .line 169
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xb2

    .line 170
    const-string v2, "TV INPUT"

    const/16 v3, 0xb3

    const-string v4, "STB POWER"

    .line 171
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xb4

    .line 172
    const-string v2, "STB INPUT"

    const/16 v3, 0xb5

    const-string v4, "AVR POWER"

    .line 173
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xb6

    .line 174
    const-string v2, "AVR INPUT"

    const/16 v3, 0xb7

    const-string v4, "PROG RED"

    .line 175
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xb8

    .line 176
    const-string v2, "PROG GREEN"

    const/16 v3, 0xb9

    const-string v4, "PROG YELLOW"

    .line 177
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xba

    .line 178
    const-string v2, "PROG BLUE"

    const/16 v3, 0xbb

    const-string v4, "APP SWITCH"

    .line 179
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xbc

    .line 180
    const-string v2, "BUTTON 1"

    const/16 v3, 0xbd

    const-string v4, "BUTTON 2"

    .line 181
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xbe

    .line 182
    const-string v2, "BUTTON 3"

    const/16 v3, 0xbf

    const-string v4, "BUTTON 4"

    .line 183
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xc0

    .line 184
    const-string v2, "BUTTON 5"

    const/16 v3, 0xc1

    const-string v4, "BUTTON 6"

    .line 185
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xc2

    .line 186
    const-string v2, "BUTTON 7"

    const/16 v3, 0xc3

    const-string v4, "BUTTON 8"

    .line 187
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xc4

    .line 188
    const-string v2, "BUTTON 9"

    const/16 v3, 0xc5

    const-string v4, "BUTTON 10"

    .line 189
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xc6

    .line 190
    const-string v2, "BUTTON 11"

    const/16 v3, 0xc7

    const-string v4, "BUTTON 12"

    .line 191
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xc8

    .line 192
    const-string v2, "BUTTON 13"

    const/16 v3, 0xc9

    const-string v4, "BUTTON 14"

    .line 193
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xca

    .line 194
    const-string v2, "BUTTON 15"

    const/16 v3, 0xcb

    const-string v4, "BUTTON 16"

    .line 195
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xcc

    .line 196
    const-string v2, "LANGUAGE SWITCH"

    const/16 v3, 0xcd

    const-string v4, "MANNER MODE"

    .line 197
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xce

    .line 198
    const-string v2, "3D MODE"

    const/16 v3, 0xcf

    const-string v4, "CONTACTS"

    .line 199
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xd0

    .line 200
    const-string v2, "CALENDAR"

    const/16 v3, 0xd1

    const-string v4, "MUSIC"

    .line 201
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xd2

    .line 202
    const-string v2, "CALCULATOR"

    const/16 v3, 0xd3

    const-string v4, "ZENKAKU HANKAKU"

    .line 203
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xd4

    .line 204
    const-string v2, "EISU"

    const/16 v3, 0xd5

    const-string v4, "MUHENKAN"

    .line 205
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xd6

    .line 206
    const-string v2, "HENKAN"

    const/16 v3, 0xd7

    const-string v4, "KATAKANA HIRAGANA"

    .line 207
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xd8

    .line 208
    const-string v2, "YEN"

    const/16 v3, 0xd9

    const-string v4, "RO"

    .line 209
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xda

    .line 210
    const-string v2, "KANA"

    const/16 v3, 0xdb

    const-string v4, "ASSIST"

    .line 211
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xdc

    .line 212
    const-string v2, "BRIGHTNESS DOWN"

    const/16 v3, 0xdd

    const-string v4, "BRIGHTNESS UP"

    .line 213
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xde

    .line 214
    const-string v2, "MEDIA AUDIO TRACK"

    const/16 v3, 0xdf

    const-string v4, "SLEEP"

    .line 215
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xe0

    .line 216
    const-string v2, "WAKEUP"

    const/16 v3, 0xe1

    const-string v4, "PAIRING"

    .line 217
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xe2

    .line 218
    const-string v2, "MEDIA TOP MENU"

    const/16 v3, 0xe3

    const-string v4, "11"

    .line 219
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xe4

    .line 220
    const-string v2, "12"

    const/16 v3, 0xe5

    const-string v4, "LAST CHANNEL"

    .line 221
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xe6

    .line 222
    const-string v2, "TV DATA SERVICE"

    const/16 v3, 0xe7

    const-string v4, "VOICE ASSIST"

    .line 223
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xe8

    .line 224
    const-string v2, "TV RADIO SERVICE"

    const/16 v3, 0xe9

    const-string v4, "TV TELETEXT"

    .line 225
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xea

    .line 226
    const-string v2, "TV NUMBER ENTRY"

    const/16 v3, 0xeb

    const-string v4, "TV TERRESTRIAL ANALOG"

    .line 227
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xec

    .line 228
    const-string v2, "TV TERRESTRIAL DIGITAL"

    const/16 v3, 0xed

    const-string v4, "TV SATELLITE"

    .line 229
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xee

    .line 230
    const-string v2, "TV SATELLITE BS"

    const/16 v3, 0xef

    const-string v4, "TV SATELLITE CS"

    .line 231
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xf0

    .line 232
    const-string v2, "TV SATELLITE SERVICE"

    const/16 v3, 0xf1

    const-string v4, "TV NETWORK"

    .line 233
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xf2

    .line 234
    const-string v2, "TV ANTENNA CABLE"

    const/16 v3, 0xf3

    const-string v4, "TV INPUT HDMI 1"

    .line 235
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xf4

    .line 236
    const-string v2, "TV INPUT HDMI 2"

    const/16 v3, 0xf5

    const-string v4, "TV INPUT HDMI 3"

    .line 237
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xf6

    .line 238
    const-string v2, "TV INPUT HDMI 4"

    const/16 v3, 0xf7

    const-string v4, "TV INPUT COMPOSITE 1"

    .line 239
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xf8

    .line 240
    const-string v2, "TV INPUT COMPOSITE 2"

    const/16 v3, 0xf9

    const-string v4, "TV INPUT COMPONENT 1"

    .line 241
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xfa

    .line 242
    const-string v2, "TV INPUT COMPONENT 2"

    const/16 v3, 0xfb

    const-string v4, "TV INPUT VGA 1"

    .line 243
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xfc

    .line 244
    const-string v2, "TV AUDIO DESCRIPTION"

    const/16 v3, 0xfd

    const-string v4, "TV AUDIO DESCRIPTION MIX UP"

    .line 245
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xfe

    .line 246
    const-string v2, "TV AUDIO DESCRIPTION MIX DOWN"

    const/16 v3, 0xff

    const-string v4, "TV ZOOM MODE"

    .line 247
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x100

    .line 248
    const-string v2, "TV CONTENTS MENU"

    const/16 v3, 0x101

    const-string v4, "TV MEDIA CONTEXT MENU"

    .line 249
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x102

    .line 250
    const-string v2, "TV TIMER PROGRAMMING"

    const/16 v3, 0x103

    const-string v4, "HELP"

    .line 251
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x104

    .line 252
    const-string v2, "NAVIGATE PREVIOUS"

    const/16 v3, 0x105

    const-string v4, "NAVIGATE NEXT"

    .line 253
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x106

    .line 254
    const-string v2, "NAVIGATE IN"

    const/16 v3, 0x107

    const-string v4, "NAVIGATE OUT"

    .line 255
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x108

    .line 256
    const-string v2, "STEM PRIMARY"

    const/16 v3, 0x109

    const-string v4, "STEM 1"

    .line 257
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x10a

    .line 258
    const-string v2, "STEM 2"

    const/16 v3, 0x10b

    const-string v4, "STEM 3"

    .line 259
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x10c

    .line 260
    const-string v2, "DPAD UP LEFT"

    const/16 v3, 0x10d

    const-string v4, "DPAD DOWN LEFT"

    .line 261
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x10e

    .line 262
    const-string v2, "DPAD UP RIGHT"

    const/16 v3, 0x10f

    const-string v4, "DPAD DOWN RIGHT"

    .line 263
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x110

    .line 264
    const-string v2, "MEDIA SKIP FORWARD"

    const/16 v3, 0x111

    const-string v4, "MEDIA SKIP BACKWARD"

    .line 265
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x112

    .line 266
    const-string v2, "MEDIA STEP FORWARD"

    const/16 v3, 0x113

    const-string v4, "MEDIA STEP BACKWARD"

    .line 267
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x114

    .line 268
    const-string v2, "SOFT SLEEP"

    const/16 v3, 0x115

    const-string v4, "CUT"

    .line 269
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x116

    .line 270
    const-string v2, "COPY"

    const/16 v3, 0x117

    const-string v4, "PASTE"

    .line 271
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x118

    .line 272
    const-string v2, "SYSTEM NAVIGATION UP"

    const/16 v3, 0x119

    const-string v4, "SYSTEM NAVIGATION DOWN"

    .line 273
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x11a

    .line 274
    const-string v2, "SYSTEM NAVIGATION LEFT"

    const/16 v3, 0x11b

    const-string v4, "SYSTEM NAVIGATION RIGHT"

    .line 275
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
