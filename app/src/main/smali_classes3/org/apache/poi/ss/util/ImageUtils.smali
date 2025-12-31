.class public Lorg/apache/poi/ss/util/ImageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PIXEL_DPI:I = 0x60

.field private static final logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/ss/util/ImageUtils;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/ImageUtils;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDimensionFromAnchor(Lorg/apache/poi/ss/usermodel/Picture;)Ljava/awt/Dimension;
    .locals 15

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Picture;->getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Picture;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getCol1()S

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v2, v3}, Lorg/apache/poi/ss/usermodel/Sheet;->getColumnWidthInPixels(I)F

    move-result v3

    float-to-double v5, v3

    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide v11, 0x40c29a8000000000L    # 9525.0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDx1()I

    move-result v3

    int-to-double v13, v3

    if-eqz v1, :cond_0

    div-double/2addr v13, v7

    sub-double v13, v9, v13

    mul-double v13, v13, v5

    goto :goto_0

    :cond_0
    div-double/2addr v13, v11

    sub-double v13, v5, v13

    :goto_0
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getCol2()S

    move-result v3

    if-ge v4, v3, :cond_1

    add-int/lit8 v3, v4, 0x1

    invoke-interface {v2, v4}, Lorg/apache/poi/ss/usermodel/Sheet;->getColumnWidthInPixels(I)F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v13, v4

    move v4, v3

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v2, v4}, Lorg/apache/poi/ss/usermodel/Sheet;->getColumnWidthInPixels(I)F

    move-result v3

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDx2()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-double v3, v3

    div-double/2addr v3, v7

    :goto_1
    add-double/2addr v3, v13

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDx2()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v11

    goto :goto_1

    :goto_2
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getRow1()I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    invoke-static {v2, v5}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide v7

    const-wide/high16 v13, 0x4070000000000000L    # 256.0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy1()I

    move-result v5

    if-eqz v1, :cond_3

    int-to-double v11, v5

    div-double/2addr v11, v13

    sub-double/2addr v9, v11

    mul-double v9, v9, v7

    goto :goto_3

    :cond_3
    int-to-double v9, v5

    const-wide v11, 0x40c29a8000000000L    # 9525.0

    div-double/2addr v9, v11

    sub-double v9, v7, v9

    :goto_3
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getRow2()I

    move-result v5

    if-ge v6, v5, :cond_4

    add-int/lit8 v5, v6, 0x1

    invoke-static {v2, v6}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide v6

    add-double/2addr v9, v6

    move v6, v5

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    invoke-static {v2, v6}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide v1

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy2()I

    move-result v0

    int-to-double v5, v0

    mul-double v1, v1, v5

    div-double/2addr v1, v13

    add-double/2addr v1, v9

    const-wide v5, 0x40c29a8000000000L    # 9525.0

    goto :goto_4

    :cond_5
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy2()I

    move-result v0

    int-to-double v0, v0

    const-wide v5, 0x40c29a8000000000L    # 9525.0

    div-double/2addr v0, v5

    add-double v1, v0, v9

    :goto_4
    mul-double v3, v3, v5

    mul-double v1, v1, v5

    new-instance v0, Ljava/awt/Dimension;

    invoke-static {v3, v4}, Ljava/lang/Math;->rint(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->rint(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-direct {v0, v3, v1}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public static getImageDimension(Ljava/io/InputStream;I)Ljava/awt/Dimension;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Ljava/awt/Dimension;

    invoke-direct {v2}, Ljava/awt/Dimension;-><init>()V

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    const/4 v4, 0x6

    if-eq p1, v4, :cond_0

    const/4 v4, 0x7

    if-eq p1, v4, :cond_0

    sget-object p0, Lorg/apache/poi/ss/util/ImageUtils;->logger:Lorg/apache/poi/util/POILogger;

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Only JPEG, PNG and DIB pictures can be automatically sized"

    aput-object v1, p1, v0

    invoke-virtual {p0, v3, p1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_4

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljavax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Ljavax/imageio/ImageIO;->getImageReaders(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/imageio/ImageReader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1, p0}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljavax/imageio/ImageReader;->read(I)Ljava/awt/image/BufferedImage;

    move-result-object v4

    invoke-static {p1}, Lorg/apache/poi/ss/util/ImageUtils;->getResolution(Ljavax/imageio/ImageReader;)[I

    move-result-object v5

    aget v6, v5, v0

    const/16 v7, 0x60

    if-nez v6, :cond_1

    aput v7, v5, v0

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :cond_1
    :goto_0
    aget v6, v5, v1

    if-nez v6, :cond_2

    aput v7, v5, v1

    :cond_2
    invoke-virtual {v4}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x60

    aget v8, v5, v0

    div-int/2addr v6, v8

    iput v6, v2, Ljava/awt/Dimension;->width:I

    invoke-virtual {v4}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x60

    aget v5, v5, v1

    div-int/2addr v4, v5

    iput v4, v2, Ljava/awt/Dimension;->height:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Ljavax/imageio/ImageReader;->dispose()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_2

    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljavax/imageio/ImageReader;->dispose()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    :try_start_6
    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->close()V

    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_3
    sget-object p1, Lorg/apache/poi/ss/util/ImageUtils;->logger:Lorg/apache/poi/util/POILogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-virtual {p1, v3, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_4
    return-object v2
.end method

.method public static getResolution(Ljavax/imageio/ImageReader;)[I
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/imageio/ImageReader;->getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p0

    const-string v1, "javax_imageio_1.0"

    invoke-virtual {p0, v1}, Ljavax/imageio/metadata/IIOMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    const-string v1, "HorizontalPixelSize"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const-string v2, "value"

    const/4 v3, 0x1

    const/16 v4, 0x60

    const-wide v5, 0x4039666666666666L    # 25.4

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ne v7, v3, :cond_0

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-double v7, v1

    div-double v7, v5, v7

    double-to-int v1, v7

    goto :goto_0

    :cond_0
    const/16 v1, 0x60

    :goto_0
    const-string v7, "VerticalPixelSize"

    invoke-interface {p0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ne v7, v3, :cond_1

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    float-to-double v2, p0

    div-double/2addr v5, v2

    double-to-int v4, v5

    :cond_1
    filled-new-array {v1, v4}, [I

    move-result-object p0

    return-object p0
.end method

.method public static getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D
    .locals 2

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getDefaultRowHeightInPoints()F

    move-result p0

    :goto_0
    float-to-double p0, p0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getHeightInPoints()F

    move-result p0

    goto :goto_0

    :goto_1
    invoke-static {p0, p1}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x40c29a8000000000L    # 9525.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static setPreferredSize(Lorg/apache/poi/ss/usermodel/Picture;DD)Ljava/awt/Dimension;
    .locals 19

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Picture;->getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Picture;->getPictureData()Lorg/apache/poi/ss/usermodel/PictureData;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/usermodel/Picture;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v3

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/PictureData;->getData()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/PictureData;->getPictureType()I

    move-result v2

    invoke-static {v4, v2}, Lorg/apache/poi/ss/util/ImageUtils;->getImageDimension(Ljava/io/InputStream;I)Ljava/awt/Dimension;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lorg/apache/poi/ss/util/ImageUtils;->getDimensionFromAnchor(Lorg/apache/poi/ss/usermodel/Picture;)Ljava/awt/Dimension;

    move-result-object v4

    const-wide v5, 0x40c29a8000000000L    # 9525.0

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v9, p1, v7

    if-nez v9, :cond_0

    invoke-virtual {v2}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v9

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v9

    div-double/2addr v9, v5

    mul-double v9, v9, p1

    :goto_0
    cmpl-double v11, p3, v7

    if-nez v11, :cond_1

    invoke-virtual {v2}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v7

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v7

    div-double/2addr v7, v5

    mul-double v7, v7, p3

    :goto_1
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getCol1()S

    move-result v2

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3, v2}, Lorg/apache/poi/ss/usermodel/Sheet;->getColumnWidthInPixels(I)F

    move-result v2

    float-to-double v11, v2

    const-wide/high16 v13, 0x4090000000000000L    # 1024.0

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDx1()I

    move-result v2

    int-to-double v5, v2

    if-eqz v1, :cond_2

    div-double/2addr v5, v13

    sub-double v5, v15, v5

    mul-double v5, v5, v11

    goto :goto_2

    :cond_2
    const-wide v17, 0x40c29a8000000000L    # 9525.0

    div-double v5, v5, v17

    sub-double v5, v11, v5

    :goto_2
    cmpg-double v2, v5, v9

    if-gez v2, :cond_3

    add-int/lit8 v2, v4, 0x1

    invoke-interface {v3, v4}, Lorg/apache/poi/ss/usermodel/Sheet;->getColumnWidthInPixels(I)F

    move-result v4

    float-to-double v11, v4

    add-double/2addr v5, v11

    move v4, v2

    goto :goto_2

    :cond_3
    cmpl-double v11, v5, v9

    if-lez v11, :cond_5

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Lorg/apache/poi/ss/usermodel/Sheet;->getColumnWidthInPixels(I)F

    move-result v11

    float-to-double v11, v11

    sub-double/2addr v5, v9

    if-eqz v1, :cond_4

    sub-double v5, v11, v5

    div-double/2addr v5, v11

    mul-double v5, v5, v13

    double-to-int v5, v5

    goto :goto_3

    :cond_4
    sub-double/2addr v11, v5

    const-wide v5, 0x40c29a8000000000L    # 9525.0

    mul-double v11, v11, v5

    double-to-int v5, v11

    :goto_3
    if-gez v5, :cond_6

    :cond_5
    const/4 v5, 0x0

    :cond_6
    invoke-interface {v0, v4}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setCol2(I)V

    invoke-interface {v0, v5}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setDx2(I)V

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getRow1()I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    invoke-static {v3, v4}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide v11

    const-wide/high16 v13, 0x4070000000000000L    # 256.0

    if-eqz v1, :cond_7

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy1()I

    move-result v4

    move-object v6, v3

    int-to-double v2, v4

    div-double/2addr v2, v13

    sub-double/2addr v15, v2

    mul-double v15, v15, v11

    goto :goto_4

    :cond_7
    move-object v6, v3

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->getDy1()I

    move-result v2

    int-to-double v2, v2

    const-wide v15, 0x40c29a8000000000L    # 9525.0

    div-double/2addr v2, v15

    sub-double v15, v11, v2

    :goto_4
    cmpg-double v2, v15, v7

    if-gez v2, :cond_8

    add-int/lit8 v2, v5, 0x1

    invoke-static {v6, v5}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide v3

    add-double/2addr v15, v3

    move v5, v2

    goto :goto_4

    :cond_8
    cmpl-double v2, v15, v7

    if-lez v2, :cond_b

    add-int/lit8 v5, v5, -0x1

    invoke-static {v6, v5}, Lorg/apache/poi/ss/util/ImageUtils;->getRowHeightInPixels(Lorg/apache/poi/ss/usermodel/Sheet;I)D

    move-result-wide v2

    sub-double/2addr v15, v7

    if-eqz v1, :cond_9

    sub-double v11, v2, v15

    div-double/2addr v11, v2

    mul-double v11, v11, v13

    double-to-int v1, v11

    const-wide v11, 0x40c29a8000000000L    # 9525.0

    goto :goto_5

    :cond_9
    sub-double/2addr v2, v15

    const-wide v11, 0x40c29a8000000000L    # 9525.0

    mul-double v2, v2, v11

    double-to-int v1, v2

    :goto_5
    if-gez v1, :cond_a

    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    :cond_a
    move v2, v1

    goto :goto_7

    :cond_b
    const-wide v11, 0x40c29a8000000000L    # 9525.0

    goto :goto_6

    :goto_7
    invoke-interface {v0, v5}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setRow2(I)V

    invoke-interface {v0, v2}, Lorg/apache/poi/ss/usermodel/ClientAnchor;->setDy2(I)V

    new-instance v0, Ljava/awt/Dimension;

    mul-double v9, v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    mul-double v7, v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v1, v3

    invoke-direct {v0, v2, v1}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0
.end method
