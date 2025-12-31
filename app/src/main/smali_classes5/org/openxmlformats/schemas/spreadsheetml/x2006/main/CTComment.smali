.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctcomment7bfetype"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewText()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
.end method

.method public abstract getAuthorId()J
.end method

.method public abstract getGuid()Ljava/lang/String;
.end method

.method public abstract getRef()Ljava/lang/String;
.end method

.method public abstract getText()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
.end method

.method public abstract isSetGuid()Z
.end method

.method public abstract setAuthorId(J)V
.end method

.method public abstract setGuid(Ljava/lang/String;)V
.end method

.method public abstract setRef(Ljava/lang/String;)V
.end method

.method public abstract setText(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V
.end method

.method public abstract unsetGuid()V
.end method

.method public abstract xgetAuthorId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetGuid()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGuid;
.end method

.method public abstract xgetRef()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;
.end method

.method public abstract xsetAuthorId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetGuid(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGuid;)V
.end method

.method public abstract xsetRef(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;)V
.end method
