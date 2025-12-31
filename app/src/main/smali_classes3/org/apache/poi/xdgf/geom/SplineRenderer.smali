.class public Lorg/apache/poi/xdgf/geom/SplineRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNurbsSpline(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/ValueVector;Lcom/graphbuilder/curve/ValueVector;I)Lcom/graphbuilder/curve/ShapeMultiPath;
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/graphbuilder/curve/ValueVector;->get(I)D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/graphbuilder/curve/ValueVector;->size()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p1, v4}, Lcom/graphbuilder/curve/ValueVector;->get(I)D

    move-result-wide v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    invoke-virtual {p1, v6}, Lcom/graphbuilder/curve/ValueVector;->get(I)D

    move-result-wide v7

    sub-double/2addr v7, v1

    div-double/2addr v7, v4

    invoke-virtual {p1, v7, v8, v6}, Lcom/graphbuilder/curve/ValueVector;->set(DI)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/graphbuilder/curve/ControlPath;->numPoints()I

    move-result v1

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x1

    :goto_1
    if-ge v3, v1, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v4, v5}, Lcom/graphbuilder/curve/ValueVector;->add(D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/graphbuilder/curve/GroupIterator;

    const-string v2, "0:n-1"

    invoke-virtual {p0}, Lcom/graphbuilder/curve/ControlPath;->numPoints()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/graphbuilder/curve/GroupIterator;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/graphbuilder/curve/NURBSpline;

    invoke-direct {v2, p0, v1}, Lcom/graphbuilder/curve/NURBSpline;-><init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V

    invoke-virtual {v2, p3}, Lcom/graphbuilder/curve/NURBSpline;->setDegree(I)V

    const/4 p0, 0x2

    invoke-virtual {v2, p0}, Lcom/graphbuilder/curve/NURBSpline;->setKnotVectorType(I)V

    invoke-virtual {v2, p1}, Lcom/graphbuilder/curve/NURBSpline;->setKnotVector(Lcom/graphbuilder/curve/ValueVector;)V

    if-nez p2, :cond_2

    invoke-virtual {v2, v0}, Lcom/graphbuilder/curve/NURBSpline;->setUseWeightVector(Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2, p2}, Lcom/graphbuilder/curve/NURBSpline;->setWeightVector(Lcom/graphbuilder/curve/ValueVector;)V

    :goto_2
    new-instance p0, Lcom/graphbuilder/curve/ShapeMultiPath;

    invoke-direct {p0}, Lcom/graphbuilder/curve/ShapeMultiPath;-><init>()V

    const-wide p1, 0x3f847ae147ae147bL    # 0.01

    invoke-virtual {p0, p1, p2}, Lcom/graphbuilder/curve/ShapeMultiPath;->setFlatness(D)V

    invoke-virtual {v2, p0}, Lcom/graphbuilder/curve/NURBSpline;->appendTo(Lcom/graphbuilder/curve/MultiPath;)V

    return-object p0
.end method
