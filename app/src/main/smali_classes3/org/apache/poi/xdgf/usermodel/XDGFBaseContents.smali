.class public Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;
.super Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;
.source "SourceFile"


# instance fields
.field protected _connections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFConnection;",
            ">;"
        }
    .end annotation
.end field

.field protected _pageContents:Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;

.field protected _shapes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFShape;",
            ">;"
        }
    .end annotation
.end field

.field protected _toplevelShapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFShape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_toplevelShapes:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_shapes:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_connections:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addToShapeIndex(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_shapes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getID()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getShapes()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->addToShapeIndex(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 1

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;

    invoke-direct {v0, p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeRenderer;-><init>(Ljava/awt/Graphics2D;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;)V

    return-void
.end method

.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFConnection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_connections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShapeById(J)Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_shapes:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    return-object p1
.end method

.method public getShapes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFShape;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_shapes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getShapesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFShape;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_shapes:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTopLevelShapes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFShape;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_toplevelShapes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/PageContentsType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDocumentRead()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->_toplevelShapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    new-instance v2, Ljava/awt/geom/AffineTransform;

    invoke-direct {v2}, Ljava/awt/geom/AffineTransform;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;Ljava/awt/geom/AffineTransform;I)V
    :try_end_0
    .catch Lorg/apache/poi/xdgf/usermodel/shape/exceptions/StopVisiting; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/POIXMLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p0, p1}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/POIXMLException;)Lorg/apache/poi/POIXMLException;

    move-result-object p1

    throw p1

    :catch_1
    :cond_0
    return-void
.end method
