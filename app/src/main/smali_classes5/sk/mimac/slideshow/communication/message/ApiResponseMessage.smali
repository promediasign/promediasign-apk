.class public Lsk/mimac/slideshow/communication/message/ApiResponseMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/communication/payload/Payload;


# instance fields
.field private final correlationId:J

.field private final response:Ljava/lang/String;

.field private final success:Z


# direct methods
.method public constructor <init>(JZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lsk/mimac/slideshow/communication/message/ApiResponseMessage;->correlationId:J

    iput-boolean p3, p0, Lsk/mimac/slideshow/communication/message/ApiResponseMessage;->success:Z

    iput-object p4, p0, Lsk/mimac/slideshow/communication/message/ApiResponseMessage;->response:Ljava/lang/String;

    return-void
.end method

.method public static deserialize([BILsk/mimac/slideshow/communication/key/PrivateKey;)Lsk/mimac/slideshow/communication/message/ApiResponseMessage;
    .locals 2

    array-length v0, p0

    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-interface {p2, p0}, Lsk/mimac/slideshow/communication/key/PrivateKey;->decrypt([B)[B

    move-result-object p0

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->deserializeLong([BI)J

    move-result-wide p1

    const/16 v0, 0x10

    aget-byte v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x11

    invoke-static {p0, v1}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->deserializeString([BI)Lsk/mimac/slideshow/communication/utils/DeserializeData;

    move-result-object p0

    new-instance v1, Lsk/mimac/slideshow/communication/message/ApiResponseMessage;

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/utils/DeserializeData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v1, p1, p2, v0, p0}, Lsk/mimac/slideshow/communication/message/ApiResponseMessage;-><init>(JZLjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getCorrelationId()J
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/communication/message/ApiResponseMessage;->correlationId:J

    return-wide v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/message/ApiResponseMessage;->response:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Lsk/mimac/slideshow/communication/key/PublicKey;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->serializeLong(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-wide v1, p0, Lsk/mimac/slideshow/communication/message/ApiResponseMessage;->correlationId:J

    invoke-static {v1, v2}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->serializeLong(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-boolean v1, p0, Lsk/mimac/slideshow/communication/message/ApiResponseMessage;->success:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p0, Lsk/mimac/slideshow/communication/message/ApiResponseMessage;->response:Ljava/lang/String;

    invoke-static {v1, v0}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lsk/mimac/slideshow/communication/key/PublicKey;->encrypt([B)[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lsk/mimac/slideshow/communication/PacketDecodingException;

    const-string v1, "Error while writing to byte array"

    invoke-direct {v0, v1, p1}, Lsk/mimac/slideshow/communication/PacketDecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
