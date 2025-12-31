.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctpatternfillproperties3637type"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewBgClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract addNewFgClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract getBgClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract getFgClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract getPrst()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetPatternVal$Enum;
.end method

.method public abstract isSetBgClr()Z
.end method

.method public abstract isSetFgClr()Z
.end method

.method public abstract isSetPrst()Z
.end method

.method public abstract setBgClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V
.end method

.method public abstract setFgClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V
.end method

.method public abstract setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetPatternVal$Enum;)V
.end method

.method public abstract unsetBgClr()V
.end method

.method public abstract unsetFgClr()V
.end method

.method public abstract unsetPrst()V
.end method

.method public abstract xgetPrst()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetPatternVal;
.end method

.method public abstract xsetPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetPatternVal;)V
.end method
