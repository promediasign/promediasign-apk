.class public Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;
.super Ljava/awt/Graphics2D;
.source "SourceFile"


# instance fields
.field private bufimg:Ljava/awt/image/BufferedImage;

.field private final g2D:Ljava/awt/Graphics2D;

.field private final log:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;-><init>(Ljava/io/PrintStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/awt/Graphics2D;-><init>()V

    new-instance v0, Ljava/awt/image/BufferedImage;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    invoke-direct {v0, v1, v1, v2}, Ljava/awt/image/BufferedImage;-><init>(III)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->bufimg:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getGraphics()Ljava/awt/Graphics;

    move-result-object v0

    check-cast v0, Ljava/awt/Graphics2D;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;Ljava/awt/Graphics2D;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/awt/Graphics2D;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public addRenderingHints(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addRenderingHinds(Map):\n  hints = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->addRenderingHints(Ljava/util/Map;)V

    return-void
.end method

.method public clearRect(IIII)V
    .locals 3

    .line 1
    const-string v0, "clearRect(int,int,int,int):\n  x = "

    .line 2
    .line 3
    const-string v1, "\n  y = "

    .line 4
    .line 5
    const-string v2, "\n  width = "

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\n  height = "

    .line 12
    .line 13
    invoke-static {v0, p3, p4, v1}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->clearRect(IIII)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public clip(Ljava/awt/Shape;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clip(Shape):\n  s = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->clip(Ljava/awt/Shape;)V

    return-void
.end method

.method public clipRect(IIII)V
    .locals 3

    .line 1
    const-string v0, "clipRect(int, int, int, int):\n  x = "

    .line 2
    .line 3
    const-string v1, "\n  y = "

    .line 4
    .line 5
    const-string v2, "\n  width = "

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "height = "

    .line 12
    .line 13
    invoke-static {v0, p3, p4, v1}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->clipRect(IIII)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public copyArea(IIIIII)V
    .locals 9

    .line 1
    const-string v0, "copyArea(int,int,int,int):\n  x = "

    .line 2
    .line 3
    const-string v1, "\n  y = "

    .line 4
    .line 5
    const-string v2, "\n  width = "

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\n  height = "

    .line 12
    .line 13
    invoke-static {v0, p3, p4, v1}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 23
    .line 24
    move v3, p1

    .line 25
    move v4, p2

    .line 26
    move v5, p3

    .line 27
    move v6, p4

    .line 28
    move v7, p5

    .line 29
    move v8, p6

    .line 30
    invoke-virtual/range {v2 .. v8}, Ljava/awt/Graphics2D;->copyArea(IIIIII)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public create()Ljava/awt/Graphics;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "create():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->create()Ljava/awt/Graphics;

    move-result-object v0

    return-object v0
.end method

.method public create(IIII)Ljava/awt/Graphics;
    .locals 3

    const-string v0, "create(int,int,int,int):\n  x = "

    const-string v1, "\n  y = "

    const-string v2, "\n  width = "

    .line 2
    invoke-static {v0, p1, v1, p2, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    const-string v1, "\n  height = "

    .line 4
    invoke-static {v0, p3, p4, v1}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->create(IIII)Ljava/awt/Graphics;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "dispose():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->dispose()V

    return-void
.end method

.method public draw(Ljava/awt/Shape;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "draw(Shape):\n  s = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    return-void
.end method

.method public draw3DRect(IIIIZ)V
    .locals 8

    .line 1
    const-string v0, "draw3DRect(int,int,int,int,boolean):\n  x = "

    .line 2
    .line 3
    const-string v1, "\n  y = "

    .line 4
    .line 5
    const-string v2, "\n  width = "

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\n  height = "

    .line 12
    .line 13
    const-string v2, "\n  raised = "

    .line 14
    .line 15
    invoke-static {v0, p3, v1, p4, v2}, Ls/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 31
    .line 32
    move v3, p1

    .line 33
    move v4, p2

    .line 34
    move v5, p3

    .line 35
    move v6, p4

    .line 36
    move v7, p5

    .line 37
    invoke-virtual/range {v2 .. v7}, Ljava/awt/Graphics2D;->draw3DRect(IIIIZ)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public drawArc(IIIIII)V
    .locals 9

    .line 1
    const-string v0, "drawArc(int,int,int,int,int,int):\n  x = "

    .line 2
    .line 3
    const-string v1, "\n  y = "

    .line 4
    .line 5
    const-string v2, "\n  width = "

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\n  height = "

    .line 12
    .line 13
    const-string v2, "\n  startAngle = "

    .line 14
    .line 15
    invoke-static {v0, p3, v1, p4, v2}, Ls/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "\n  arcAngle = "

    .line 19
    .line 20
    invoke-static {v0, p5, p6, v1}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 30
    .line 31
    move v3, p1

    .line 32
    move v4, p2

    .line 33
    move v5, p3

    .line 34
    move v6, p4

    .line 35
    move v7, p5

    .line 36
    move v8, p6

    .line 37
    invoke-virtual/range {v2 .. v8}, Ljava/awt/Graphics2D;->drawArc(IIIIII)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public drawBytes([BIIII)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "drawBytes(byte[],int,int,int,int):\n  data = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "\n  offset = "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\n  length = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "\n  x = "

    .line 29
    .line 30
    const-string v2, "\n  y = "

    .line 31
    .line 32
    invoke-static {v0, p3, v1, p4, v2}, Ls/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 48
    .line 49
    move-object v3, p1

    .line 50
    move v4, p2

    .line 51
    move v5, p3

    .line 52
    move v6, p4

    .line 53
    move v7, p5

    .line 54
    invoke-virtual/range {v2 .. v7}, Ljava/awt/Graphics2D;->drawBytes([BIIII)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public drawChars([CIIII)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "drawChars(data,int,int,int,int):\n  data = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "\n  offset = "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\n  length = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "\n  x = "

    .line 29
    .line 30
    const-string v2, "\n  y = "

    .line 31
    .line 32
    invoke-static {v0, p3, v1, p4, v2}, Ls/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 48
    .line 49
    move-object v3, p1

    .line 50
    move v4, p2

    .line 51
    move v5, p3

    .line 52
    move v6, p4

    .line 53
    move v7, p5

    .line 54
    invoke-virtual/range {v2 .. v7}, Ljava/awt/Graphics2D;->drawChars([CIIII)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public drawGlyphVector(Ljava/awt/font/GlyphVector;FF)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawGlyphVector(GlyphVector, float, float):\n  g = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n  y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2, p3}, Ljava/awt/Graphics2D;->drawGlyphVector(Ljava/awt/font/GlyphVector;FF)V

    return-void
.end method

.method public drawImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImageOp;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawImage(BufferedImage, BufferedImageOp, x, y):\n  img = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  op = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  y = "

    .line 1
    invoke-static {v0, p3, p4, v1}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImageOp;II)V

    return-void
.end method

.method public drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 15

    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drawImage(Image,int,int,int,int,int,int,int,int,Color,ImageObserver):\n  img = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n  dx1 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n  dy1 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n  dx2 = "

    const-string v4, "\n  dy2 = "

    move/from16 v6, p3

    move/from16 v7, p4

    .line 7
    invoke-static {v1, v6, v3, v7, v4}, Ls/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 8
    const-string v3, "\n  sx1 = "

    const-string v4, "\n  sy1 = "

    move/from16 v8, p5

    move/from16 v9, p6

    .line 9
    invoke-static {v1, v8, v3, v9, v4}, Ls/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 10
    const-string v3, "\n  sx2 = "

    const-string v4, "\n  sy2 = "

    move/from16 v10, p7

    move/from16 v11, p8

    .line 11
    invoke-static {v1, v10, v3, v11, v4}, Ls/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    move/from16 v12, p9

    .line 12
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n  bgcolor = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p10

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n  observer = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p11

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v14}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v1

    return v1
.end method

.method public drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z
    .locals 14

    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drawImage(Image,int,int,int,int,int,int,int,int,ImageObserver):\n  img = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n  dx1 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n  dy1 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n  dx2 = "

    const-string v4, "\n  dy2 = "

    move/from16 v6, p3

    move/from16 v7, p4

    .line 17
    invoke-static {v1, v6, v3, v7, v4}, Ls/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 18
    const-string v3, "\n  sx1 = "

    const-string v4, "\n  sy1 = "

    move/from16 v8, p5

    move/from16 v9, p6

    .line 19
    invoke-static {v1, v8, v3, v9, v4}, Ls/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 20
    const-string v3, "\n  sx2 = "

    const-string v4, "\n  sy2 = "

    move/from16 v10, p7

    move/from16 v11, p8

    .line 21
    invoke-static {v1, v10, v3, v11, v4}, Ls/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    move/from16 v12, p9

    .line 22
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n  observer = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p10

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    move-object v4, p1

    invoke-virtual/range {v3 .. v13}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z

    move-result v1

    return v1
.end method

.method public drawImage(Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 11

    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drawImage(Image,int,int,int,int,Color,ImageObserver):\n  img = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n  x = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n  y = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n  width = "

    const-string v4, "\n  height = "

    move v6, p3

    move v7, p4

    .line 27
    invoke-static {v1, p3, v3, p4, v4}, Ls/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    move/from16 v8, p5

    .line 28
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n  bgcolor = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p6

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n  observer = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p7

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v1

    return v1
.end method

.method public drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawImage(Image,int,int,width,height,observer):\n  img = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  width = "

    const-string v2, "\n  height = "

    .line 33
    invoke-static {v0, p3, v1, p4, v2}, Ls/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 34
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  observer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    move-result p1

    return p1
.end method

.method public drawImage(Ljava/awt/Image;IILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 8

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawImage(Image,int,int,Color,ImageObserver):\n  img = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  bgcolor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  observer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result p1

    return p1
.end method

.method public drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawImage(Image,int,int,observer):\n  img = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  observer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    move-result p1

    return p1
.end method

.method public drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawImage(Image,AfflineTransform,ImageObserver):\n  img = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  xform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  obs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2, p3}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    move-result p1

    return p1
.end method

.method public drawLine(IIII)V
    .locals 3

    .line 1
    const-string v0, "drawLine(int,int,int,int):\n  x1 = "

    .line 2
    .line 3
    const-string v1, "\n  y1 = "

    .line 4
    .line 5
    const-string v2, "\n  x2 = "

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\n  y2 = "

    .line 12
    .line 13
    invoke-static {v0, p3, p4, v1}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->drawLine(IIII)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public drawOval(IIII)V
    .locals 3

    .line 1
    const-string v0, "drawOval(int,int,int,int):\n  x = "

    .line 2
    .line 3
    const-string v1, "\n  y = "

    .line 4
    .line 5
    const-string v2, "\n  width = "

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\n  height = "

    .line 12
    .line 13
    invoke-static {v0, p3, p4, v1}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->drawOval(IIII)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public drawPolygon(Ljava/awt/Polygon;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawPolygon(Polygon):\n  p = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->drawPolygon(Ljava/awt/Polygon;)V

    return-void
.end method

.method public drawPolygon([I[II)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawPolygon(int[],int[],int):\n  xPoints = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  yPoints = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  nPoints = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2, p3}, Ljava/awt/Graphics2D;->drawPolygon([I[II)V

    return-void
.end method

.method public drawPolyline([I[II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawPolyline(int[],int[],int):\n  xPoints = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  yPoints = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  nPoints = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2, p3}, Ljava/awt/Graphics2D;->drawPolyline([I[II)V

    return-void
.end method

.method public drawRect(IIII)V
    .locals 3

    .line 1
    const-string v0, "drawRect(int,int,int,int):\n  x = "

    .line 2
    .line 3
    const-string v1, "\n  y = "

    .line 4
    .line 5
    const-string v2, "\n  width = "

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\n  height = "

    .line 12
    .line 13
    invoke-static {v0, p3, p4, v1}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->drawRect(IIII)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public drawRenderableImage(Ljava/awt/image/renderable/RenderableImage;Ljava/awt/geom/AffineTransform;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawRenderableImage(RenderableImage, AfflineTransform):\n  img = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  xform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2}, Ljava/awt/Graphics2D;->drawRenderableImage(Ljava/awt/image/renderable/RenderableImage;Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawRenderedImage(RenderedImage, AffineTransform):\n  img = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  xform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public drawRoundRect(IIIIII)V
    .locals 9

    .line 1
    const-string v0, "drawRoundRect(int,int,int,int,int,int):\n  x = "

    .line 2
    .line 3
    const-string v1, "\n  y = "

    .line 4
    .line 5
    const-string v2, "\n  width = "

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\n  height = "

    .line 12
    .line 13
    const-string v2, "\n  arcWidth = "

    .line 14
    .line 15
    invoke-static {v0, p3, v1, p4, v2}, Ls/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "\n  arcHeight = "

    .line 19
    .line 20
    invoke-static {v0, p5, p6, v1}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 30
    .line 31
    move v3, p1

    .line 32
    move v4, p2

    .line 33
    move v5, p3

    .line 34
    move v6, p4

    .line 35
    move v7, p5

    .line 36
    move v8, p6

    .line 37
    invoke-virtual/range {v2 .. v8}, Ljava/awt/Graphics2D;->drawRoundRect(IIIIII)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public drawString(Ljava/lang/String;FF)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawString(s,x,y):\n  s = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n  y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2, p3}, Ljava/awt/Graphics2D;->drawString(Ljava/lang/String;FF)V

    return-void
.end method

.method public drawString(Ljava/lang/String;II)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawString(str,int,int):\n  str = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2, p3}, Ljava/awt/Graphics2D;->drawString(Ljava/lang/String;II)V

    return-void
.end method

.method public drawString(Ljava/text/AttributedCharacterIterator;FF)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawString(AttributedCharacterIterator):\n  iterator = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n  y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2, p3}, Ljava/awt/Graphics2D;->drawString(Ljava/text/AttributedCharacterIterator;FF)V

    return-void
.end method

.method public drawString(Ljava/text/AttributedCharacterIterator;II)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawString(AttributedCharacterIterator,int,int):\n  iterator = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2, p3}, Ljava/awt/Graphics2D;->drawString(Ljava/text/AttributedCharacterIterator;II)V

    return-void
.end method

.method public fill(Ljava/awt/Shape;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fill(Shape):\n  s = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    return-void
.end method

.method public fill3DRect(IIIIZ)V
    .locals 8

    .line 1
    const-string v0, "fill3DRect(int,int,int,int,boolean):\n  x = "

    .line 2
    .line 3
    const-string v1, "\n  y = "

    .line 4
    .line 5
    const-string v2, "\n  width = "

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\n  height = "

    .line 12
    .line 13
    const-string v2, "\n  raised = "

    .line 14
    .line 15
    invoke-static {v0, p3, v1, p4, v2}, Ls/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 31
    .line 32
    move v3, p1

    .line 33
    move v4, p2

    .line 34
    move v5, p3

    .line 35
    move v6, p4

    .line 36
    move v7, p5

    .line 37
    invoke-virtual/range {v2 .. v7}, Ljava/awt/Graphics2D;->fill3DRect(IIIIZ)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public fillArc(IIIIII)V
    .locals 9

    .line 1
    const-string v0, "fillArc(int,int,int,int,int,int):\n  x = "

    .line 2
    .line 3
    const-string v1, "\n  y = "

    .line 4
    .line 5
    const-string v2, "\n  width = "

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\n  height = "

    .line 12
    .line 13
    const-string v2, "\n  startAngle = "

    .line 14
    .line 15
    invoke-static {v0, p3, v1, p4, v2}, Ls/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "\n  arcAngle = "

    .line 19
    .line 20
    invoke-static {v0, p5, p6, v1}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 30
    .line 31
    move v3, p1

    .line 32
    move v4, p2

    .line 33
    move v5, p3

    .line 34
    move v6, p4

    .line 35
    move v7, p5

    .line 36
    move v8, p6

    .line 37
    invoke-virtual/range {v2 .. v8}, Ljava/awt/Graphics2D;->fillArc(IIIIII)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public fillOval(IIII)V
    .locals 3

    .line 1
    const-string v0, "fillOval(int,int,int,int):\n  x = "

    .line 2
    .line 3
    const-string v1, "\n  y = "

    .line 4
    .line 5
    const-string v2, "\n  width = "

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\n  height = "

    .line 12
    .line 13
    invoke-static {v0, p3, p4, v1}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->fillOval(IIII)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public fillPolygon(Ljava/awt/Polygon;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fillPolygon(Polygon):\n  p = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->fillPolygon(Ljava/awt/Polygon;)V

    return-void
.end method

.method public fillPolygon([I[II)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fillPolygon(int[],int[],int):\n  xPoints = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  yPoints = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  nPoints = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2, p3}, Ljava/awt/Graphics2D;->fillPolygon([I[II)V

    return-void
.end method

.method public fillRect(IIII)V
    .locals 3

    .line 1
    const-string v0, "fillRect(int,int,int,int):\n  x = "

    .line 2
    .line 3
    const-string v1, "\n  y = "

    .line 4
    .line 5
    const-string v2, "\n  width = "

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\n  height = "

    .line 12
    .line 13
    invoke-static {v0, p3, p4, v1}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public fillRoundRect(IIIIII)V
    .locals 9

    .line 1
    const-string v0, "fillRoundRect(int,int,int,int,int,int):\n  x = "

    .line 2
    .line 3
    const-string v1, "\n  y = "

    .line 4
    .line 5
    const-string v2, "\n  width = "

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\n  height = "

    .line 12
    .line 13
    invoke-static {v0, p3, p4, v1}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 23
    .line 24
    move v3, p1

    .line 25
    move v4, p2

    .line 26
    move v5, p3

    .line 27
    move v6, p4

    .line 28
    move v7, p5

    .line 29
    move v8, p6

    .line 30
    invoke-virtual/range {v2 .. v8}, Ljava/awt/Graphics2D;->fillRoundRect(IIIIII)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final finalize()V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "finalize():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->finalize()V

    invoke-super {p0}, Ljava/awt/Graphics2D;->finalize()V

    return-void
.end method

.method public getBackground()Ljava/awt/Color;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getBackground():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getBackground()Ljava/awt/Color;

    move-result-object v0

    return-object v0
.end method

.method public getClip()Ljava/awt/Shape;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getClip():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getClip()Ljava/awt/Shape;

    move-result-object v0

    return-object v0
.end method

.method public getClipBounds()Ljava/awt/Rectangle;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getClipBounds():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getClipBounds()Ljava/awt/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getClipBounds(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getClipBounds(Rectangle):\n  r = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->getClipBounds(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method public getColor()Ljava/awt/Color;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getColor():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getColor()Ljava/awt/Color;

    move-result-object v0

    return-object v0
.end method

.method public getComposite()Ljava/awt/Composite;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getComposite():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getComposite()Ljava/awt/Composite;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceConfiguration()Ljava/awt/GraphicsConfiguration;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getDeviceConfiguration():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getDeviceConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getFont()Ljava/awt/Font;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getFont():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getFont()Ljava/awt/Font;

    move-result-object v0

    return-object v0
.end method

.method public getFontMetrics()Ljava/awt/FontMetrics;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getFontMetrics():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getFontMetrics()Ljava/awt/FontMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getFontMetrics():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object p1

    return-object p1
.end method

.method public getFontRenderContext()Ljava/awt/font/FontRenderContext;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getFontRenderContext():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v0

    return-object v0
.end method

.method public getPaint()Ljava/awt/Paint;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getPaint():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getPaint()Ljava/awt/Paint;

    move-result-object v0

    return-object v0
.end method

.method public getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRenderingHint(RenderingHints.Key):\n  hintKey = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRenderingHints()Ljava/awt/RenderingHints;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getRenderingHints():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getRenderingHints()Ljava/awt/RenderingHints;

    move-result-object v0

    return-object v0
.end method

.method public getStroke()Ljava/awt/Stroke;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getStroke():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getStroke()Ljava/awt/Stroke;

    move-result-object v0

    return-object v0
.end method

.method public getTransform()Ljava/awt/geom/AffineTransform;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "getTransform():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    return-object v0
.end method

.method public hit(Ljava/awt/Rectangle;Ljava/awt/Shape;Z)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hit(Rectangle, Shape, onStroke):\n  rect = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  s = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  onStroke = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2, p3}, Ljava/awt/Graphics2D;->hit(Ljava/awt/Rectangle;Ljava/awt/Shape;Z)Z

    move-result p1

    return p1
.end method

.method public hitClip(IIII)Z
    .locals 3

    .line 1
    const-string v0, "hitClip(int,int,int,int):\n  x = "

    .line 2
    .line 3
    const-string v1, "\n  y = "

    .line 4
    .line 5
    const-string v2, "\n  width = "

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\n  height = "

    .line 12
    .line 13
    invoke-static {v0, p3, p4, v1}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->hitClip(IIII)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public rotate(D)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rotate(theta):\n  theta = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2}, Ljava/awt/Graphics2D;->rotate(D)V

    return-void
.end method

.method public rotate(DDD)V
    .locals 9

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rotate(double,double,double):\n  theta = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n  x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n  y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v2 .. v8}, Ljava/awt/Graphics2D;->rotate(DDD)V

    return-void
.end method

.method public scale(DD)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scale(double,double):\n  sx = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n  sy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->scale(DD)V

    return-void
.end method

.method public setBackground(Ljava/awt/Color;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setBackground(Color):\n  color = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->setBackground(Ljava/awt/Color;)V

    return-void
.end method

.method public setClip(IIII)V
    .locals 3

    const-string v0, "setClip(int,int,int,int):\n  x = "

    const-string v1, "\n  y = "

    const-string v2, "\n  width = "

    .line 1
    invoke-static {v0, p1, v1, p2, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    const-string v1, "\n  height = "

    .line 3
    invoke-static {v0, p3, p4, v1}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->setClip(IIII)V

    return-void
.end method

.method public setClip(Ljava/awt/Shape;)V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setClip(Shape):\n  clip = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    return-void
.end method

.method public setColor(Ljava/awt/Color;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setColor():\n  c = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    return-void
.end method

.method public setComposite(Ljava/awt/Composite;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setComposite(Composite):\n  comp = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    return-void
.end method

.method public setFont(Ljava/awt/Font;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setFont(Font):\n  font = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->setFont(Ljava/awt/Font;)V

    return-void
.end method

.method public setPaint(Ljava/awt/Paint;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPaint(Paint):\n  paint = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    return-void
.end method

.method public setPaintMode()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "setPaintMode():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->setPaintMode()V

    return-void
.end method

.method public setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setRenderingHint(RenderingHints.Key, Object):\n  hintKey = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  hintValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public setRenderingHints(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setRenderingHints(Map):\n  hints = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->setRenderingHints(Ljava/util/Map;)V

    return-void
.end method

.method public setStroke(Ljava/awt/Stroke;)V
    .locals 3

    instance-of v0, p1, Ljava/awt/BasicStroke;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/awt/BasicStroke;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setStroke(Stoke):\n  s = BasicStroke(\n    dash[]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/awt/BasicStroke;->getDashArray()[F

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n    dashPhase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/awt/BasicStroke;->getDashPhase()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\n    endCap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/awt/BasicStroke;->getEndCap()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n    lineJoin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/awt/BasicStroke;->getLineJoin()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n    width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\n    miterLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/awt/BasicStroke;->getMiterLimit()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\n  )"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setStroke(Stoke):\n  s = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    return-void
.end method

.method public setTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setTransform():\n  Tx = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public setXORMode(Ljava/awt/Color;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setXORMode(Color):\n  c1 = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->setXORMode(Ljava/awt/Color;)V

    return-void
.end method

.method public shear(DD)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shear(shx, dhy):\n  shx = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n  shy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->shear(DD)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    const-string v1, "toString():"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Ljava/awt/geom/AffineTransform;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "transform(AffineTransform):\n  Tx = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1}, Ljava/awt/Graphics2D;->transform(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public translate(DD)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "translate(double, double):\n  tx = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n  ty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/Graphics2D;->translate(DD)V

    return-void
.end method

.method public translate(II)V
    .locals 2

    const-string v0, "translate(int,int):\n  x = "

    const-string v1, "\n  y = "

    .line 2
    invoke-static {v0, p1, v1, p2}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->log:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DummyGraphics2d;->g2D:Ljava/awt/Graphics2D;

    invoke-virtual {v0, p1, p2}, Ljava/awt/Graphics2D;->translate(II)V

    return-void
.end method
