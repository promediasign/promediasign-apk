.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctsertxd722type"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSerTx;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewStrRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;
.end method

.method public abstract getStrRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;
.end method

.method public abstract getV()Ljava/lang/String;
.end method

.method public abstract isSetStrRef()Z
.end method

.method public abstract isSetV()Z
.end method

.method public abstract setStrRef(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;)V
.end method

.method public abstract setV(Ljava/lang/String;)V
.end method

.method public abstract unsetStrRef()V
.end method

.method public abstract unsetV()V
.end method

.method public abstract xgetV()Lorg/openxmlformats/schemas/drawingml/x2006/chart/STXstring;
.end method

.method public abstract xsetV(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STXstring;)V
.end method
