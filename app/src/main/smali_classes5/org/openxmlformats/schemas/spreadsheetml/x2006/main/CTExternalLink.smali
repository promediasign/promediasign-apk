.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctexternallink966etype"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewDdeLink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeLink;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;
.end method

.method public abstract addNewOleLink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleLink;
.end method

.method public abstract getDdeLink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeLink;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getExternalBook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;
.end method

.method public abstract getOleLink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleLink;
.end method

.method public abstract isSetDdeLink()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetExternalBook()Z
.end method

.method public abstract isSetOleLink()Z
.end method

.method public abstract setDdeLink(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDdeLink;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setExternalBook(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalBook;)V
.end method

.method public abstract setOleLink(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleLink;)V
.end method

.method public abstract unsetDdeLink()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetExternalBook()V
.end method

.method public abstract unsetOleLink()V
.end method
