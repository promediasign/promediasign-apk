.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterTextStyles;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterTextStyles$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterTextStyles;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctslidemastertextstylesb48dtype"

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
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterTextStyles;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewBodyStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewOtherStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
.end method

.method public abstract addNewTitleStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
.end method

.method public abstract getBodyStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract getOtherStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
.end method

.method public abstract getTitleStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
.end method

.method public abstract isSetBodyStyle()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetOtherStyle()Z
.end method

.method public abstract isSetTitleStyle()Z
.end method

.method public abstract setBodyStyle(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setOtherStyle(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;)V
.end method

.method public abstract setTitleStyle(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;)V
.end method

.method public abstract unsetBodyStyle()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetOtherStyle()V
.end method

.method public abstract unsetTitleStyle()V
.end method
