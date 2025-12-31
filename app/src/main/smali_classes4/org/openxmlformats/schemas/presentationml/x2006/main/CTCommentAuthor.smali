.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctcommentauthora405type"

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
    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract getClrIdx()J
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract getId()J
.end method

.method public abstract getInitials()Ljava/lang/String;
.end method

.method public abstract getLastIdx()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract setClrIdx(J)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setId(J)V
.end method

.method public abstract setInitials(Ljava/lang/String;)V
.end method

.method public abstract setLastIdx(J)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract xgetClrIdx()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetInitials()Lorg/openxmlformats/schemas/presentationml/x2006/main/STName;
.end method

.method public abstract xgetLastIdx()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/presentationml/x2006/main/STName;
.end method

.method public abstract xsetClrIdx(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetInitials(Lorg/openxmlformats/schemas/presentationml/x2006/main/STName;)V
.end method

.method public abstract xsetLastIdx(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/presentationml/x2006/main/STName;)V
.end method
