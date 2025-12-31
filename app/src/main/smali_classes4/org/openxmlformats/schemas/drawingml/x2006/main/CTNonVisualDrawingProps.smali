.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctnonvisualdrawingprops8fb0type"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;
.end method

.method public abstract addNewHlinkHover()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;
.end method

.method public abstract getDescr()Ljava/lang/String;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getHidden()Z
.end method

.method public abstract getHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;
.end method

.method public abstract getHlinkHover()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;
.end method

.method public abstract getId()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isSetDescr()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHidden()Z
.end method

.method public abstract isSetHlinkClick()Z
.end method

.method public abstract isSetHlinkHover()Z
.end method

.method public abstract setDescr(Ljava/lang/String;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setHidden(Z)V
.end method

.method public abstract setHlinkClick(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;)V
.end method

.method public abstract setHlinkHover(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;)V
.end method

.method public abstract setId(J)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract unsetDescr()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHidden()V
.end method

.method public abstract unsetHlinkClick()V
.end method

.method public abstract unsetHlinkHover()V
.end method

.method public abstract xgetDescr()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetHidden()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/drawingml/x2006/main/STDrawingElementId;
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetDescr(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetHidden(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/drawingml/x2006/main/STDrawingElementId;)V
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method
