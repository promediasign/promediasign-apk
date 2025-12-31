.class public Lorg/apache/poi/sl/draw/DrawFontManagerDefault;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/DrawFontManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFontWithFallback(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/Drawable$DrawableHint;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .locals 2

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    const/4 p2, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v0, "*"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    new-instance p3, Lorg/apache/poi/sl/draw/DrawFontInfo;

    invoke-direct {p3, p2}, Lorg/apache/poi/sl/draw/DrawFontInfo;-><init>(Ljava/lang/String;)V

    :cond_4
    return-object p3
.end method


# virtual methods
.method public createAWTFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;DZZ)Ljava/awt/Font;
    .locals 1

    if-eqz p6, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, p5

    new-instance p5, Ljava/awt/Font;

    invoke-interface {p2}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object p2

    const/16 p6, 0xc

    invoke-direct {p5, p2, p1, p6}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    const-string p2, "Dialog"

    invoke-virtual {p5}, Ljava/awt/Font;->getFamily()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p5, Ljava/awt/Font;

    const-string p2, "SansSerif"

    invoke-direct {p5, p2, p1, p6}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    :cond_1
    double-to-float p1, p3

    invoke-virtual {p5, p1}, Ljava/awt/Font;->deriveFont(F)Ljava/awt/Font;

    move-result-object p1

    return-object p1
.end method

.method public getFallbackFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->FONT_FALLBACK:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/poi/sl/draw/DrawFontManagerDefault;->getFontWithFallback(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/Drawable$DrawableHint;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/poi/sl/draw/DrawFontInfo;

    const-string p2, "SansSerif"

    invoke-direct {p1, p2}, Lorg/apache/poi/sl/draw/DrawFontInfo;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public getMappedFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->FONT_MAP:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/poi/sl/draw/DrawFontManagerDefault;->getFontWithFallback(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/Drawable$DrawableHint;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object p1

    return-object p1
.end method

.method public mapFontCharset(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p2, :cond_4

    const-string p1, "Wingdings"

    invoke-interface {p2}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_3

    aget-char v1, p1, p2

    const/16 v2, 0x20

    if-gt v2, v1, :cond_0

    const/16 v2, 0x7f

    if-le v1, v2, :cond_1

    :cond_0
    const/16 v2, 0xa0

    if-gt v2, v1, :cond_2

    const/16 v2, 0xff

    if-gt v1, v2, :cond_2

    :cond_1
    const v0, 0xf000

    or-int/2addr v0, v1

    int-to-char v0, v0

    aput-char v0, p1, p2

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1}, Ljava/lang/String;-><init>([C)V

    :cond_4
    return-object p3
.end method
