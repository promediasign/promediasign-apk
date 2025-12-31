.class public final Lcom/google/api/client/http/ByteArrayContent;
.super Lcom/google/api/client/http/AbstractInputStreamContent;
.source "SourceFile"


# instance fields
.field private final byteArray:[B

.field private final length:I

.field private final offset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/api/client/http/ByteArrayContent;->byteArray:[B

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    add-int p1, p3, p4

    array-length v2, p2

    if-gt p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    aput-object v3, v4, v1

    const/4 v0, 0x2

    aput-object p2, v4, v0

    const-string p2, "offset %s, length %s, array length %s"

    invoke-static {p1, p2, v4}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p3, p0, Lcom/google/api/client/http/ByteArrayContent;->offset:I

    iput p4, p0, Lcom/google/api/client/http/ByteArrayContent;->length:I

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/api/client/http/ByteArrayContent;->byteArray:[B

    iget v2, p0, Lcom/google/api/client/http/ByteArrayContent;->offset:I

    iget v3, p0, Lcom/google/api/client/http/ByteArrayContent;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public getLength()J
    .locals 2

    iget v0, p0, Lcom/google/api/client/http/ByteArrayContent;->length:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public retrySupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/ByteArrayContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;

    move-result-object p1

    return-object p1
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/ByteArrayContent;

    return-object p1
.end method
