.class public Lorg/apache/poi/hssf/model/DrawingManager2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dgg:Lorg/apache/poi/ddf/EscherDggRecord;

.field private final drawingGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherDgRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherDggRecord;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->drawingGroups:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    return-void
.end method


# virtual methods
.method public allocateShapeId(Lorg/apache/poi/ddf/EscherDgRecord;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/ddf/EscherDggRecord;->allocateShapeId(Lorg/apache/poi/ddf/EscherDgRecord;Z)I

    move-result p1

    return p1
.end method

.method public allocateShapeId(S)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "4.0"
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->drawingGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherDgRecord;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDgRecord;->getDrawingGroupId()S

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/DrawingManager2;->allocateShapeId(Lorg/apache/poi/ddf/EscherDgRecord;)I

    move-result p1

    return p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Drawing group id "

    const-string v2, " doesn\'t exist."

    .line 2
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public allocateShapeId(SLorg/apache/poi/ddf/EscherDgRecord;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "4.0"
    .end annotation

    .line 9
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/model/DrawingManager2;->allocateShapeId(Lorg/apache/poi/ddf/EscherDgRecord;)I

    move-result p1

    return p1
.end method

.method public clearDrawingGroups()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->drawingGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public createDgRecord()Lorg/apache/poi/ddf/EscherDgRecord;
    .locals 4

    new-instance v0, Lorg/apache/poi/ddf/EscherDgRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherDgRecord;-><init>()V

    const/16 v1, -0xff8

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/DrawingManager2;->findNewDrawingGroupId()S

    move-result v1

    shl-int/lit8 v2, v1, 0x4

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherDgRecord;->setNumShapes(I)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lorg/apache/poi/ddf/EscherDgRecord;->setLastMSOSPID(I)V

    iget-object v3, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->drawingGroups:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v3, v1, v2}, Lorg/apache/poi/ddf/EscherDggRecord;->addCluster(II)Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    iget-object v1, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDggRecord;->getDrawingsSaved()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherDggRecord;->setDrawingsSaved(I)V

    return-object v0
.end method

.method public findNewDrawingGroupId()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherDggRecord;->findNewDrawingGroupId()S

    move-result v0

    return v0
.end method

.method public getDgg()Lorg/apache/poi/ddf/EscherDggRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    return-object v0
.end method

.method public incrementDrawingsSaved()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/model/DrawingManager2;->dgg:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherDggRecord;->getDrawingsSaved()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherDggRecord;->setDrawingsSaved(I)V

    return-void
.end method
