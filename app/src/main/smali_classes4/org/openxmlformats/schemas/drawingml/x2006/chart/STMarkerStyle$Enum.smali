.class public final Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L

.field public static final table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    new-instance v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v2, "circle"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v4, "dash"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v6, "diamond"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v8, "dot"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v10, "none"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v11}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v12, "picture"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v13}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v14, "plus"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v15}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v15, "square"

    const/16 v13, 0x8

    invoke-direct {v14, v15, v13}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v15, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v13, "star"

    const/16 v11, 0x9

    invoke-direct {v15, v13, v11}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v13, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v11, "triangle"

    const/16 v9, 0xa

    invoke-direct {v13, v11, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v9, "x"

    const/16 v7, 0xb

    invoke-direct {v11, v9, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-array v7, v7, [Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const/4 v9, 0x0

    aput-object v1, v7, v9

    aput-object v2, v7, v3

    aput-object v4, v7, v5

    const/4 v1, 0x3

    aput-object v6, v7, v1

    const/4 v1, 0x4

    aput-object v8, v7, v1

    const/4 v1, 0x5

    aput-object v10, v7, v1

    const/4 v1, 0x6

    aput-object v12, v7, v1

    const/4 v1, 0x7

    aput-object v14, v7, v1

    const/16 v1, 0x8

    aput-object v15, v7, v1

    const/16 v1, 0x9

    aput-object v13, v7, v1

    const/16 v1, 0xa

    aput-object v11, v7, v1

    invoke-direct {v0, v7}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    move-result-object v0

    return-object v0
.end method
