.class public Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;
.super Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
.source "SourceFile"


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

.field _rows:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_master:Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_rows:Ljava/util/SortedMap;

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;->getRowArray()[Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    move-result-object p1

    array-length v0, p1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-object p1, p1, v0

    throw p2
.end method


# virtual methods
.method public getCombinedRows()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_rows:Ljava/util/SortedMap;

    iget-object v2, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_master:Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_rows:Ljava/util/SortedMap;

    :goto_0
    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;-><init>(Ljava/util/SortedMap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public getNoShow()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_cells:Ljava/util/Map;

    const-string v1, "NoShow"

    invoke-static {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFCell;->maybeGetBoolean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_master:Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->getNoShow()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_1
    return-object v0
.end method

.method public getPath(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Ljava/awt/geom/Path2D$Double;
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->getCombinedRows()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    instance-of v2, v1, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;->getPath()Ljava/awt/geom/Path2D$Double;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v2, v1, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;->getPath()Ljava/awt/geom/Path2D$Double;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v2, v1, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    if-nez v2, :cond_a

    new-instance v2, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v2}, Ljava/awt/geom/Path2D$Double;-><init>()V

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-eqz v1, :cond_2

    move-object v5, v3

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_3

    invoke-virtual {v4, v2, p1}, Lorg/apache/poi/xdgf/geom/SplineCollector;->addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V

    :cond_3
    return-object v2

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    move-object v7, v5

    move-object v5, v1

    move-object v1, v7

    :goto_1
    instance-of v6, v1, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    if-eqz v6, :cond_6

    if-nez v4, :cond_5

    new-instance v4, Lorg/apache/poi/xdgf/geom/SplineCollector;

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    invoke-direct {v4, v1}, Lorg/apache/poi/xdgf/geom/SplineCollector;-><init>(Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;)V

    :goto_2
    move-object v1, v5

    goto :goto_0

    :cond_5
    new-instance p1, Lorg/apache/poi/POIXMLException;

    const-string v0, "SplineStart found multiple times!"

    invoke-direct {p1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    instance-of v6, v1, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;

    if-eqz v6, :cond_8

    if-eqz v4, :cond_7

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;

    invoke-virtual {v4, v1}, Lorg/apache/poi/xdgf/geom/SplineCollector;->addKnot(Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;)V

    goto :goto_2

    :cond_7
    new-instance p1, Lorg/apache/poi/POIXMLException;

    const-string v0, "SplineKnot found without SplineStart!"

    invoke-direct {p1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v4, v2, p1}, Lorg/apache/poi/xdgf/geom/SplineCollector;->addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V

    move-object v4, v3

    :cond_9
    invoke-interface {v1, v2, p1}, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;->addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V

    goto :goto_2

    :cond_a
    new-instance p1, Lorg/apache/poi/POIXMLException;

    const-string v0, "SplineStart must be preceded by another type"

    invoke-direct {p1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;)V
    .locals 3

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_master:Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    iget-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_rows:Ljava/util/SortedMap;

    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_master:Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    iget-object v1, v1, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    invoke-interface {v0, v1}, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;->setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    return-void
.end method
