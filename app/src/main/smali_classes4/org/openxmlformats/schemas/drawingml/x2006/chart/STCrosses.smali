.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Factory;,
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;
    }
.end annotation


# static fields
.field public static final AUTO_ZERO:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;

.field public static final INT_AUTO_ZERO:I = 0x1

.field public static final INT_MAX:I = 0x2

.field public static final INT_MIN:I = 0x3

.field public static final MAX:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;

.field public static final MIN:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "stcrosses3cc8type"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, LA/g;->s(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    .line 12
    .line 13
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    const-string v0, "autoZero"

    .line 16
    .line 17
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses;->AUTO_ZERO:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;

    .line 22
    .line 23
    const-string v0, "max"

    .line 24
    .line 25
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses;->MAX:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;

    .line 30
    .line 31
    const-string v0, "min"

    .line 32
    .line 33
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses;->MIN:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
