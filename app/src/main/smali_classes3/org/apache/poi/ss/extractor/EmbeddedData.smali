.class public Lorg/apache/poi/ss/extractor/EmbeddedData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private contentType:Ljava/lang/String;

.field private embeddedData:[B

.field private filename:Ljava/lang/String;

.field private shape:Lorg/apache/poi/ss/usermodel/Shape;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "binary/octet-stream"

    iput-object v0, p0, Lorg/apache/poi/ss/extractor/EmbeddedData;->contentType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/extractor/EmbeddedData;->setFilename(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/extractor/EmbeddedData;->setEmbeddedData([B)V

    invoke-virtual {p0, p3}, Lorg/apache/poi/ss/extractor/EmbeddedData;->setContentType(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/extractor/EmbeddedData;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getEmbeddedData()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/extractor/EmbeddedData;->embeddedData:[B

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/extractor/EmbeddedData;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getShape()Lorg/apache/poi/ss/usermodel/Shape;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/extractor/EmbeddedData;->shape:Lorg/apache/poi/ss/usermodel/Shape;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ss/extractor/EmbeddedData;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setEmbeddedData([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/ss/extractor/EmbeddedData;->embeddedData:[B

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "unknown.bin"

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/ss/extractor/EmbeddedData;->filename:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v0, "[^/\\\\]*[/\\\\]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setShape(Lorg/apache/poi/ss/usermodel/Shape;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ss/extractor/EmbeddedData;->shape:Lorg/apache/poi/ss/usermodel/Shape;

    return-void
.end method
