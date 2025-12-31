.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctnumdatasourcef0bbtype"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumDataSource;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewNumLit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;
.end method

.method public abstract addNewNumRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;
.end method

.method public abstract getNumLit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;
.end method

.method public abstract getNumRef()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;
.end method

.method public abstract isSetNumLit()Z
.end method

.method public abstract isSetNumRef()Z
.end method

.method public abstract setNumLit(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumData;)V
.end method

.method public abstract setNumRef(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumRef;)V
.end method

.method public abstract unsetNumLit()V
.end method

.method public abstract unsetNumRef()V
.end method
