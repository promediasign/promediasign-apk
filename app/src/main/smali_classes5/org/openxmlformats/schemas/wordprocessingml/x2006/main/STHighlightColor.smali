.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Factory;,
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;
    }
.end annotation


# static fields
.field public static final BLACK:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final BLUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final CYAN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final DARK_BLUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final DARK_CYAN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final DARK_GRAY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final DARK_GREEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final DARK_MAGENTA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final DARK_RED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final DARK_YELLOW:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final GREEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final INT_BLACK:I = 0x1

.field public static final INT_BLUE:I = 0x2

.field public static final INT_CYAN:I = 0x3

.field public static final INT_DARK_BLUE:I = 0x9

.field public static final INT_DARK_CYAN:I = 0xa

.field public static final INT_DARK_GRAY:I = 0xf

.field public static final INT_DARK_GREEN:I = 0xb

.field public static final INT_DARK_MAGENTA:I = 0xc

.field public static final INT_DARK_RED:I = 0xd

.field public static final INT_DARK_YELLOW:I = 0xe

.field public static final INT_GREEN:I = 0x4

.field public static final INT_LIGHT_GRAY:I = 0x10

.field public static final INT_MAGENTA:I = 0x5

.field public static final INT_NONE:I = 0x11

.field public static final INT_RED:I = 0x6

.field public static final INT_WHITE:I = 0x8

.field public static final INT_YELLOW:I = 0x7

.field public static final LIGHT_GRAY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final MAGENTA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final RED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final WHITE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final YELLOW:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "sthighlightcolora8e9type"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, LA/g;->s(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    .line 12
    .line 13
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    const-string v0, "black"

    .line 16
    .line 17
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->BLACK:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 22
    .line 23
    const-string v0, "blue"

    .line 24
    .line 25
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->BLUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 30
    .line 31
    const-string v0, "cyan"

    .line 32
    .line 33
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->CYAN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 38
    .line 39
    const-string v0, "green"

    .line 40
    .line 41
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->GREEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 46
    .line 47
    const-string v0, "magenta"

    .line 48
    .line 49
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->MAGENTA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 54
    .line 55
    const-string v0, "red"

    .line 56
    .line 57
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->RED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 62
    .line 63
    const-string v0, "yellow"

    .line 64
    .line 65
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->YELLOW:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 70
    .line 71
    const-string v0, "white"

    .line 72
    .line 73
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->WHITE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 78
    .line 79
    const-string v0, "darkBlue"

    .line 80
    .line 81
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->DARK_BLUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 86
    .line 87
    const-string v0, "darkCyan"

    .line 88
    .line 89
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->DARK_CYAN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 94
    .line 95
    const-string v0, "darkGreen"

    .line 96
    .line 97
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->DARK_GREEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 102
    .line 103
    const-string v0, "darkMagenta"

    .line 104
    .line 105
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->DARK_MAGENTA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 110
    .line 111
    const-string v0, "darkRed"

    .line 112
    .line 113
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->DARK_RED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 118
    .line 119
    const-string v0, "darkYellow"

    .line 120
    .line 121
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->DARK_YELLOW:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 126
    .line 127
    const-string v0, "darkGray"

    .line 128
    .line 129
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->DARK_GRAY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 134
    .line 135
    const-string v0, "lightGray"

    .line 136
    .line 137
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->LIGHT_GRAY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 142
    .line 143
    const-string v0, "none"

    .line 144
    .line 145
    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    .line 150
    .line 151
    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
