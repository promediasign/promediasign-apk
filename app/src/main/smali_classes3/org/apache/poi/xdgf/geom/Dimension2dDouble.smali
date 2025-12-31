.class public Lorg/apache/poi/xdgf/geom/Dimension2dDouble;
.super Ljava/awt/geom/Dimension2D;
.source "SourceFile"


# instance fields
.field height:D

.field width:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/awt/geom/Dimension2D;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->width:D

    iput-wide v0, p0, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->height:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/awt/geom/Dimension2D;-><init>()V

    iput-wide p1, p0, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->width:D

    iput-wide p3, p0, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->height:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;

    iget-wide v2, p0, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->width:D

    iget-wide v4, p1, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->width:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->height:D

    iget-wide v4, p1, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->height:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getHeight()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->height:D

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->width:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    iget-wide v0, p0, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->width:D

    iget-wide v2, p0, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->height:D

    add-double/2addr v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v2

    mul-double v4, v4, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v2

    add-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public setSize(DD)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->width:D

    iput-wide p3, p0, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->height:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dimension2dDouble["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->width:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/poi/xdgf/geom/Dimension2dDouble;->height:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
