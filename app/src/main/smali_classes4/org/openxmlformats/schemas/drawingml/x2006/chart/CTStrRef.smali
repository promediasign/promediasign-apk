.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctstrref5d1atype"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrRef;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract addNewStrCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract getF()Ljava/lang/String;
.end method

.method public abstract getStrCache()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetStrCache()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V
.end method

.method public abstract setF(Ljava/lang/String;)V
.end method

.method public abstract setStrCache(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStrData;)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetStrCache()V
.end method

.method public abstract xgetF()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetF(Lorg/apache/xmlbeans/XmlString;)V
.end method
