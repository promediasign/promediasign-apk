.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctshapee40btype"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;
.end method

.method public abstract addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
.end method

.method public abstract addNewStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
.end method

.method public abstract addNewTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
.end method

.method public abstract getFLocksText()Z
.end method

.method public abstract getFPublished()Z
.end method

.method public abstract getMacro()Ljava/lang/String;
.end method

.method public abstract getNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;
.end method

.method public abstract getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
.end method

.method public abstract getStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;
.end method

.method public abstract getTextlink()Ljava/lang/String;
.end method

.method public abstract getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
.end method

.method public abstract isSetFLocksText()Z
.end method

.method public abstract isSetFPublished()Z
.end method

.method public abstract isSetMacro()Z
.end method

.method public abstract isSetStyle()Z
.end method

.method public abstract isSetTextlink()Z
.end method

.method public abstract isSetTxBody()Z
.end method

.method public abstract setFLocksText(Z)V
.end method

.method public abstract setFPublished(Z)V
.end method

.method public abstract setMacro(Ljava/lang/String;)V
.end method

.method public abstract setNvSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;)V
.end method

.method public abstract setSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V
.end method

.method public abstract setStyle(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;)V
.end method

.method public abstract setTextlink(Ljava/lang/String;)V
.end method

.method public abstract setTxBody(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V
.end method

.method public abstract unsetFLocksText()V
.end method

.method public abstract unsetFPublished()V
.end method

.method public abstract unsetMacro()V
.end method

.method public abstract unsetStyle()V
.end method

.method public abstract unsetTextlink()V
.end method

.method public abstract unsetTxBody()V
.end method

.method public abstract xgetFLocksText()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFPublished()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMacro()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTextlink()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetFLocksText(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFPublished(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMacro(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTextlink(Lorg/apache/xmlbeans/XmlString;)V
.end method
