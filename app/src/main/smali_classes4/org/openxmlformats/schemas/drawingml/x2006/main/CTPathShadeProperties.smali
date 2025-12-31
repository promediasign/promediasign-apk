.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctpathshadeproperties7ccctype"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewFillToRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;
.end method

.method public abstract getFillToRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;
.end method

.method public abstract getPath()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;
.end method

.method public abstract isSetFillToRect()Z
.end method

.method public abstract isSetPath()Z
.end method

.method public abstract setFillToRect(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;)V
.end method

.method public abstract setPath(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;)V
.end method

.method public abstract unsetFillToRect()V
.end method

.method public abstract unsetPath()V
.end method

.method public abstract xgetPath()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType;
.end method

.method public abstract xsetPath(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType;)V
.end method
