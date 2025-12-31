.class public Lorg/apache/poi/xdgf/geom/SplineCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field _knots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;",
            ">;"
        }
    .end annotation
.end field

.field _start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_knots:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    return-void
.end method


# virtual methods
.method public addKnot(Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;->getDel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_knots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 9

    invoke-virtual {p1}, Ljava/awt/geom/Path2D$Double;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object p2

    new-instance v0, Lcom/graphbuilder/curve/ControlPath;

    invoke-direct {v0}, Lcom/graphbuilder/curve/ControlPath;-><init>()V

    new-instance v1, Lcom/graphbuilder/curve/ValueVector;

    iget-object v2, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_knots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Lcom/graphbuilder/curve/ValueVector;-><init>(I)V

    iget-object v2, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    invoke-virtual {v2}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getB()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    invoke-virtual {v4}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getC()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    invoke-virtual {v6}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getD()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v2, v3}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    iget-object v2, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    invoke-virtual {v2}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getA()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Lcom/graphbuilder/geom/PointFactory;->create(DD)Lcom/graphbuilder/geom/Point2d;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/graphbuilder/curve/ControlPath;->addPoint(Lcom/graphbuilder/curve/Point;)V

    iget-object p2, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    invoke-virtual {p2}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getX()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object p2, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_start:Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    invoke-virtual {p2}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;->getY()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Lcom/graphbuilder/geom/PointFactory;->create(DD)Lcom/graphbuilder/geom/Point2d;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/graphbuilder/curve/ControlPath;->addPoint(Lcom/graphbuilder/curve/Point;)V

    iget-object p2, p0, Lorg/apache/poi/xdgf/geom/SplineCollector;->_knots:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;

    invoke-virtual {v2}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;->getA()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    invoke-virtual {v2}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;->getX()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;->getY()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v7, v8, v2, v3}, Lcom/graphbuilder/geom/PointFactory;->create(DD)Lcom/graphbuilder/geom/Point2d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/graphbuilder/curve/ControlPath;->addPoint(Lcom/graphbuilder/curve/Point;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4, v5}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    const/4 p2, 0x0

    invoke-static {v0, v1, p2, v6}, Lorg/apache/poi/xdgf/geom/SplineRenderer;->createNurbsSpline(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/ValueVector;Lcom/graphbuilder/curve/ValueVector;I)Lcom/graphbuilder/curve/ShapeMultiPath;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/awt/geom/Path2D$Double;->append(Ljava/awt/Shape;Z)V

    return-void
.end method
