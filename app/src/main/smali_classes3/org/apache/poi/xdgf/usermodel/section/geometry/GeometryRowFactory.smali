.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRowFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final _rowTypes:Lorg/apache/poi/xdgf/util/ObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/xdgf/util/ObjectFactory<",
            "Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;",
            "Lcom/microsoft/schemas/office/visio/x2012/main/RowType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "Internal error"

    const-class v3, Lorg/apache/poi/xdgf/usermodel/section/geometry/PolyLineTo;

    const-class v4, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    new-instance v5, Lorg/apache/poi/xdgf/util/ObjectFactory;

    invoke-direct {v5}, Lorg/apache/poi/xdgf/util/ObjectFactory;-><init>()V

    sput-object v5, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRowFactory;->_rowTypes:Lorg/apache/poi/xdgf/util/ObjectFactory;

    :try_start_0
    const-string v6, "ArcTo"

    const-class v7, Lorg/apache/poi/xdgf/usermodel/section/geometry/ArcTo;

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v4, v8, v0

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v6, "Ellipse"

    const-class v7, Lorg/apache/poi/xdgf/usermodel/section/geometry/Ellipse;

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v4, v8, v0

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v6, "EllipticalArcTo"

    const-class v7, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v4, v8, v0

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v6, "InfiniteLine"

    const-class v7, Lorg/apache/poi/xdgf/usermodel/section/geometry/InfiniteLine;

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v4, v8, v0

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v6, "LineTo"

    const-class v7, Lorg/apache/poi/xdgf/usermodel/section/geometry/LineTo;

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v4, v8, v0

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v6, "MoveTo"

    const-class v7, Lorg/apache/poi/xdgf/usermodel/section/geometry/MoveTo;

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v4, v8, v0

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v6, "NURBSTo"

    const-class v7, Lorg/apache/poi/xdgf/usermodel/section/geometry/NURBSTo;

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v4, v8, v0

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v6, "PolylineTo"

    new-array v7, v1, [Ljava/lang/Class;

    aput-object v4, v7, v0

    invoke-virtual {v5, v6, v3, v7}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v6, "PolyLineTo"

    new-array v7, v1, [Ljava/lang/Class;

    aput-object v4, v7, v0

    invoke-virtual {v5, v6, v3, v7}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v3, "RelCubBezTo"

    const-class v6, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelCubBezTo;

    new-array v7, v1, [Ljava/lang/Class;

    aput-object v4, v7, v0

    invoke-virtual {v5, v3, v6, v7}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v3, "RelEllipticalArcTo"

    const-class v6, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    new-array v7, v1, [Ljava/lang/Class;

    aput-object v4, v7, v0

    invoke-virtual {v5, v3, v6, v7}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v3, "RelLineTo"

    const-class v6, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelLineTo;

    new-array v7, v1, [Ljava/lang/Class;

    aput-object v4, v7, v0

    invoke-virtual {v5, v3, v6, v7}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v3, "RelMoveTo"

    const-class v6, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelMoveTo;

    new-array v7, v1, [Ljava/lang/Class;

    aput-object v4, v7, v0

    invoke-virtual {v5, v3, v6, v7}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v3, "RelQuadBezTo"

    const-class v6, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelQuadBezTo;

    new-array v7, v1, [Ljava/lang/Class;

    aput-object v4, v7, v0

    invoke-virtual {v5, v3, v6, v7}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v3, "SplineKnot"

    const-class v6, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineKnot;

    new-array v7, v1, [Ljava/lang/Class;

    aput-object v4, v7, v0

    invoke-virtual {v5, v3, v6, v7}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const-string v3, "SplineStart"

    const-class v6, Lorg/apache/poi/xdgf/usermodel/section/geometry/SplineStart;

    new-array v1, v1, [Ljava/lang/Class;

    aput-object v4, v1, v0

    invoke-virtual {v5, v3, v6, v1}, Lorg/apache/poi/xdgf/util/ObjectFactory;->put(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Lcom/microsoft/schemas/office/visio/x2012/main/RowType;)Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;
    .locals 4

    sget-object v0, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRowFactory;->_rowTypes:Lorg/apache/poi/xdgf/util/ObjectFactory;

    invoke-interface {p0}, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->getT()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xdgf/util/ObjectFactory;->load(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    return-object p0
.end method
