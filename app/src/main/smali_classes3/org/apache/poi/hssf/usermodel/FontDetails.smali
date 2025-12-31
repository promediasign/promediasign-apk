.class public Lorg/apache/poi/hssf/usermodel/FontDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _fontName:Ljava/lang/String;

.field private _height:I

.field private final charWidths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/FontDetails;->charWidths:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/FontDetails;->_fontName:Ljava/lang/String;

    iput p2, p0, Lorg/apache/poi/hssf/usermodel/FontDetails;->_height:I

    return-void
.end method

.method public static buildFontCharactersProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "font."

    .line 2
    .line 3
    const-string v1, ".characters"

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static buildFontHeightProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "font."

    .line 2
    .line 3
    const-string v1, ".height"

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static buildFontWidthsProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "font."

    .line 2
    .line 3
    const-string v1, ".widths"

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/poi/hssf/usermodel/FontDetails;
    .locals 5

    .line 1
    invoke-static {p0}, Lorg/apache/poi/hssf/usermodel/FontDetails;->buildFontHeightProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, Lorg/apache/poi/hssf/usermodel/FontDetails;->buildFontWidthsProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p0}, Lorg/apache/poi/hssf/usermodel/FontDetails;->buildFontCharactersProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    new-instance v2, Lorg/apache/poi/hssf/usermodel/FontDetails;

    .line 36
    .line 37
    invoke-direct {v2, p0, v0}, Lorg/apache/poi/hssf/usermodel/FontDetails;-><init>(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    const-string v0, ","

    .line 41
    .line 42
    const/4 v3, -0x1

    .line 43
    invoke-static {p1, v0, v3}, Lorg/apache/poi/hssf/usermodel/FontDetails;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v1, v0, v3}, Lorg/apache/poi/hssf/usermodel/FontDetails;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    array-length v1, p1

    .line 52
    array-length v3, v0

    .line 53
    if-ne v1, v3, :cond_2

    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    const/4 v1, 0x0

    .line 57
    :goto_0
    array-length v3, v0

    .line 58
    if-ge v1, v3, :cond_1

    .line 59
    .line 60
    aget-object v3, p1, v1

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_0

    .line 67
    .line 68
    aget-object v3, p1, v1

    .line 69
    .line 70
    invoke-virtual {v3, p0}, Ljava/lang/String;->charAt(I)C

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    aget-object v4, v0, v1

    .line 75
    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/hssf/usermodel/FontDetails;->addChar(CI)V

    .line 81
    .line 82
    .line 83
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    return-object v2

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 88
    .line 89
    const-string v0, "Number of characters does not number of widths for font "

    .line 90
    .line 91
    invoke-static {v0, p0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    const-string v0, "The supplied FontMetrics doesn\'t know about the font \'"

    .line 102
    .line 103
    const-string v1, "\', so we can\'t use it. Please add it to your font metrics file (see StaticFontMetrics.getFontDetails"

    .line 104
    .line 105
    invoke-static {v0, p0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1
.end method

.method private static split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    if-le v1, p2, :cond_0

    move v1, p2

    :cond_0
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eq p2, v2, :cond_3

    add-int/lit8 v5, v1, -0x1

    if-ne v4, v5, :cond_3

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int v2, v1, v4

    mul-int v2, v2, p0

    div-int/2addr v2, v1

    invoke-direct {p2, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v3
.end method


# virtual methods
.method public addChar(CI)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/FontDetails;->charWidths:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addChars([C[I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/FontDetails;->charWidths:Ljava/util/Map;

    aget-char v2, p1, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aget v3, p2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCharWidth(C)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/FontDetails;->charWidths:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    const/16 v0, 0x57

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/FontDetails;->getCharWidth(C)I

    move-result p1

    :goto_0
    return p1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/FontDetails;->_fontName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/usermodel/FontDetails;->_height:I

    return v0
.end method

.method public getStringWidth(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/FontDetails;->getCharWidth(C)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
