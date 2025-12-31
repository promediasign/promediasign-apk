.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctshapestyle81ebtype"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewEffectRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
.end method

.method public abstract addNewFillRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
.end method

.method public abstract addNewFontRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;
.end method

.method public abstract addNewLnRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
.end method

.method public abstract getEffectRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
.end method

.method public abstract getFillRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
.end method

.method public abstract getFontRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;
.end method

.method public abstract getLnRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
.end method

.method public abstract setEffectRef(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;)V
.end method

.method public abstract setFillRef(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;)V
.end method

.method public abstract setFontRef(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;)V
.end method

.method public abstract setLnRef(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;)V
.end method
