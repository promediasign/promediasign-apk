.class public abstract Lorg/apache/xmlbeans/impl/soap/AttachmentPart;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addMimeHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract clearContent()V
.end method

.method public abstract getAllMimeHeaders()Ljava/util/Iterator;
.end method

.method public abstract getContent()Ljava/lang/Object;
.end method

.method public getContentId()Ljava/lang/String;
    .locals 2

    const-string v0, "Content-Id"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/soap/AttachmentPart;->getMimeHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLocation()Ljava/lang/String;
    .locals 2

    const-string v0, "Content-Location"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/soap/AttachmentPart;->getMimeHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/soap/AttachmentPart;->getMimeHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getMatchingMimeHeaders([Ljava/lang/String;)Ljava/util/Iterator;
.end method

.method public abstract getMimeHeader(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getNonMatchingMimeHeaders([Ljava/lang/String;)Ljava/util/Iterator;
.end method

.method public abstract getSize()I
.end method

.method public abstract removeAllMimeHeaders()V
.end method

.method public abstract removeMimeHeader(Ljava/lang/String;)V
.end method

.method public abstract setContent(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Content-Id"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/impl/soap/AttachmentPart;->setMimeHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContentLocation(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Content-Location"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/impl/soap/AttachmentPart;->setMimeHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/impl/soap/AttachmentPart;->setMimeHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract setMimeHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method
