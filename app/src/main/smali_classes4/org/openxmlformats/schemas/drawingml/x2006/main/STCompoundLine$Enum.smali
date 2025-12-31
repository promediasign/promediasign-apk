.class public final Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine;
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
    .locals 12

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    new-instance v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    const-string v2, "sng"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    const-string v4, "dbl"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    const-string v6, "thickThin"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    const-string v8, "thinThick"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    const-string v10, "tri"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;-><init>(Ljava/lang/String;I)V

    new-array v10, v11, [Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    aput-object v2, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    invoke-direct {v0, v10}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    move-result-object v0

    return-object v0
.end method
