.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctnumval2fe1type"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumVal;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getFormatCode()Ljava/lang/String;
.end method

.method public abstract getIdx()J
.end method

.method public abstract getV()Ljava/lang/String;
.end method

.method public abstract isSetFormatCode()Z
.end method

.method public abstract setFormatCode(Ljava/lang/String;)V
.end method

.method public abstract setIdx(J)V
.end method

.method public abstract setV(Ljava/lang/String;)V
.end method

.method public abstract unsetFormatCode()V
.end method

.method public abstract xgetFormatCode()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STXstring;
.end method

.method public abstract xgetIdx()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetV()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STXstring;
.end method

.method public abstract xsetFormatCode(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STXstring;)V
.end method

.method public abstract xsetIdx(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetV(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STXstring;)V
.end method
