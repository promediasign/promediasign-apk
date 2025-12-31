.class public Lcom/scand/svg/parser/SVGParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public baseHref:Ljava/lang/String;

.field public height:F

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parse(Ljava/io/InputStream;IIIIFZZZLjava/lang/String;)Lcom/scand/svg/SVG;
    .locals 12

    .line 2
    move-object v10, p0

    move-object/from16 v0, p10

    iput-object v0, v10, Lcom/scand/svg/parser/SVGParser;->baseHref:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const-string v1, "http://xml.org/sax/features/validation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v11, Lcom/scand/svg/parser/SVGHandler;

    move-object v1, v11

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p9

    move-object v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/scand/svg/parser/SVGHandler;-><init>(IIIIFZZLcom/scand/svg/parser/SVGParser;)V

    move/from16 v1, p7

    invoke-virtual {v11, v1}, Lcom/scand/svg/parser/SVGHandler;->setIdleMode(Z)V

    invoke-interface {v0, v11}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    move-object v2, p1

    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    new-instance v0, Lcom/scand/svg/SVG;

    invoke-virtual {v11}, Lcom/scand/svg/parser/SVGHandler;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, v11, Lcom/scand/svg/parser/SVGHandler;->bounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1, v2}, Lcom/scand/svg/SVG;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    iget-object v1, v11, Lcom/scand/svg/parser/SVGHandler;->limits:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v11, Lcom/scand/svg/parser/SVGHandler;->limits:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/scand/svg/SVG;->setLimits(Landroid/graphics/RectF;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-object v0

    :goto_1
    new-instance v1, Lcom/scand/svg/parser/SVGParseException;

    invoke-direct {v1, v0}, Lcom/scand/svg/parser/SVGParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static wrapIfZipped(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v0, v1}, Ljava/io/PushbackInputStream;->unread([B)V

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    const/16 v2, -0x75

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    return-object v0

    :catch_0
    return-object p0
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;IIIIFZZLjava/lang/String;)Lcom/scand/svg/SVG;
    .locals 11

    .line 1
    invoke-static {p1}, Lcom/scand/svg/parser/SVGParser;->wrapIfZipped(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/scand/svg/parser/SVGParser;->parse(Ljava/io/InputStream;IIIIFZZZLjava/lang/String;)Lcom/scand/svg/SVG;

    move-result-object v0

    return-object v0
.end method

.method public preparse(Ljava/io/InputStream;II)V
    .locals 16

    move-object/from16 v13, p0

    invoke-static/range {p1 .. p1}, Lcom/scand/svg/parser/SVGParser;->wrapIfZipped(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v13, Lcom/scand/svg/parser/SVGParser;->baseHref:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    const-string v2, "http://xml.org/sax/features/validation"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v14

    new-instance v15, Lcom/scand/svg/parser/SVGHandler;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    move-object v1, v15

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v12, p0

    invoke-direct/range {v1 .. v12}, Lcom/scand/svg/parser/SVGHandler;-><init>(IIIIIIFZZLandroid/graphics/Canvas;Lcom/scand/svg/parser/SVGParser;)V

    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Lcom/scand/svg/parser/SVGHandler;->setIdleMode(Z)V

    invoke-interface {v14, v15}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v14, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    iget v0, v15, Lcom/scand/svg/parser/SVGHandler;->width:F

    iput v0, v13, Lcom/scand/svg/parser/SVGParser;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, v15, Lcom/scand/svg/parser/SVGHandler;->limits:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v0

    iput v2, v13, Lcom/scand/svg/parser/SVGParser;->width:F

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget v0, v15, Lcom/scand/svg/parser/SVGHandler;->height:F

    iput v0, v13, Lcom/scand/svg/parser/SVGParser;->height:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, v15, Lcom/scand/svg/parser/SVGHandler;->limits:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    iput v1, v13, Lcom/scand/svg/parser/SVGParser;->height:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_1
    new-instance v1, Lcom/scand/svg/parser/SVGParseException;

    invoke-direct {v1, v0}, Lcom/scand/svg/parser/SVGParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setFont(Lcom/scand/svg/parser/support/GraphicsSVG;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    if-eqz p7, :cond_0

    return-void

    :cond_0
    const/4 p6, 0x0

    const/4 p7, 0x1

    if-nez p5, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    const/4 p5, 0x0

    goto :goto_3

    :cond_2
    :goto_0
    const-string v0, "italic"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    const/4 p4, 0x2

    goto :goto_1

    :cond_3
    const/4 p4, 0x0

    :goto_1
    const-string v0, "bold"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 p4, p4, 0x1

    :cond_4
    :try_start_0
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x190

    if-le p5, v0, :cond_5

    add-int/lit8 p4, p4, 0x1

    :cond_5
    :goto_2
    const/4 p5, 0x1

    goto :goto_3

    :catch_0
    nop

    goto :goto_2

    :goto_3
    const/4 v0, 0x0

    if-eqz p2, :cond_6

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_6
    move-object p2, v0

    :goto_4
    if-nez p2, :cond_7

    if-eqz p8, :cond_7

    new-array p2, p7, [Ljava/lang/String;

    aput-object p8, p2, p6

    goto :goto_6

    :cond_7
    if-eqz p2, :cond_9

    if-eqz p8, :cond_9

    array-length v1, p2

    add-int/2addr v1, p7

    new-array p7, v1, [Ljava/lang/String;

    aput-object p8, p7, p6

    :goto_5
    array-length p8, p2

    if-ge p6, p8, :cond_8

    add-int/lit8 p8, p6, 0x1

    aget-object p6, p2, p6

    aput-object p6, p7, p8

    move p6, p8

    goto :goto_5

    :cond_8
    move-object p2, p7

    :cond_9
    :goto_6
    if-nez p2, :cond_d

    if-eqz p3, :cond_a

    if-eqz p5, :cond_a

    invoke-virtual {p3}, Ljava/lang/Float;->intValue()I

    move-result p2

    invoke-virtual {p1, p4, p2, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->deriveFont(IILcom/scand/svg/parser/ExternalSupport;)V

    goto :goto_9

    :cond_a
    if-eqz p5, :cond_b

    invoke-virtual {p1, p4, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->deriveFont(ILcom/scand/svg/parser/ExternalSupport;)V

    goto :goto_9

    :cond_b
    if-eqz p3, :cond_c

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/scand/svg/parser/support/GraphicsSVG;->deriveFont(F)V

    goto :goto_9

    :cond_c
    invoke-virtual {p1}, Lcom/scand/svg/parser/support/GraphicsSVG;->deriveFont()V

    goto :goto_9

    :cond_d
    if-eqz p3, :cond_e

    if-eqz p5, :cond_e

    :goto_7
    invoke-virtual {p3}, Ljava/lang/Float;->intValue()I

    move-result p3

    :goto_8
    invoke-virtual {p1, p2, p4, p3, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->setFont([Ljava/lang/String;IILcom/scand/svg/parser/ExternalSupport;)V

    goto :goto_9

    :cond_e
    if-eqz p5, :cond_f

    invoke-virtual {p1}, Lcom/scand/svg/parser/support/GraphicsSVG;->getFontSize()I

    move-result p3

    goto :goto_8

    :cond_f
    if-eqz p3, :cond_10

    invoke-virtual {p1}, Lcom/scand/svg/parser/support/GraphicsSVG;->getFontStyle()I

    move-result p4

    goto :goto_7

    :cond_10
    invoke-virtual {p1}, Lcom/scand/svg/parser/support/GraphicsSVG;->getFontStyle()I

    move-result p3

    invoke-virtual {p1}, Lcom/scand/svg/parser/support/GraphicsSVG;->getFontSize()I

    move-result p4

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->setFont([Ljava/lang/String;IILcom/scand/svg/parser/ExternalSupport;)V

    :goto_9
    return-void
.end method
