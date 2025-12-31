.class public Lorg/apache/poi/sl/draw/binding/CTPath2D;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlAccessorType;
    value = .enum Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "CT_Path2D"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
    propOrder = {
        "closeOrMoveToOrLnTo"
    }
.end annotation


# instance fields
.field protected closeOrMoveToOrLnTo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElements;
        value = {
            .subannotation Ljavax/xml/bind/annotation/XmlElement;
                name = "lnTo"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Lorg/apache/poi/sl/draw/binding/CTPath2DLineTo;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElement;
                name = "close"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Lorg/apache/poi/sl/draw/binding/CTPath2DClose;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElement;
                name = "cubicBezTo"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Lorg/apache/poi/sl/draw/binding/CTPath2DCubicBezierTo;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElement;
                name = "quadBezTo"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Lorg/apache/poi/sl/draw/binding/CTPath2DQuadBezierTo;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElement;
                name = "arcTo"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;
            .end subannotation,
            .subannotation Ljavax/xml/bind/annotation/XmlElement;
                name = "moveTo"
                namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
                type = Lorg/apache/poi/sl/draw/binding/CTPath2DMoveTo;
            .end subannotation
        }
    .end annotation
.end field

.field protected extrusionOk:Ljava/lang/Boolean;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected fill:Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected h:Ljava/lang/Long;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected stroke:Ljava/lang/Boolean;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field

.field protected w:Ljava/lang/Long;
    .annotation runtime Ljavax/xml/bind/annotation/XmlAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCloseOrMoveToOrLnTo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->closeOrMoveToOrLnTo:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->closeOrMoveToOrLnTo:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->closeOrMoveToOrLnTo:Ljava/util/List;

    return-object v0
.end method

.method public getFill()Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->fill:Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->NORM:Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    :cond_0
    return-object v0
.end method

.method public getH()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->h:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getW()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->w:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public isExtrusionOk()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->extrusionOk:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSetCloseOrMoveToOrLnTo()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->closeOrMoveToOrLnTo:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetExtrusionOk()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->extrusionOk:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetFill()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->fill:Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetH()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->h:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetStroke()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->stroke:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetW()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->w:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStroke()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->stroke:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setExtrusionOk(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->extrusionOk:Ljava/lang/Boolean;

    return-void
.end method

.method public setFill(Lorg/apache/poi/sl/draw/binding/STPathFillMode;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->fill:Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    return-void
.end method

.method public setH(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->h:Ljava/lang/Long;

    return-void
.end method

.method public setStroke(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->stroke:Ljava/lang/Boolean;

    return-void
.end method

.method public setW(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->w:Ljava/lang/Long;

    return-void
.end method

.method public unsetCloseOrMoveToOrLnTo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->closeOrMoveToOrLnTo:Ljava/util/List;

    return-void
.end method

.method public unsetExtrusionOk()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->extrusionOk:Ljava/lang/Boolean;

    return-void
.end method

.method public unsetH()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->h:Ljava/lang/Long;

    return-void
.end method

.method public unsetStroke()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->stroke:Ljava/lang/Boolean;

    return-void
.end method

.method public unsetW()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/sl/draw/binding/CTPath2D;->w:Ljava/lang/Long;

    return-void
.end method
