.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry$1;->class$org$apache$xmlbeans$impl$xb$xsdownload$DownloadedSchemaEntry:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.impl.xb.xsdownload.DownloadedSchemaEntry"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry$1;->class$org$apache$xmlbeans$impl$xb$xsdownload$DownloadedSchemaEntry:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const-string v1, "schemaorg_apache_xmlbeans.system.sXMLTOOLS"

    .line 14
    .line 15
    const-string v2, "downloadedschemaentry1c75type"

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, LA/g;->s(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    .line 22
    .line 23
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public abstract addNewSchemaLocation()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract addSchemaLocation(Ljava/lang/String;)V
.end method

.method public abstract getFilename()Ljava/lang/String;
.end method

.method public abstract getNamespace()Ljava/lang/String;
.end method

.method public abstract getSchemaLocationArray(I)Ljava/lang/String;
.end method

.method public abstract getSchemaLocationArray()[Ljava/lang/String;
.end method

.method public abstract getSha1()Ljava/lang/String;
.end method

.method public abstract insertNewSchemaLocation(I)Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract insertSchemaLocation(ILjava/lang/String;)V
.end method

.method public abstract isSetNamespace()Z
.end method

.method public abstract removeSchemaLocation(I)V
.end method

.method public abstract setFilename(Ljava/lang/String;)V
.end method

.method public abstract setNamespace(Ljava/lang/String;)V
.end method

.method public abstract setSchemaLocationArray(ILjava/lang/String;)V
.end method

.method public abstract setSchemaLocationArray([Ljava/lang/String;)V
.end method

.method public abstract setSha1(Ljava/lang/String;)V
.end method

.method public abstract sizeOfSchemaLocationArray()I
.end method

.method public abstract unsetNamespace()V
.end method

.method public abstract xgetFilename()Lorg/apache/xmlbeans/XmlToken;
.end method

.method public abstract xgetNamespace()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xgetSchemaLocationArray(I)Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xgetSchemaLocationArray()[Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xgetSha1()Lorg/apache/xmlbeans/XmlToken;
.end method

.method public abstract xsetFilename(Lorg/apache/xmlbeans/XmlToken;)V
.end method

.method public abstract xsetNamespace(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method

.method public abstract xsetSchemaLocationArray(ILorg/apache/xmlbeans/XmlAnyURI;)V
.end method

.method public abstract xsetSchemaLocationArray([Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method

.method public abstract xsetSha1(Lorg/apache/xmlbeans/XmlToken;)V
.end method
