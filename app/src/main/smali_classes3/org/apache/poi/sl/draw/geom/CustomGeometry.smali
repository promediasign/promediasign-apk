.class public Lorg/apache/poi/sl/draw/geom/CustomGeometry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/sl/draw/geom/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final adjusts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/geom/Guide;",
            ">;"
        }
    .end annotation
.end field

.field final guides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/geom/Guide;",
            ">;"
        }
    .end annotation
.end field

.field final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/geom/Path;",
            ">;"
        }
    .end annotation
.end field

.field textBounds:Lorg/apache/poi/sl/draw/geom/Path;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->adjusts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->guides:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->paths:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->getAvLst()Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;->getGd()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/draw/binding/CTGeomGuide;

    iget-object v2, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->adjusts:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/sl/draw/geom/AdjustValue;

    invoke-direct {v3, v1}, Lorg/apache/poi/sl/draw/geom/AdjustValue;-><init>(Lorg/apache/poi/sl/draw/binding/CTGeomGuide;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->getGdLst()Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;->getGd()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/draw/binding/CTGeomGuide;

    iget-object v2, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->guides:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/sl/draw/geom/Guide;

    invoke-direct {v3, v1}, Lorg/apache/poi/sl/draw/geom/Guide;-><init>(Lorg/apache/poi/sl/draw/binding/CTGeomGuide;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->getPathLst()Lorg/apache/poi/sl/draw/binding/CTPath2DList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/binding/CTPath2DList;->getPath()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/draw/binding/CTPath2D;

    iget-object v2, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->paths:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v3, v1}, Lorg/apache/poi/sl/draw/geom/Path;-><init>(Lorg/apache/poi/sl/draw/binding/CTPath2D;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;->getRect()Lorg/apache/poi/sl/draw/binding/CTGeomRect;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->textBounds:Lorg/apache/poi/sl/draw/geom/Path;

    new-instance v1, Lorg/apache/poi/sl/draw/geom/MoveToCommand;

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTGeomRect;->getL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTGeomRect;->getT()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/sl/draw/geom/MoveToCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->textBounds:Lorg/apache/poi/sl/draw/geom/Path;

    new-instance v1, Lorg/apache/poi/sl/draw/geom/LineToCommand;

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTGeomRect;->getR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTGeomRect;->getT()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/sl/draw/geom/LineToCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->textBounds:Lorg/apache/poi/sl/draw/geom/Path;

    new-instance v1, Lorg/apache/poi/sl/draw/geom/LineToCommand;

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTGeomRect;->getR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTGeomRect;->getB()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/sl/draw/geom/LineToCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->textBounds:Lorg/apache/poi/sl/draw/geom/Path;

    new-instance v1, Lorg/apache/poi/sl/draw/geom/LineToCommand;

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTGeomRect;->getL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTGeomRect;->getB()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/apache/poi/sl/draw/geom/LineToCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    iget-object p1, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->textBounds:Lorg/apache/poi/sl/draw/geom/Path;

    new-instance v0, Lorg/apache/poi/sl/draw/geom/ClosePathCommand;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/ClosePathCommand;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getTextBounds()Lorg/apache/poi/sl/draw/geom/Path;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->textBounds:Lorg/apache/poi/sl/draw/geom/Path;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/sl/draw/geom/Path;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
