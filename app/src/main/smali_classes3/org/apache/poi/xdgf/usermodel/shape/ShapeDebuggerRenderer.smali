.class public Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;
.super Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;
.source "SourceFile"


# instance fields
.field _debugAcceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;->_debugAcceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Graphics2D;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;-><init>(Ljava/awt/Graphics2D;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;->_debugAcceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    return-void
.end method


# virtual methods
.method public drawPath(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D;
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->drawPath(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;->_debugAcceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;->accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/awt/Graphics2D;->getFont()Ljava/awt/Font;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    .line 22
    .line 23
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 24
    .line 25
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 26
    .line 27
    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/awt/Graphics2D;->scale(DD)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    .line 31
    .line 32
    const v7, 0x3d4ccccd    # 0.05f

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v7}, Ljava/awt/Font;->deriveFont(F)Ljava/awt/Font;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {v2, v7}, Ljava/awt/Graphics2D;->setFont(Ljava/awt/Font;)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v7, ""

    .line 45
    .line 46
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getID()J

    .line 50
    .line 51
    .line 52
    move-result-wide v7

    .line 53
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasMasterShape()Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_1

    .line 65
    .line 66
    const-string v7, " MS:"

    .line 67
    .line 68
    invoke-static {v2, v7}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getMasterShape()Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getID()J

    .line 77
    .line 78
    .line 79
    move-result-wide v7

    .line 80
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const/high16 p1, -0x41800000    # -0.25f

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const p1, -0x42333333    # -0.1f

    .line 91
    .line 92
    .line 93
    :goto_0
    iget-object v7, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    .line 94
    .line 95
    const/4 v8, 0x0

    .line 96
    invoke-virtual {v7, v2, p1, v8}, Ljava/awt/Graphics2D;->drawString(Ljava/lang/String;FF)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->setFont(Ljava/awt/Font;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;->_graphics:Ljava/awt/Graphics2D;

    .line 105
    .line 106
    invoke-virtual {p1, v3, v4, v5, v6}, Ljava/awt/Graphics2D;->scale(DD)V

    .line 107
    .line 108
    .line 109
    :cond_2
    return-object v0
.end method

.method public setDebugAcceptor(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeDebuggerRenderer;->_debugAcceptor:Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;

    return-void
.end method
