.class public final Landroidx/media3/extractor/text/ttml/TtmlParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;,
        Landroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;
    }
.end annotation


# static fields
.field private static final CELL_RESOLUTION:Ljava/util/regex/Pattern;

.field private static final CLOCK_TIME:Ljava/util/regex/Pattern;

.field private static final DEFAULT_FRAME_AND_TICK_RATE:Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

.field private static final FONT_SIZE:Ljava/util/regex/Pattern;

.field private static final OFFSET_TIME:Ljava/util/regex/Pattern;

.field static final PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

.field private static final PIXEL_COORDINATES:Ljava/util/regex/Pattern;

.field static final SIGNED_PERCENTAGE:Ljava/util/regex/Pattern;


# instance fields
.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->CLOCK_TIME:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->OFFSET_TIME:Ljava/util/regex/Pattern;

    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->FONT_SIZE:Ljava/util/regex/Pattern;

    const-string v0, "^([-+]?\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->SIGNED_PERCENTAGE:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+) (\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    new-instance v0, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;-><init>(FII)V

    sput-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->DEFAULT_FRAME_AND_TICK_RATE:Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;

    invoke-direct {p0}, Landroidx/media3/extractor/text/ttml/TtmlStyle;-><init>()V

    :cond_0
    return-object p0
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "head"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "body"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "div"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "span"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "style"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "styling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "layout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "region"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "metadata"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "information"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static parseAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 2

    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0

    :pswitch_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    :pswitch_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseCellRows(Lorg/xmlpull/v1/XmlPullParser;I)I
    .locals 7

    const-string v0, "Invalid cell resolution "

    const-string v1, "http://www.w3.org/ns/ttml#parameter"

    const-string v2, "cellResolution"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return p1

    :cond_0
    sget-object v1, Landroidx/media3/extractor/text/ttml/TtmlParser;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string v3, "Ignoring malformed cell resolution: "

    const-string v4, "TtmlParser"

    if-nez v2, :cond_1

    :catch_0
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_1
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1
.end method

.method private static parseFontSize(Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlStyle;)V
    .locals 7

    .line 1
    const-string v0, "\\s+"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne v1, v3, :cond_0

    .line 11
    .line 12
    sget-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->FONT_SIZE:Ljava/util/regex/Pattern;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    array-length v1, v0

    .line 20
    if-ne v1, v2, :cond_5

    .line 21
    .line 22
    sget-object v1, Landroidx/media3/extractor/text/ttml/TtmlParser;->FONT_SIZE:Ljava/util/regex/Pattern;

    .line 23
    .line 24
    aget-object v0, v0, v3

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "TtmlParser"

    .line 31
    .line 32
    const-string v4, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    .line 33
    .line 34
    invoke-static {v1, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const-string v4, "\'."

    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    const/4 p0, 0x3

    .line 46
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 60
    .line 61
    .line 62
    const/4 v5, -0x1

    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    sparse-switch v6, :sswitch_data_0

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :sswitch_0
    const-string v6, "px"

    .line 72
    .line 73
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-nez v6, :cond_1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    const/4 v5, 0x2

    .line 81
    goto :goto_1

    .line 82
    :sswitch_1
    const-string v6, "em"

    .line 83
    .line 84
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-nez v6, :cond_2

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    const/4 v5, 0x1

    .line 92
    goto :goto_1

    .line 93
    :sswitch_2
    const-string v6, "%"

    .line 94
    .line 95
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-nez v6, :cond_3

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    const/4 v5, 0x0

    .line 103
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 104
    .line 105
    .line 106
    new-instance p0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 107
    .line 108
    const-string p1, "Invalid unit for fontSize: \'"

    .line 109
    .line 110
    invoke-static {p1, v1, v4}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0

    .line 118
    :pswitch_0
    invoke-virtual {p1, v3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setFontSizeUnit(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :pswitch_1
    invoke-virtual {p1, v2}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setFontSizeUnit(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :pswitch_2
    invoke-virtual {p1, p0}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setFontSizeUnit(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 127
    .line 128
    .line 129
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    check-cast p0, Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    invoke-virtual {p1, p0}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setFontSize(F)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_4
    new-instance p1, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 148
    .line 149
    const-string v0, "Invalid expression for fontSize: \'"

    .line 150
    .line 151
    invoke-static {v0, p0, v4}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-direct {p1, p0}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p1

    .line 159
    :cond_5
    new-instance p0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 160
    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v1, "Invalid number of entries for fontSize: "

    .line 164
    .line 165
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    array-length v0, v0

    .line 169
    const-string v1, "."

    .line 170
    .line 171
    invoke-static {v1, v0, p1}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw p0

    .line 179
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;
    .locals 7

    const-string v0, "frameRate"

    const-string v1, "http://www.w3.org/ns/ttml#parameter"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    const-string v2, "frameRateMultiplier"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, " "

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v4, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-static {v3, v4}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    aget-object v3, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    goto :goto_2

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    sget-object v2, Landroidx/media3/extractor/text/ttml/TtmlParser;->DEFAULT_FRAME_AND_TICK_RATE:Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

    iget v4, v2, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->subFrameRate:I

    const-string v5, "subFrameRate"

    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_3
    iget v2, v2, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->tickRate:I

    const-string v5, "tickRate"

    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_4
    new-instance p0, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

    int-to-float v0, v0

    mul-float v0, v0, v3

    invoke-direct {p0, v0, v4, v2}, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;-><init>(FII)V

    return-object p0
.end method

.method private static parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;ILandroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ttml/TtmlStyle;",
            ">;I",
            "Landroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ttml/TtmlRegion;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "style"

    invoke-static {p0, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/media3/extractor/text/ttml/TtmlStyle;

    invoke-direct {v1}, Landroidx/media3/extractor/text/ttml/TtmlStyle;-><init>()V

    invoke-static {p0, v1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/media3/extractor/text/ttml/TtmlParser;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/text/ttml/TtmlStyle;

    invoke-virtual {v1, v4}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->chain(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v0, "region"

    invoke-static {p0, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p2, p3}, Landroidx/media3/extractor/text/ttml/TtmlParser;->parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;ILandroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;)Landroidx/media3/extractor/text/ttml/TtmlRegion;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->id:Ljava/lang/String;

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v0, "metadata"

    invoke-static {p0, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0, p5}, Landroidx/media3/extractor/text/ttml/TtmlParser;->parseMetadata(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    :cond_4
    :goto_1
    const-string v0, "head"

    invoke-static {p0, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1
.end method

.method private static parseMetadata(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "image"

    invoke-static {p0, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "id"

    invoke-static {p0, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "metadata"

    invoke-static {p0, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method private static parseNode(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/Map;Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;)Landroidx/media3/extractor/text/ttml/TtmlNode;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroidx/media3/extractor/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ttml/TtmlRegion;",
            ">;",
            "Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;",
            ")",
            "Landroidx/media3/extractor/text/ttml/TtmlNode;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p3

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroidx/media3/extractor/text/ttml/TtmlParser;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v5

    const-string v4, ""

    move-object v10, v3

    move-object v12, v10

    move-object v11, v4

    const/4 v3, 0x0

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    if-ge v3, v2, :cond_8

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v19

    const/4 v6, 0x1

    sparse-switch v19, :sswitch_data_0

    :goto_1
    const/4 v7, -0x1

    goto :goto_2

    :sswitch_0
    const-string v7, "backgroundImage"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x5

    goto :goto_2

    :sswitch_1
    const-string v7, "style"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x4

    goto :goto_2

    :sswitch_2
    const-string v7, "begin"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x3

    goto :goto_2

    :sswitch_3
    const-string v7, "end"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x2

    goto :goto_2

    :sswitch_4
    const-string v7, "dur"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x1

    goto :goto_2

    :sswitch_5
    const-string v7, "region"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_2
    packed-switch v7, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v4, "#"

    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    :cond_6
    :goto_3
    move-object/from16 v4, p2

    goto :goto_4

    :pswitch_1
    invoke-static {v8}, Landroidx/media3/extractor/text/ttml/TtmlParser;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    if-lez v6, :cond_6

    move-object v10, v4

    goto :goto_3

    :pswitch_2
    invoke-static {v8, v1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->parseTimeExpression(Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;)J

    move-result-wide v13

    goto :goto_3

    :pswitch_3
    invoke-static {v8, v1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->parseTimeExpression(Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;)J

    move-result-wide v15

    goto :goto_3

    :pswitch_4
    invoke-static {v8, v1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->parseTimeExpression(Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;)J

    move-result-wide v17

    goto :goto_3

    :pswitch_5
    move-object/from16 v4, p2

    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v11, v8

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    if-eqz v9, :cond_b

    iget-wide v1, v9, Landroidx/media3/extractor/text/ttml/TtmlNode;->startTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v1, v3

    if-eqz v6, :cond_a

    cmp-long v6, v13, v3

    if-eqz v6, :cond_9

    add-long/2addr v13, v1

    :cond_9
    cmp-long v6, v15, v3

    if-eqz v6, :cond_a

    add-long/2addr v15, v1

    :cond_a
    :goto_5
    move-wide v1, v13

    goto :goto_6

    :cond_b
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_5

    :goto_6
    cmp-long v6, v15, v3

    if-nez v6, :cond_d

    cmp-long v6, v17, v3

    if-eqz v6, :cond_c

    add-long v17, v1, v17

    move-wide/from16 v3, v17

    goto :goto_7

    :cond_c
    if-eqz v9, :cond_d

    iget-wide v6, v9, Landroidx/media3/extractor/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v8, v6, v3

    if-eqz v8, :cond_d

    move-wide v3, v6

    goto :goto_7

    :cond_d
    move-wide v3, v15

    :goto_7
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    move-object/from16 v9, p1

    invoke-static/range {v0 .. v9}, Landroidx/media3/extractor/text/ttml/TtmlNode;->buildNode(Ljava/lang/String;JJLandroidx/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlNode;)Landroidx/media3/extractor/text/ttml/TtmlNode;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_5
        0x18601 -> :sswitch_4
        0x188db -> :sswitch_3
        0x59478a9 -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x4d0b70cd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;ILandroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;)Landroidx/media3/extractor/text/ttml/TtmlRegion;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "id"

    invoke-static {v0, v2}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    if-nez v4, :cond_0

    return-object v2

    :cond_0
    const-string v3, "origin"

    invoke-static {v0, v3}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "TtmlParser"

    if-eqz v3, :cond_f

    sget-object v6, Landroidx/media3/extractor/text/ttml/TtmlParser;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    sget-object v8, Landroidx/media3/extractor/text/ttml/TtmlParser;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    const-string v11, "Ignoring region with missing tts:extent: "

    const-string v12, "Ignoring region with malformed origin: "

    const/high16 v13, 0x42c80000    # 100.0f

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v10, :cond_1

    :try_start_0
    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    div-float/2addr v9, v13

    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr v7, v13

    move/from16 v16, v9

    move v9, v7

    move/from16 v7, v16

    goto :goto_2

    :catch_0
    invoke-virtual {v12, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_e

    if-nez v1, :cond_2

    :goto_1
    invoke-virtual {v11, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v9, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v7, v7

    iget v10, v1, Landroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;->width:I

    int-to-float v10, v10

    div-float/2addr v7, v10

    int-to-float v9, v9

    iget v10, v1, Landroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;->height:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    int-to-float v10, v10

    div-float/2addr v9, v10

    :goto_2
    const-string v10, "extent"

    invoke-static {v0, v10}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v8, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    const-string v12, "Ignoring region with malformed extent: "

    if-eqz v10, :cond_3

    :try_start_2
    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v13

    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    div-float/2addr v2, v13

    move v10, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_c

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    :try_start_3
    invoke-virtual {v8, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v6, v6

    iget v10, v1, Landroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;->width:I

    int-to-float v10, v10

    div-float/2addr v6, v10

    int-to-float v8, v8

    iget v1, v1, Landroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;->height:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    int-to-float v1, v1

    div-float/2addr v8, v1

    move v1, v6

    move v10, v8

    :goto_3
    const-string v2, "displayAlign"

    invoke-static {v0, v2}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "center"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "after"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    add-float/2addr v9, v10

    move v6, v9

    const/4 v8, 0x2

    goto :goto_5

    :cond_6
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v10, v2

    add-float/2addr v2, v9

    move v6, v2

    const/4 v8, 0x1

    goto :goto_5

    :cond_7
    :goto_4
    move v6, v9

    const/4 v8, 0x0

    :goto_5
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v5, p1

    int-to-float v5, v5

    div-float v12, v2, v5

    const-string v2, "writingMode"

    invoke-static {v0, v2}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_6
    const/4 v3, -0x1

    goto :goto_7

    :sswitch_0
    const-string v2, "tbrl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    const/4 v3, 0x2

    goto :goto_7

    :sswitch_1
    const-string v2, "tblr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    const/4 v3, 0x1

    goto :goto_7

    :sswitch_2
    const-string v2, "tb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    :goto_7
    packed-switch v3, :pswitch_data_0

    goto :goto_8

    :pswitch_0
    const/4 v13, 0x1

    goto :goto_9

    :pswitch_1
    const/4 v13, 0x2

    goto :goto_9

    :cond_b
    :goto_8
    const/high16 v0, -0x80000000

    const/high16 v13, -0x80000000

    :goto_9
    new-instance v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;

    const/4 v2, 0x0

    const/4 v11, 0x1

    move-object v3, v0

    move v5, v7

    move v7, v2

    move v9, v1

    invoke-direct/range {v3 .. v13}, Landroidx/media3/extractor/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;FFIIFFIFI)V

    return-object v0

    :cond_c
    const-string v0, "Ignoring region with unsupported extent: "

    :goto_a
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    const-string v0, "Ignoring region without an extent"

    goto/16 :goto_0

    :cond_e
    const-string v0, "Ignoring region with unsupported origin: "

    goto :goto_a

    :cond_f
    const-string v0, "Ignoring region without an origin"

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xe6e -> :sswitch_2
        0x363874 -> :sswitch_1
        0x363928 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseShear(Ljava/lang/String;)F
    .locals 5

    .line 1
    sget-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->SIGNED_PERCENTAGE:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 12
    .line 13
    .line 14
    const-string v3, "TtmlParser"

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string v0, "Invalid value for shear: "

    .line 19
    .line 20
    invoke-static {v0, p0, v3}, LA/g;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    const/4 v1, 0x1

    .line 25
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/high16 v1, -0x3d380000    # -100.0f

    .line 40
    .line 41
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/high16 v1, 0x42c80000    # 100.0f

    .line 46
    .line 47
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 48
    .line 49
    .line 50
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return p0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v4, "Failed to parse shear: "

    .line 56
    .line 57
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {v3, p0, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    return v2
.end method

.method private static parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;
    .locals 12

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_1e

    .line 8
    .line 9
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    const/4 v6, 0x5

    .line 25
    const/4 v7, 0x4

    .line 26
    const/4 v8, -0x1

    .line 27
    const/4 v9, 0x3

    .line 28
    const/4 v10, 0x2

    .line 29
    const/4 v11, 0x1

    .line 30
    sparse-switch v5, :sswitch_data_0

    .line 31
    .line 32
    .line 33
    :goto_1
    const/4 v6, -0x1

    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :sswitch_0
    const-string v5, "multiRowAlign"

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const/16 v6, 0xe

    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :sswitch_1
    const-string v5, "backgroundColor"

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/16 v6, 0xd

    .line 59
    .line 60
    goto/16 :goto_2

    .line 61
    .line 62
    :sswitch_2
    const-string v5, "rubyPosition"

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/16 v6, 0xc

    .line 72
    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :sswitch_3
    const-string v5, "textEmphasis"

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    const/16 v6, 0xb

    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :sswitch_4
    const-string v5, "fontSize"

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-nez v4, :cond_4

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    const/16 v6, 0xa

    .line 98
    .line 99
    goto/16 :goto_2

    .line 100
    .line 101
    :sswitch_5
    const-string v5, "textCombine"

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-nez v4, :cond_5

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    const/16 v6, 0x9

    .line 111
    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :sswitch_6
    const-string v5, "shear"

    .line 115
    .line 116
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-nez v4, :cond_6

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_6
    const/16 v6, 0x8

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :sswitch_7
    const-string v5, "color"

    .line 127
    .line 128
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-nez v4, :cond_7

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_7
    const/4 v6, 0x7

    .line 136
    goto :goto_2

    .line 137
    :sswitch_8
    const-string v5, "ruby"

    .line 138
    .line 139
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-nez v4, :cond_8

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_8
    const/4 v6, 0x6

    .line 147
    goto :goto_2

    .line 148
    :sswitch_9
    const-string v5, "id"

    .line 149
    .line 150
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-nez v4, :cond_e

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :sswitch_a
    const-string v5, "fontWeight"

    .line 158
    .line 159
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-nez v4, :cond_9

    .line 164
    .line 165
    goto/16 :goto_1

    .line 166
    .line 167
    :cond_9
    const/4 v6, 0x4

    .line 168
    goto :goto_2

    .line 169
    :sswitch_b
    const-string v5, "textDecoration"

    .line 170
    .line 171
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    if-nez v4, :cond_a

    .line 176
    .line 177
    goto/16 :goto_1

    .line 178
    .line 179
    :cond_a
    const/4 v6, 0x3

    .line 180
    goto :goto_2

    .line 181
    :sswitch_c
    const-string v5, "textAlign"

    .line 182
    .line 183
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    if-nez v4, :cond_b

    .line 188
    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    :cond_b
    const/4 v6, 0x2

    .line 192
    goto :goto_2

    .line 193
    :sswitch_d
    const-string v5, "fontFamily"

    .line 194
    .line 195
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-nez v4, :cond_c

    .line 200
    .line 201
    goto/16 :goto_1

    .line 202
    .line 203
    :cond_c
    const/4 v6, 0x1

    .line 204
    goto :goto_2

    .line 205
    :sswitch_e
    const-string v5, "fontStyle"

    .line 206
    .line 207
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    if-nez v4, :cond_d

    .line 212
    .line 213
    goto/16 :goto_1

    .line 214
    .line 215
    :cond_d
    const/4 v6, 0x0

    .line 216
    :cond_e
    :goto_2
    const-string v4, "TtmlParser"

    .line 217
    .line 218
    packed-switch v6, :pswitch_data_0

    .line 219
    .line 220
    .line 221
    goto/16 :goto_6

    .line 222
    .line 223
    :pswitch_0
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-static {v3}, Landroidx/media3/extractor/text/ttml/TtmlParser;->parseAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {p1, v3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setMultiRowAlign(Landroid/text/Layout$Alignment;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    goto/16 :goto_6

    .line 236
    .line 237
    :pswitch_1
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    :try_start_0
    invoke-static {v3}, Landroidx/media3/common/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    invoke-virtual {p1, v5}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setBackgroundColor(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .line 247
    .line 248
    goto/16 :goto_6

    .line 249
    .line 250
    :catch_0
    const-string v5, "Failed parsing background value: "

    .line 251
    .line 252
    goto :goto_3

    .line 253
    :pswitch_2
    invoke-static {v3}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    const-string v4, "before"

    .line 261
    .line 262
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    if-nez v4, :cond_10

    .line 267
    .line 268
    const-string v4, "after"

    .line 269
    .line 270
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    if-nez v3, :cond_f

    .line 275
    .line 276
    goto/16 :goto_6

    .line 277
    .line 278
    :cond_f
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {p1, v10}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setRubyPosition(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    goto/16 :goto_6

    .line 287
    .line 288
    :cond_10
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-virtual {p1, v11}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setRubyPosition(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    goto/16 :goto_6

    .line 297
    .line 298
    :pswitch_3
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-static {v3}, Landroidx/media3/extractor/text/ttml/TextEmphasis;->parse(Ljava/lang/String;)Landroidx/media3/extractor/text/ttml/TextEmphasis;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-virtual {p1, v3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setTextEmphasis(Landroidx/media3/extractor/text/ttml/TextEmphasis;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    goto/16 :goto_6

    .line 311
    .line 312
    :pswitch_4
    :try_start_1
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-static {v3, p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->parseFontSize(Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlStyle;)V
    :try_end_1
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 317
    .line 318
    .line 319
    goto/16 :goto_6

    .line 320
    .line 321
    :catch_1
    const-string v5, "Failed parsing fontSize value: "

    .line 322
    .line 323
    :goto_3
    invoke-static {v5, v3, v4}, LA/g;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_6

    .line 327
    .line 328
    :pswitch_5
    invoke-static {v3}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    const-string v4, "all"

    .line 336
    .line 337
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    if-nez v4, :cond_12

    .line 342
    .line 343
    const-string v4, "none"

    .line 344
    .line 345
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    if-nez v3, :cond_11

    .line 350
    .line 351
    goto/16 :goto_6

    .line 352
    .line 353
    :cond_11
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-virtual {p1, v1}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setTextCombine(Z)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    goto/16 :goto_6

    .line 362
    .line 363
    :cond_12
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    invoke-virtual {p1, v11}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setTextCombine(Z)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    goto/16 :goto_6

    .line 372
    .line 373
    :pswitch_6
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    invoke-static {v3}, Landroidx/media3/extractor/text/ttml/TtmlParser;->parseShear(Ljava/lang/String;)F

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    invoke-virtual {p1, v3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setShearPercentage(F)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    goto/16 :goto_6

    .line 386
    .line 387
    :pswitch_7
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    :try_start_2
    invoke-static {v3}, Landroidx/media3/common/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    invoke-virtual {p1, v5}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setFontColor(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 396
    .line 397
    .line 398
    goto/16 :goto_6

    .line 399
    .line 400
    :catch_2
    const-string v5, "Failed parsing color value: "

    .line 401
    .line 402
    goto :goto_3

    .line 403
    :pswitch_8
    invoke-static {v3}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 411
    .line 412
    .line 413
    const/4 v4, -0x1

    .line 414
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    sparse-switch v5, :sswitch_data_1

    .line 419
    .line 420
    .line 421
    goto :goto_4

    .line 422
    :sswitch_f
    const-string v5, "text"

    .line 423
    .line 424
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    if-nez v3, :cond_13

    .line 429
    .line 430
    goto :goto_4

    .line 431
    :cond_13
    const/4 v4, 0x5

    .line 432
    goto :goto_4

    .line 433
    :sswitch_10
    const-string v5, "base"

    .line 434
    .line 435
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v3

    .line 439
    if-nez v3, :cond_14

    .line 440
    .line 441
    goto :goto_4

    .line 442
    :cond_14
    const/4 v4, 0x4

    .line 443
    goto :goto_4

    .line 444
    :sswitch_11
    const-string v5, "textContainer"

    .line 445
    .line 446
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v3

    .line 450
    if-nez v3, :cond_15

    .line 451
    .line 452
    goto :goto_4

    .line 453
    :cond_15
    const/4 v4, 0x3

    .line 454
    goto :goto_4

    .line 455
    :sswitch_12
    const-string v5, "delimiter"

    .line 456
    .line 457
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    if-nez v3, :cond_16

    .line 462
    .line 463
    goto :goto_4

    .line 464
    :cond_16
    const/4 v4, 0x2

    .line 465
    goto :goto_4

    .line 466
    :sswitch_13
    const-string v5, "container"

    .line 467
    .line 468
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v3

    .line 472
    if-nez v3, :cond_17

    .line 473
    .line 474
    goto :goto_4

    .line 475
    :cond_17
    const/4 v4, 0x1

    .line 476
    goto :goto_4

    .line 477
    :sswitch_14
    const-string v5, "baseContainer"

    .line 478
    .line 479
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v3

    .line 483
    if-nez v3, :cond_18

    .line 484
    .line 485
    goto :goto_4

    .line 486
    :cond_18
    const/4 v4, 0x0

    .line 487
    :goto_4
    packed-switch v4, :pswitch_data_1

    .line 488
    .line 489
    .line 490
    goto/16 :goto_6

    .line 491
    .line 492
    :pswitch_9
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 493
    .line 494
    .line 495
    move-result-object p1

    .line 496
    invoke-virtual {p1, v9}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setRubyType(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    goto/16 :goto_6

    .line 501
    .line 502
    :pswitch_a
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    invoke-virtual {p1, v7}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setRubyType(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 507
    .line 508
    .line 509
    move-result-object p1

    .line 510
    goto/16 :goto_6

    .line 511
    .line 512
    :pswitch_b
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    invoke-virtual {p1, v11}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setRubyType(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    goto/16 :goto_6

    .line 521
    .line 522
    :pswitch_c
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 523
    .line 524
    .line 525
    move-result-object p1

    .line 526
    invoke-virtual {p1, v10}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setRubyType(I)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 527
    .line 528
    .line 529
    move-result-object p1

    .line 530
    goto/16 :goto_6

    .line 531
    .line 532
    :pswitch_d
    const-string v4, "style"

    .line 533
    .line 534
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v4

    .line 542
    if-eqz v4, :cond_1d

    .line 543
    .line 544
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 545
    .line 546
    .line 547
    move-result-object p1

    .line 548
    invoke-virtual {p1, v3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setId(Ljava/lang/String;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 549
    .line 550
    .line 551
    move-result-object p1

    .line 552
    goto/16 :goto_6

    .line 553
    .line 554
    :pswitch_e
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 555
    .line 556
    .line 557
    move-result-object p1

    .line 558
    const-string v4, "bold"

    .line 559
    .line 560
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 561
    .line 562
    .line 563
    move-result v3

    .line 564
    invoke-virtual {p1, v3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setBold(Z)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 565
    .line 566
    .line 567
    move-result-object p1

    .line 568
    goto/16 :goto_6

    .line 569
    .line 570
    :pswitch_f
    invoke-static {v3}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 578
    .line 579
    .line 580
    const/4 v4, -0x1

    .line 581
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 582
    .line 583
    .line 584
    move-result v5

    .line 585
    sparse-switch v5, :sswitch_data_2

    .line 586
    .line 587
    .line 588
    goto :goto_5

    .line 589
    :sswitch_15
    const-string v5, "linethrough"

    .line 590
    .line 591
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v3

    .line 595
    if-nez v3, :cond_19

    .line 596
    .line 597
    goto :goto_5

    .line 598
    :cond_19
    const/4 v4, 0x3

    .line 599
    goto :goto_5

    .line 600
    :sswitch_16
    const-string v5, "nolinethrough"

    .line 601
    .line 602
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result v3

    .line 606
    if-nez v3, :cond_1a

    .line 607
    .line 608
    goto :goto_5

    .line 609
    :cond_1a
    const/4 v4, 0x2

    .line 610
    goto :goto_5

    .line 611
    :sswitch_17
    const-string v5, "underline"

    .line 612
    .line 613
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result v3

    .line 617
    if-nez v3, :cond_1b

    .line 618
    .line 619
    goto :goto_5

    .line 620
    :cond_1b
    const/4 v4, 0x1

    .line 621
    goto :goto_5

    .line 622
    :sswitch_18
    const-string v5, "nounderline"

    .line 623
    .line 624
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 625
    .line 626
    .line 627
    move-result v3

    .line 628
    if-nez v3, :cond_1c

    .line 629
    .line 630
    goto :goto_5

    .line 631
    :cond_1c
    const/4 v4, 0x0

    .line 632
    :goto_5
    packed-switch v4, :pswitch_data_2

    .line 633
    .line 634
    .line 635
    goto :goto_6

    .line 636
    :pswitch_10
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 637
    .line 638
    .line 639
    move-result-object p1

    .line 640
    invoke-virtual {p1, v11}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setLinethrough(Z)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 641
    .line 642
    .line 643
    move-result-object p1

    .line 644
    goto :goto_6

    .line 645
    :pswitch_11
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 646
    .line 647
    .line 648
    move-result-object p1

    .line 649
    invoke-virtual {p1, v1}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setLinethrough(Z)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 650
    .line 651
    .line 652
    move-result-object p1

    .line 653
    goto :goto_6

    .line 654
    :pswitch_12
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 655
    .line 656
    .line 657
    move-result-object p1

    .line 658
    invoke-virtual {p1, v11}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setUnderline(Z)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 659
    .line 660
    .line 661
    move-result-object p1

    .line 662
    goto :goto_6

    .line 663
    :pswitch_13
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 664
    .line 665
    .line 666
    move-result-object p1

    .line 667
    invoke-virtual {p1, v1}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setUnderline(Z)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 668
    .line 669
    .line 670
    move-result-object p1

    .line 671
    goto :goto_6

    .line 672
    :pswitch_14
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 673
    .line 674
    .line 675
    move-result-object p1

    .line 676
    invoke-static {v3}, Landroidx/media3/extractor/text/ttml/TtmlParser;->parseAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    .line 677
    .line 678
    .line 679
    move-result-object v3

    .line 680
    invoke-virtual {p1, v3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 681
    .line 682
    .line 683
    move-result-object p1

    .line 684
    goto :goto_6

    .line 685
    :pswitch_15
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 686
    .line 687
    .line 688
    move-result-object p1

    .line 689
    invoke-virtual {p1, v3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setFontFamily(Ljava/lang/String;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 690
    .line 691
    .line 692
    move-result-object p1

    .line 693
    goto :goto_6

    .line 694
    :pswitch_16
    invoke-static {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;->createIfNull(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 695
    .line 696
    .line 697
    move-result-object p1

    .line 698
    const-string v4, "italic"

    .line 699
    .line 700
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 701
    .line 702
    .line 703
    move-result v3

    .line 704
    invoke-virtual {p1, v3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->setItalic(Z)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 705
    .line 706
    .line 707
    move-result-object p1

    .line 708
    :cond_1d
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 709
    .line 710
    goto/16 :goto_0

    .line 711
    .line 712
    :cond_1e
    return-object p1

    .line 713
    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_e
        -0x48ff636d -> :sswitch_d
        -0x3f826a28 -> :sswitch_c
        -0x3468fa43 -> :sswitch_b
        -0x2bc67c59 -> :sswitch_a
        0xd1b -> :sswitch_9
        0x3595da -> :sswitch_8
        0x5a72f63 -> :sswitch_7
        0x6855ce1 -> :sswitch_6
        0x6909352 -> :sswitch_5
        0x15caa0f0 -> :sswitch_4
        0x36e741c9 -> :sswitch_3
        0x42841923 -> :sswitch_2
        0x4cb7f6d5 -> :sswitch_1
        0x6899f5a4 -> :sswitch_0
    .end sparse-switch

    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x24de7f50 -> :sswitch_14
        -0x187eb37f -> :sswitch_13
        -0xeee99f9 -> :sswitch_12
        -0x81c562c -> :sswitch_11
        0x2e06d1 -> :sswitch_10
        0x36452d -> :sswitch_f
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_9
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x57195dd5 -> :sswitch_18
        -0x3d363934 -> :sswitch_17
        0x36723ff0 -> :sswitch_16
        0x641ec051 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method private static parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "\\s+"

    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static parseTimeExpression(Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;)J
    .locals 13

    .line 1
    sget-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->CLOCK_TIME:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const/4 v4, 0x4

    .line 17
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x2

    .line 19
    const/4 v7, 0x1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v7

    .line 36
    const-wide/16 v9, 0xe10

    .line 37
    .line 38
    mul-long v7, v7, v9

    .line 39
    .line 40
    long-to-double v7, v7

    .line 41
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v9

    .line 55
    const-wide/16 v11, 0x3c

    .line 56
    .line 57
    mul-long v9, v9, v11

    .line 58
    .line 59
    long-to-double v9, v9

    .line 60
    add-double/2addr v7, v9

    .line 61
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v5

    .line 75
    long-to-double v5, v5

    .line 76
    add-double/2addr v7, v5

    .line 77
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-wide/16 v4, 0x0

    .line 82
    .line 83
    if-eqz p0, :cond_0

    .line 84
    .line 85
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 86
    .line 87
    .line 88
    move-result-wide v9

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    move-wide v9, v4

    .line 91
    :goto_0
    add-double/2addr v7, v9

    .line 92
    const/4 p0, 0x5

    .line 93
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    if-eqz p0, :cond_1

    .line 98
    .line 99
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 100
    .line 101
    .line 102
    move-result-wide v9

    .line 103
    long-to-float p0, v9

    .line 104
    iget v1, p1, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->effectiveFrameRate:F

    .line 105
    .line 106
    div-float/2addr p0, v1

    .line 107
    float-to-double v9, p0

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    move-wide v9, v4

    .line 110
    :goto_1
    add-double/2addr v7, v9

    .line 111
    const/4 p0, 0x6

    .line 112
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    if-eqz p0, :cond_2

    .line 117
    .line 118
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 119
    .line 120
    .line 121
    move-result-wide v0

    .line 122
    long-to-double v0, v0

    .line 123
    iget p0, p1, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->subFrameRate:I

    .line 124
    .line 125
    int-to-double v4, p0

    .line 126
    div-double/2addr v0, v4

    .line 127
    iget p0, p1, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->effectiveFrameRate:F

    .line 128
    .line 129
    float-to-double p0, p0

    .line 130
    div-double v4, v0, p0

    .line 131
    .line 132
    :cond_2
    add-double/2addr v7, v4

    .line 133
    mul-double v7, v7, v2

    .line 134
    .line 135
    double-to-long p0, v7

    .line 136
    return-wide p0

    .line 137
    :cond_3
    sget-object v0, Landroidx/media3/extractor/text/ttml/TtmlParser;->OFFSET_TIME:Ljava/util/regex/Pattern;

    .line 138
    .line 139
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_9

    .line 148
    .line 149
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    check-cast p0, Ljava/lang/String;

    .line 158
    .line 159
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 160
    .line 161
    .line 162
    move-result-wide v4

    .line 163
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    check-cast p0, Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 177
    .line 178
    .line 179
    const/4 v0, -0x1

    .line 180
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    sparse-switch v1, :sswitch_data_0

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :sswitch_0
    const-string v1, "ms"

    .line 189
    .line 190
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    if-nez p0, :cond_4

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_4
    const/4 v0, 0x4

    .line 198
    goto :goto_2

    .line 199
    :sswitch_1
    const-string v1, "t"

    .line 200
    .line 201
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    if-nez p0, :cond_5

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_5
    const/4 v0, 0x3

    .line 209
    goto :goto_2

    .line 210
    :sswitch_2
    const-string v1, "m"

    .line 211
    .line 212
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    if-nez p0, :cond_6

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_6
    const/4 v0, 0x2

    .line 220
    goto :goto_2

    .line 221
    :sswitch_3
    const-string v1, "h"

    .line 222
    .line 223
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result p0

    .line 227
    if-nez p0, :cond_7

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_7
    const/4 v0, 0x1

    .line 231
    goto :goto_2

    .line 232
    :sswitch_4
    const-string v1, "f"

    .line 233
    .line 234
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result p0

    .line 238
    if-nez p0, :cond_8

    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_8
    const/4 v0, 0x0

    .line 242
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 243
    .line 244
    .line 245
    goto :goto_5

    .line 246
    :pswitch_0
    const-wide p0, 0x408f400000000000L    # 1000.0

    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    :goto_3
    div-double/2addr v4, p0

    .line 252
    goto :goto_5

    .line 253
    :pswitch_1
    iget p0, p1, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->tickRate:I

    .line 254
    .line 255
    int-to-double p0, p0

    .line 256
    goto :goto_3

    .line 257
    :pswitch_2
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    .line 258
    .line 259
    :goto_4
    mul-double v4, v4, p0

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :pswitch_3
    const-wide p0, 0x40ac200000000000L    # 3600.0

    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    goto :goto_4

    .line 268
    :pswitch_4
    iget p0, p1, Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;->effectiveFrameRate:F

    .line 269
    .line 270
    float-to-double p0, p0

    .line 271
    goto :goto_3

    .line 272
    :goto_5
    mul-double v4, v4, v2

    .line 273
    .line 274
    double-to-long p0, v4

    .line 275
    return-wide p0

    .line 276
    :cond_9
    new-instance p1, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 277
    .line 278
    const-string v0, "Malformed time expression: "

    .line 279
    .line 280
    invoke-static {v0, p0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-direct {p1, p0}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw p1

    .line 288
    nop

    .line 289
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6d -> :sswitch_2
        0x74 -> :sswitch_1
        0xda6 -> :sswitch_0
    .end sparse-switch

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseTtsExtent(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;
    .locals 5

    const-string v0, "extent"

    invoke-static {p0, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Landroidx/media3/extractor/text/ttml/TtmlParser;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string v3, "TtmlParser"

    if-nez v2, :cond_1

    const-string v1, "Ignoring non-pixel tts extent: "

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v4, Landroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;

    invoke-direct {v4, v2, v1}, Landroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    const-string v1, "Ignoring malformed tts extent: "

    goto :goto_0
.end method


# virtual methods
.method public getCueReplacementBehavior()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public parse([BIILandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/extractor/text/CuesWithTiming;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/extractor/text/ttml/TtmlParser;->parseToLegacySubtitle([BII)Landroidx/media3/extractor/text/Subtitle;

    move-result-object p1

    invoke-static {p1, p4, p5}, Landroidx/media3/extractor/text/LegacySubtitleUtil;->toCuesWithTiming(Landroidx/media3/extractor/text/Subtitle;Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V

    return-void
.end method

.method public final synthetic parse([BLandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, LS/a;->a(Landroidx/media3/extractor/text/SubtitleParser;[BLandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V

    return-void
.end method

.method public parseToLegacySubtitle([BII)Landroidx/media3/extractor/text/Subtitle;
    .locals 18

    const-string v0, ""

    move-object/from16 v1, p0

    :try_start_0
    iget-object v2, v1, Landroidx/media3/extractor/text/ttml/TtmlParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Landroidx/media3/extractor/text/ttml/TtmlRegion;

    invoke-direct {v3, v0}, Landroidx/media3/extractor/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct {v0, v3, v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v12, Ljava/util/ArrayDeque;

    invoke-direct {v12}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    sget-object v4, Landroidx/media3/extractor/text/ttml/TtmlParser;->DEFAULT_FRAME_AND_TICK_RATE:Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

    const/4 v5, 0x0

    move-object v14, v3

    const/16 v5, 0xf

    const/4 v15, 0x0

    :goto_0
    const/4 v6, 0x1

    if-eq v0, v6, :cond_a

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/text/ttml/TtmlNode;

    const/4 v8, 0x2

    if-nez v15, :cond_7

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, "tt"

    if-ne v0, v8, :cond_4

    :try_start_1
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Landroidx/media3/extractor/text/ttml/TtmlParser;->parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;

    move-result-object v4

    const/16 v13, 0xf

    invoke-static {v2, v13}, Landroidx/media3/extractor/text/ttml/TtmlParser;->parseCellRows(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v5

    invoke-static {v2}, Landroidx/media3/extractor/text/ttml/TtmlParser;->parseTtsExtent(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;

    move-result-object v3

    :goto_1
    move-object/from16 v16, v3

    move-object v8, v4

    move/from16 v17, v5

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_8

    :cond_0
    const/16 v13, 0xf

    goto :goto_1

    :goto_2
    invoke-static {v7}, Landroidx/media3/extractor/text/ttml/TtmlParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "TtmlParser"

    if-nez v0, :cond_1

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring unsupported tag: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    move-object v4, v8

    :goto_3
    move-object/from16 v3, v16

    move/from16 v5, v17

    const/16 v7, 0xf

    goto/16 :goto_6

    :cond_1
    const-string v0, "head"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v3, v2

    move-object v4, v9

    move/from16 v5, v17

    move-object/from16 v6, v16

    move-object v7, v10

    move-object v13, v8

    move-object v8, v11

    invoke-static/range {v3 .. v8}, Landroidx/media3/extractor/text/ttml/TtmlParser;->parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;ILandroidx/media3/extractor/text/ttml/TtmlParser$TtsExtent;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_2
    move-object v13, v8

    :try_start_3
    invoke-static {v2, v6, v10, v13}, Landroidx/media3/extractor/text/ttml/TtmlParser;->parseNode(Lorg/xmlpull/v1/XmlPullParser;Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/Map;Landroidx/media3/extractor/text/ttml/TtmlParser$FrameAndTickRate;)Landroidx/media3/extractor/text/ttml/TtmlNode;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz v6, :cond_3

    invoke-virtual {v6, v0}, Landroidx/media3/extractor/text/ttml/TtmlNode;->addChild(Landroidx/media3/extractor/text/ttml/TtmlNode;)V
    :try_end_3
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_4
    move-object v4, v13

    goto :goto_3

    :goto_5
    :try_start_4
    const-string v4, "Suppressing parser error"

    invoke-static {v3, v4, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_4
    const/16 v7, 0xf

    const/4 v8, 0x4

    if-ne v0, v8, :cond_5

    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/ttml/TtmlNode;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/extractor/text/ttml/TtmlNode;->buildTextNode(Ljava/lang/String;)Landroidx/media3/extractor/text/ttml/TtmlNode;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/media3/extractor/text/ttml/TtmlNode;->addChild(Landroidx/media3/extractor/text/ttml/TtmlNode;)V

    goto :goto_6

    :cond_5
    const/4 v6, 0x3

    if-ne v0, v6, :cond_9

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v14, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/ttml/TtmlNode;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/ttml/TtmlNode;

    invoke-direct {v14, v0, v9, v10, v11}, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;-><init>(Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    :cond_6
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_6

    :cond_7
    const/16 v7, 0xf

    if-ne v0, v8, :cond_8

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_8
    const/4 v6, 0x3

    if-ne v0, v6, :cond_9

    add-int/lit8 v15, v15, -0x1

    :cond_9
    :goto_6
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    goto/16 :goto_0

    :cond_a
    invoke-static {v14}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/Subtitle;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :goto_7
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected error when reading input."

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_8
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to decode source"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final synthetic reset()V
    .locals 0

    .line 1
    invoke-static {p0}, LS/a;->c(Landroidx/media3/extractor/text/SubtitleParser;)V

    return-void
.end method
