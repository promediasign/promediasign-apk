.class public Lorg/apache/poi/xdgf/util/VsdxToPng;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Usage: [--debug] in.vsdx outdir"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_0
    new-instance v0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;

    invoke-direct {v0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;-><init>()V

    const/4 v3, 0x0

    aget-object v3, p0, v3

    aget-object v4, p0, v1

    const-string v5, "--debug"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v3, p0, v1

    aget-object v4, p0, v2

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;

    invoke-direct {v0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;-><init>()V

    :cond_1
    new-instance p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;-><init>(Ljava/io/InputStream;)V

    const-wide v1, 0x4066ba2e8ba2e8baL    # 181.8181818181818

    invoke-static {p0, v4, v1, v2, v0}, Lorg/apache/poi/xdgf/util/VsdxToPng;->renderToPng(Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;Ljava/lang/String;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V

    return-void
.end method

.method public static renderToPng(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/File;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getPageSize()Lorg/apache/poi/xdgf/geom/Dimension2dDouble;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->getWidth()D

    move-result-wide v1

    mul-double v1, v1, p2

    double-to-int v1, v1

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->getHeight()D

    move-result-wide v2

    mul-double v2, v2, p2

    double-to-int v0, v2

    new-instance v2, Ljava/awt/image/BufferedImage;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, v3}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v3

    sget-object v4, Ljava/awt/RenderingHints;->KEY_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v4, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v4, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v4, Ljava/awt/RenderingHints;->KEY_FRACTIONALMETRICS:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v4, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-virtual {v3, v4}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    sget-object v4, Ljava/awt/Color;->white:Ljava/awt/Color;

    invoke-virtual {v3, v4}, Ljava/awt/Graphics2D;->setBackground(Ljava/awt/Color;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v1, v0}, Ljava/awt/Graphics2D;->clearRect(IIII)V

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Ljava/awt/Graphics2D;->translate(II)V

    neg-double v0, p2

    invoke-virtual {v3, p2, p3, v0, v1}, Ljava/awt/Graphics2D;->scale(DD)V

    invoke-virtual {p4, v3}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->setGraphics(Ljava/awt/Graphics2D;)V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getContent()Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;

    move-result-object p0

    invoke-virtual {p0, p4}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;)V

    invoke-virtual {v3}, Ljava/awt/Graphics2D;->dispose()V

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    const-string p1, "png"

    invoke-static {v2, p1, p0}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    throw p1
.end method

.method public static renderToPng(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/lang/String;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2, p3, p4}, Lorg/apache/poi/xdgf/util/VsdxToPng;->renderToPng(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/File;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V

    return-void
.end method

.method public static renderToPng(Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;Ljava/lang/String;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V
    .locals 1

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->getPages()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/XDGFPage;

    invoke-static {p1, v0, p2, p3, p4}, Lorg/apache/poi/xdgf/util/VsdxToPng;->renderToPngDir(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/File;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static renderToPngDir(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/File;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "page"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getPageNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/xdgf/util/Util;->sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "** Writing image to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p0, v0, p2, p3, p4}, Lorg/apache/poi/xdgf/util/VsdxToPng;->renderToPng(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/File;DLorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;)V

    return-void
.end method
