.class public Lorg/apache/poi/sl/draw/DrawTextParagraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/Drawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;,
        Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;
    }
.end annotation


# static fields
.field public static final HYPERLINK_HREF:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

.field public static final HYPERLINK_LABEL:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field protected autoNbrIdx:I

.field protected bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

.field protected lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/DrawTextFragment;",
            ">;"
        }
    .end annotation
.end field

.field protected maxLineHeight:D

.field protected paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sl/usermodel/TextParagraph<",
            "***>;"
        }
    .end annotation
.end field

.field protected rawText:Ljava/lang/String;

.field x:D

.field y:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->LOG:Lorg/apache/poi/util/POILogger;

    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    const-string v1, "href"

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->HYPERLINK_HREF:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    const-string v1, "label"

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->HYPERLINK_LABEL:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/usermodel/TextParagraph;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TextParagraph<",
            "***>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    return-void
.end method

.method private getParagraphShape()Lorg/apache/poi/sl/usermodel/PlaceableShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/PlaceableShape<",
            "**>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph$1;-><init>(Lorg/apache/poi/sl/draw/DrawTextParagraph;)V

    return-object v0
.end method

.method private static nextPart(Ljava/awt/Font;Ljava/lang/String;IIZ)I
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/awt/Font;->canDisplay(I)Z

    move-result v1

    if-eq v1, p4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method private processGlyphs(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/DrawFontManager;Ljava/util/List;ILorg/apache/poi/sl/usermodel/TextRun;Ljava/lang/String;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Lorg/apache/poi/sl/draw/DrawFontManager;",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;",
            ">;I",
            "Lorg/apache/poi/sl/usermodel/TextRun;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    const-string v14, " - "

    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x2

    const-string v19, " "

    const/16 v6, 0x8

    const/4 v5, 0x1

    invoke-static/range {p6 .. p6}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->getFontGroupRanges(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const/4 v3, 0x0

    const/16 v21, 0x0

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;

    invoke-virtual/range {v22 .. v22}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->getFontGroup()Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v0

    invoke-interface {v10, v0}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->LATIN:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-interface {v10, v0}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v0

    :cond_0
    invoke-interface {v8, v7, v0}, Lorg/apache/poi/sl/draw/DrawFontManager;->getMappedFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v1

    invoke-interface {v8, v7, v0}, Lorg/apache/poi/sl/draw/DrawFontManager;->getFallbackFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v23

    if-nez v1, :cond_1

    new-instance v0, Lorg/apache/poi/sl/draw/DrawFontInfo;

    move-object/from16 v4, p0

    iget-object v1, v4, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/DrawFontInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v7, v0}, Lorg/apache/poi/sl/draw/DrawFontManager;->getMappedFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object/from16 v4, p0

    :goto_1
    if-nez v1, :cond_2

    move-object/from16 v2, v23

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-interface/range {p5 .. p5}, Lorg/apache/poi/sl/usermodel/TextRun;->isBold()Z

    move-result v24

    invoke-interface/range {p5 .. p5}, Lorg/apache/poi/sl/usermodel/TextRun;->isItalic()Z

    move-result v25

    const-wide/high16 v26, 0x4024000000000000L    # 10.0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    const/4 v12, 0x0

    move-wide/from16 v3, v26

    const/4 v13, 0x1

    move/from16 v5, v24

    const/16 v15, 0x8

    move/from16 v6, v25

    invoke-interface/range {v0 .. v6}, Lorg/apache/poi/sl/draw/DrawFontManager;->createAWTFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;DZZ)Ljava/awt/Font;

    move-result-object v6

    invoke-interface/range {p5 .. p5}, Lorg/apache/poi/sl/usermodel/TextRun;->isBold()Z

    move-result v5

    invoke-interface/range {p5 .. p5}, Lorg/apache/poi/sl/usermodel/TextRun;->isItalic()Z

    move-result v25

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    move-object/from16 v2, v23

    move-object v12, v6

    move/from16 v6, v25

    invoke-interface/range {v0 .. v6}, Lorg/apache/poi/sl/draw/DrawFontManager;->createAWTFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;DZZ)Ljava/awt/Font;

    move-result-object v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->getLength()I

    move-result v1

    move/from16 v2, v21

    :goto_3
    add-int v3, v21, v1

    if-ge v2, v3, :cond_6

    invoke-static {v12, v11, v2, v3, v13}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->nextPart(Ljava/awt/Font;Ljava/lang/String;IIZ)I

    move-result v4

    if-ge v2, v4, :cond_4

    new-instance v5, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v6, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v15}, Ljava/awt/Font;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    add-int v2, p4, v2

    move/from16 v27, v1

    add-int v1, p4, v4

    invoke-direct {v5, v6, v13, v2, v1}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lorg/apache/poi/sl/draw/DrawTextParagraph;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v12, v15}, Ljava/awt/Font;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual {v11, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    new-array v6, v2, [Ljava/lang/Object;

    const-string v2, "mapped: "

    const/16 v23, 0x0

    aput-object v2, v6, v23

    const/4 v2, 0x1

    aput-object v13, v6, v2

    aput-object v19, v6, v18

    aput-object v15, v6, v17

    aput-object v19, v6, v16

    const/4 v13, 0x5

    aput-object v25, v6, v13

    const/4 v13, 0x6

    aput-object v14, v6, v13

    const/4 v13, 0x7

    aput-object v1, v6, v13

    invoke-virtual {v5, v2, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_3
    :goto_4
    const/4 v1, 0x0

    goto :goto_5

    :cond_4
    move/from16 v27, v1

    goto :goto_4

    :goto_5
    invoke-static {v12, v11, v4, v3, v1}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->nextPart(Ljava/awt/Font;Ljava/lang/String;IIZ)I

    move-result v2

    if-ge v4, v2, :cond_5

    new-instance v1, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v3, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/awt/Font;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    add-int v4, p4, v4

    add-int v13, p4, v2

    invoke-direct {v1, v3, v6, v4, v13}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/apache/poi/sl/draw/DrawTextParagraph;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v5}, Ljava/awt/Font;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v13, 0x8

    new-array v6, v13, [Ljava/lang/Object;

    const-string v22, "fallback: "

    const/16 v23, 0x0

    aput-object v22, v6, v23

    const/4 v13, 0x1

    aput-object v3, v6, v13

    aput-object v19, v6, v18

    aput-object v5, v6, v17

    aput-object v19, v6, v16

    const/4 v5, 0x5

    aput-object v15, v6, v5

    const/4 v15, 0x6

    aput-object v14, v6, v15

    const/16 v24, 0x7

    aput-object v4, v6, v24

    invoke-virtual {v1, v13, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_6

    :cond_5
    const/4 v5, 0x5

    const/4 v13, 0x1

    const/4 v15, 0x6

    const/16 v23, 0x0

    const/16 v24, 0x7

    :goto_6
    move/from16 v1, v27

    const/16 v15, 0x8

    goto/16 :goto_3

    :cond_6
    const/16 v23, 0x0

    move/from16 v21, v3

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x8

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private tab2space(Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/AttributedString;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Lucida Sans"

    :cond_0
    sget-object v2, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-virtual {v0, v2, v1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontSize()Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_1

    const-wide/high16 v1, 0x4028000000000000L    # 12.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :cond_1
    sget-object v1, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    new-instance p1, Ljava/awt/font/TextLayout;

    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    new-instance v1, Ljava/awt/font/FontRenderContext;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Ljava/awt/font/FontRenderContext;-><init>(Ljava/awt/geom/AffineTransform;ZZ)V

    invoke-direct {p1, v0, v1}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    invoke-virtual {p1}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result p1

    float-to-double v0, p1

    iget-object p1, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultTabSize()Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public applyTransform(Ljava/awt/Graphics2D;)V
    .locals 0

    return-void
.end method

.method public breakText(Ljava/awt/Graphics2D;)V
    .locals 13

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->fixFonts(Ljava/awt/Graphics2D;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getAttributedString(Ljava/awt/Graphics2D;Ljava/lang/StringBuilder;)Ljava/text/AttributedString;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    new-instance v4, Ljava/awt/font/LineBreakMeasurer;

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/awt/font/LineBreakMeasurer;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    :cond_0
    invoke-virtual {v4}, Ljava/awt/font/LineBreakMeasurer;->getPosition()I

    move-result v5

    iget-object v6, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    invoke-virtual {p0, v6, p1}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getWrappingWidth(ZLjava/awt/Graphics2D;)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    const-wide/16 v10, 0x0

    cmpg-double v12, v6, v10

    if-gez v12, :cond_1

    goto :goto_0

    :cond_1
    move-wide v8, v6

    :goto_0
    add-int/lit8 v6, v5, 0x1

    const-string v7, "\n"

    invoke-virtual {v1, v7, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v6

    :cond_2
    double-to-float v7, v8

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v6, v8}, Ljava/awt/font/LineBreakMeasurer;->nextLayout(FIZ)Ljava/awt/font/TextLayout;

    move-result-object v8

    if-nez v8, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v6, v8}, Ljava/awt/font/LineBreakMeasurer;->nextLayout(FIZ)Ljava/awt/font/TextLayout;

    move-result-object v8

    :cond_3
    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/awt/font/LineBreakMeasurer;->getPosition()I

    move-result v6

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v9

    if-ge v6, v9, :cond_5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_5

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v4, v9}, Ljava/awt/font/LineBreakMeasurer;->setPosition(I)V

    :cond_5
    iget-object v9, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v9}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getTextAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    move-result-object v9

    sget-object v10, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->JUSTIFY:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    if-eq v9, v10, :cond_6

    sget-object v10, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->JUSTIFY_LOW:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    if-ne v9, v10, :cond_7

    :cond_6
    invoke-virtual {v8, v7}, Ljava/awt/font/TextLayout;->getJustifiedLayout(F)Ljava/awt/font/TextLayout;

    move-result-object v8

    :cond_7
    if-eqz v3, :cond_8

    const/4 v5, 0x0

    goto :goto_1

    :cond_8
    new-instance v7, Ljava/text/AttributedString;

    invoke-direct {v7, v2, v5, v6}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;II)V

    move-object v5, v7

    :goto_1
    invoke-virtual {v0, v8, v5}, Lorg/apache/poi/sl/draw/DrawFactory;->getTextFragment(Ljava/awt/font/TextLayout;Ljava/text/AttributedString;)Lorg/apache/poi/sl/draw/DrawTextFragment;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v7, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->maxLineHeight:D

    invoke-virtual {v5}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getHeight()F

    move-result v5

    float-to-double v9, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    iput-wide v7, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->maxLineHeight:D

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v5

    if-ne v6, v5, :cond_0

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->rawText:Ljava/lang/String;

    return-void
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-wide v2, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->y:D

    iget-object v4, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v4}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getIndentLevel()I

    move-result v4

    iget-object v5, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getLeftMargin()Ljava/lang/Double;

    move-result-object v5

    const-wide/32 v6, 0x54e0f

    if-nez v5, :cond_1

    int-to-long v8, v4

    mul-long v8, v8, v6

    invoke-static {v8, v9}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    :cond_1
    iget-object v8, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v8}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getIndent()Ljava/lang/Double;

    move-result-object v8

    if-nez v8, :cond_2

    int-to-long v8, v4

    mul-long v8, v8, v6

    invoke-static {v8, v9}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->isHSLF()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    :cond_3
    iget-object v4, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v4}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getLineSpacing()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    :cond_4
    iget-object v6, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v9, 0x1

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/poi/sl/draw/DrawTextFragment;

    if-eqz v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->isEmptyParagraph()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getAttributedString()Ljava/text/AttributedString;

    move-result-object v9

    invoke-virtual {v9}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v9

    invoke-virtual {v0, v1, v9}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getBullet(Ljava/awt/Graphics2D;Ljava/text/AttributedCharacterIterator;)Lorg/apache/poi/sl/draw/DrawTextFragment;

    move-result-object v9

    iput-object v9, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    :cond_5
    iget-object v9, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    if-eqz v9, :cond_6

    iget-wide v11, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->x:D

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    add-double/2addr v13, v11

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    add-double/2addr v11, v13

    invoke-virtual {v9, v11, v12, v2, v3}, Lorg/apache/poi/sl/draw/DrawTextFragment;->setPosition(DD)V

    iget-object v9, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {v9, v1}, Lorg/apache/poi/sl/draw/DrawTextFragment;->draw(Ljava/awt/Graphics2D;)V

    iget-object v9, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {v9}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getLayout()Ljava/awt/font/TextLayout;

    move-result-object v9

    invoke-virtual {v9}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result v9

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v9, v11

    float-to-double v11, v9

    iget-wide v13, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->x:D

    move-wide v15, v2

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    add-double v19, v19, v17

    add-double v11, v19, v11

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    add-double/2addr v2, v13

    goto :goto_1

    :cond_6
    move-wide v15, v2

    iget-wide v2, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->x:D

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    add-double/2addr v2, v11

    :goto_1
    iget-object v9, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v9}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v9

    invoke-static {v1, v9}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v9

    iget-object v11, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v11}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/poi/sl/usermodel/TextShape;->getInsets()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object v11

    iget-wide v12, v11, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    move-object v14, v8

    iget-wide v7, v11, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    iget-object v11, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v11}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getTextAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    move-result-object v11

    if-nez v11, :cond_7

    sget-object v11, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->LEFT:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    :cond_7
    sget-object v18, Lorg/apache/poi/sl/draw/DrawTextParagraph$2;->$SwitchMap$org$apache$poi$sl$usermodel$TextParagraph$TextAlign:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v18, v11

    move-object/from16 v18, v6

    const/4 v6, 0x1

    if-eq v11, v6, :cond_9

    const/4 v6, 0x2

    if-eq v11, v6, :cond_8

    move-object v11, v14

    move-wide v0, v15

    goto :goto_3

    :cond_8
    invoke-virtual {v9}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v19

    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getWidth()F

    move-result v6

    move-object v11, v14

    move-wide/from16 v21, v15

    float-to-double v14, v6

    sub-double v19, v19, v14

    sub-double v19, v19, v12

    sub-double v19, v19, v7

    add-double v2, v19, v2

    :goto_2
    move-wide/from16 v0, v21

    goto :goto_3

    :cond_9
    move-object v11, v14

    move-wide/from16 v21, v15

    invoke-virtual {v9}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v14

    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getWidth()F

    move-result v6

    float-to-double v0, v6

    sub-double/2addr v14, v0

    sub-double/2addr v14, v12

    sub-double/2addr v14, v7

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sub-double/2addr v14, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr v14, v0

    add-double/2addr v2, v14

    goto :goto_2

    :goto_3
    invoke-virtual {v10, v2, v3, v0, v1}, Lorg/apache/poi/sl/draw/DrawTextFragment;->setPosition(DD)V

    move-object/from16 v2, p1

    invoke-virtual {v10, v2}, Lorg/apache/poi/sl/draw/DrawTextFragment;->draw(Ljava/awt/Graphics2D;)V

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    if-lez v3, :cond_a

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    mul-double v6, v6, v8

    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getHeight()F

    move-result v3

    float-to-double v8, v3

    mul-double v6, v6, v8

    add-double/2addr v6, v0

    move-wide v0, v6

    goto :goto_4

    :cond_a
    neg-double v6, v6

    add-double/2addr v0, v6

    :goto_4
    const/4 v9, 0x0

    move-object v8, v11

    move-object/from16 v6, v18

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    move-object v1, v2

    move-wide/from16 v2, v23

    goto/16 :goto_0

    :cond_b
    move-wide/from16 v23, v2

    move-object v3, v0

    move-wide/from16 v0, v23

    iget-wide v4, v3, Lorg/apache/poi/sl/draw/DrawTextParagraph;->y:D

    sub-double/2addr v0, v4

    iput-wide v0, v3, Lorg/apache/poi/sl/draw/DrawTextParagraph;->y:D

    return-void
.end method

.method public drawContent(Ljava/awt/Graphics2D;)V
    .locals 0

    return-void
.end method

.method public getAttributedString(Ljava/awt/Graphics2D;Ljava/lang/StringBuilder;)Ljava/text/AttributedString;
    .locals 12

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getParagraphShape()Lorg/apache/poi/sl/usermodel/PlaceableShape;

    move-result-object v8

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getFontManager(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFontManager;

    move-result-object v9

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/apache/poi/sl/usermodel/TextRun;

    invoke-virtual {p0, p1, v5}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getRenderableText(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v5, v1}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v1

    invoke-interface {v9, p1, v1, v0}, Lorg/apache/poi/sl/draw/DrawFontManager;->mapFontCharset(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/sl/draw/DrawPaint;

    invoke-direct {v2, v8}, Lorg/apache/poi/sl/draw/DrawPaint;-><init>(Lorg/apache/poi/sl/usermodel/PlaceableShape;)V

    invoke-virtual {v2, p1, v1}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v3, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    invoke-direct {v2, v3, v1, v4, v0}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontSize()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultFontSize()Ljava/lang/Double;

    move-result-object v1

    :cond_2
    new-instance v2, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v3, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v2, v3, v1, v4, v0}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextRun;->isBold()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v2, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    sget-object v3, Ljava/awt/font/TextAttribute;->WEIGHT_BOLD:Ljava/lang/Float;

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextRun;->isItalic()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v2, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    sget-object v3, Ljava/awt/font/TextAttribute;->POSTURE_OBLIQUE:Ljava/lang/Float;

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextRun;->isUnderlined()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v2, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    sget-object v3, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v2, Ljava/awt/font/TextAttribute;->INPUT_METHOD_UNDERLINE:Ljava/awt/font/TextAttribute;

    sget-object v3, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_TWO_PIXEL:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextRun;->isStrikethrough()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v2, Ljava/awt/font/TextAttribute;->STRIKETHROUGH:Ljava/awt/font/TextAttribute;

    sget-object v3, Ljava/awt/font/TextAttribute;->STRIKETHROUGH_ON:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextRun;->isSubscript()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v2, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    sget-object v3, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUB:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextRun;->isSuperscript()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v2, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    sget-object v3, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUPER:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextRun;->getHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v2, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v3, Lorg/apache/poi/sl/draw/DrawTextParagraph;->HYPERLINK_HREF:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    invoke-interface {v1}, Lorg/apache/poi/common/usermodel/Hyperlink;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v3, v11, v4, v0}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v3, Lorg/apache/poi/sl/draw/DrawTextParagraph;->HYPERLINK_LABEL:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    invoke-interface {v1}, Lorg/apache/poi/common/usermodel/Hyperlink;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1, v4, v0}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object v0, p0

    move-object v1, p1

    move-object v2, v9

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->processGlyphs(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/DrawFontManager;Ljava/util/List;ILorg/apache/poi/sl/usermodel/TextRun;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultFontSize()Ljava/lang/Double;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v1, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    new-instance p1, Ljava/text/AttributedString;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    iget-object v1, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->attribute:Ljava/text/AttributedCharacterIterator$Attribute;

    iget-object v2, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->value:Ljava/lang/Object;

    iget v3, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->beginIndex:I

    iget v0, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->endIndex:I

    invoke-virtual {p1, v1, v2, v3, v0}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_1

    :cond_c
    return-object p1
.end method

.method public getBullet(Ljava/awt/Graphics2D;Ljava/text/AttributedCharacterIterator;)Lorg/apache/poi/sl/draw/DrawTextFragment;
    .locals 11

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getBulletStyle()Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getAutoNumberingScheme()Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->autoNbrIdx:I

    invoke-virtual {v2, v3}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->format(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getBulletCharacter()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getParagraphShape()Lorg/apache/poi/sl/usermodel/PlaceableShape;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getBulletFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v1, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    invoke-interface {p2, v1}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/Paint;

    goto :goto_1

    :cond_3
    new-instance v4, Lorg/apache/poi/sl/draw/DrawPaint;

    invoke-direct {v4, v1}, Lorg/apache/poi/sl/draw/DrawPaint;-><init>(Lorg/apache/poi/sl/usermodel/PlaceableShape;)V

    invoke-virtual {v4, p1, v3}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object v1

    :goto_1
    sget-object v3, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-interface {p2, v3}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getBulletFontSize()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-lez v9, :cond_5

    float-to-double v5, p2

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    mul-double v7, v7, v9

    mul-double v7, v7, v5

    double-to-float p2, v7

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    neg-double v4, v4

    double-to-float p2, v4

    :goto_2
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getBulletFont()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultFontFamily()Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v4, Lorg/apache/poi/sl/draw/DrawFontInfo;

    invoke-direct {v4, v0}, Lorg/apache/poi/sl/draw/DrawFontInfo;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getFontManager(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFontManager;

    move-result-object v0

    invoke-interface {v0, p1, v4}, Lorg/apache/poi/sl/draw/DrawFontManager;->getMappedFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v4

    new-instance v5, Ljava/text/AttributedString;

    invoke-interface {v0, p1, v4, v2}, Lorg/apache/poi/sl/draw/DrawFontManager;->mapFontCharset(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    invoke-virtual {v5, v0, v1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    sget-object v0, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-interface {v4}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v5, v3, p2}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    new-instance p2, Ljava/awt/font/TextLayout;

    invoke-virtual {v5}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object p1

    invoke-virtual {p1, p2, v5}, Lorg/apache/poi/sl/draw/DrawFactory;->getTextFragment(Ljava/awt/font/TextLayout;Ljava/text/AttributedString;)Lorg/apache/poi/sl/draw/DrawTextFragment;

    move-result-object p1

    return-object p1
.end method

.method public getFirstLineHeight()F
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getHeight()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getFirstLineLeading()F
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getLeading()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getLastLineHeight()F
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v0, v1}, LA/g;->b(Ljava/util/List;I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lorg/apache/poi/sl/draw/DrawTextFragment;

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getHeight()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    :goto_0
    return v0
.end method

.method public getRenderableText(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;
    .locals 8

    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/TextRun;->getFieldType()Lorg/apache/poi/sl/usermodel/TextRun$FieldType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sl/usermodel/TextRun$FieldType;->SLIDE_NUMBER:Lorg/apache/poi/sl/usermodel/TextRun$FieldType;

    if-ne v0, v1, :cond_1

    sget-object p2, Lorg/apache/poi/sl/draw/Drawable;->CURRENT_SLIDE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/sl/usermodel/Slide;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/Slide;->getSlideNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/TextRun;->getTextCap()Lorg/apache/poi/sl/usermodel/TextRun$TextCap;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/TextRun;->getRawText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_7

    aget-char v5, v1, v4

    const/16 v6, 0x9

    if-eq v5, v6, :cond_5

    const/16 v6, 0xb

    if-eq v5, v6, :cond_4

    sget-object v6, Lorg/apache/poi/sl/draw/DrawTextParagraph$2;->$SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    goto :goto_2

    :cond_3
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    :goto_2
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const/16 v5, 0xa

    goto :goto_2

    :cond_5
    if-nez v3, :cond_6

    invoke-direct {p0, p2}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->tab2space(Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;

    move-result-object v3

    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWrappingWidth(ZLjava/awt/Graphics2D;)D
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/TextShape;->getInsets()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object v2

    iget-wide v3, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    iget-wide v5, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    iget-object v2, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getIndentLevel()I

    move-result v2

    const/4 v7, -0x1

    if-ne v2, v7, :cond_0

    const/4 v2, 0x0

    :cond_0
    iget-object v7, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getLeftMargin()Ljava/lang/Double;

    move-result-object v7

    const-wide/32 v8, 0x54e0f

    if-nez v7, :cond_1

    add-int/lit8 v7, v2, 0x1

    int-to-long v10, v7

    mul-long v10, v10, v8

    invoke-static {v10, v11}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    :cond_1
    iget-object v10, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v10}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getIndent()Ljava/lang/Double;

    move-result-object v10

    if-nez v10, :cond_2

    int-to-long v10, v2

    mul-long v10, v10, v8

    invoke-static {v10, v11}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    :cond_2
    iget-object v2, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getRightMargin()Ljava/lang/Double;

    move-result-object v2

    const-wide/16 v8, 0x0

    if-nez v2, :cond_3

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_3
    move-object/from16 v11, p2

    invoke-static {v11, v1}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v11

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/TextShape;->getTextDirection()Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    move-result-object v12

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/TextShape;->getWordWrap()Z

    move-result v13

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-nez v13, :cond_6

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/Shape;->getSheet()Lorg/apache/poi/sl/usermodel/Sheet;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/Sheet;->getSlideShow()Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/SlideShow;->getPageSize()Ljava/awt/Dimension;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/sl/draw/DrawTextParagraph$2;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v15, :cond_5

    if-eq v2, v14, :cond_4

    invoke-virtual {v1}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v1

    :goto_0
    invoke-virtual {v11}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v3

    goto :goto_4

    :cond_4
    invoke-virtual {v11}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v1

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v1

    goto :goto_0

    :cond_6
    sget-object v1, Lorg/apache/poi/sl/draw/DrawTextParagraph$2;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v1, v1, v12

    if-eq v1, v15, :cond_7

    if-eq v1, v14, :cond_7

    invoke-virtual {v11}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v11

    :goto_1
    sub-double/2addr v11, v3

    sub-double/2addr v11, v5

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    sub-double/2addr v11, v3

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sub-double/2addr v11, v1

    move-wide v1, v11

    goto :goto_2

    :cond_7
    invoke-virtual {v11}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v11

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->isHSLF()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    if-eqz v3, :cond_8

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpl-double v5, v3, v8

    if-lez v5, :cond_a

    :goto_3
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    :goto_4
    sub-double/2addr v1, v3

    goto :goto_5

    :cond_8
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpl-double v5, v3, v8

    if-lez v5, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpg-double v5, v3, v8

    if-gez v5, :cond_a

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    add-double/2addr v1, v3

    :cond_a
    :goto_5
    return-wide v1
.end method

.method public getY()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->y:D

    return-wide v0
.end method

.method public isEmptyParagraph()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->rawText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isHSLF()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sl/draw/DrawShape;->isHSLF(Lorg/apache/poi/sl/usermodel/Shape;)Z

    move-result v0

    return v0
.end method

.method public setAutoNumberingIdx(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->autoNbrIdx:I

    return-void
.end method

.method public setPosition(DD)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->x:D

    iput-wide p3, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->y:D

    return-void
.end method
