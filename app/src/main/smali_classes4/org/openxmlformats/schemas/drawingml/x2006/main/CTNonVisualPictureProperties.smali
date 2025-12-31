.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctnonvisualpicturepropertiesee3ftype"

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
    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewPicLocks()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getPicLocks()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;
.end method

.method public abstract getPreferRelativeResize()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetPicLocks()Z
.end method

.method public abstract isSetPreferRelativeResize()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setPicLocks(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;)V
.end method

.method public abstract setPreferRelativeResize(Z)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetPicLocks()V
.end method

.method public abstract unsetPreferRelativeResize()V
.end method

.method public abstract xgetPreferRelativeResize()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetPreferRelativeResize(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
