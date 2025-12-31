.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctnotesmaster69ectype"

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
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;
.end method

.method public abstract addNewClrMap()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract addNewHf()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;
.end method

.method public abstract addNewNotesStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
.end method

.method public abstract getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;
.end method

.method public abstract getClrMap()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract getHf()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;
.end method

.method public abstract getNotesStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHf()Z
.end method

.method public abstract isSetNotesStyle()Z
.end method

.method public abstract setCSld(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;)V
.end method

.method public abstract setClrMap(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;)V
.end method

.method public abstract setHf(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;)V
.end method

.method public abstract setNotesStyle(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHf()V
.end method

.method public abstract unsetNotesStyle()V
.end method
