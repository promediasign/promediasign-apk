.class public Lsk/mimac/slideshow/communication/message/ApiRequestMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/communication/payload/Payload;


# instance fields
.field private final correlationId:J

.field private final operation:Ljava/lang/String;

.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;->correlationId:J

    iput-object p3, p0, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;->operation:Ljava/lang/String;

    iput-object p4, p0, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;->params:Ljava/util/Map;

    return-void
.end method

.method public static deserialize([BILsk/mimac/slideshow/communication/key/PrivateKey;)Lsk/mimac/slideshow/communication/message/ApiRequestMessage;
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

    invoke-static {p0, v0}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->deserializeString([BI)Lsk/mimac/slideshow/communication/utils/DeserializeData;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/utils/DeserializeData;->getOffset()I

    move-result v1

    invoke-static {p0, v1}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->deserializeMap([BI)Lsk/mimac/slideshow/communication/utils/DeserializeData;

    move-result-object p0

    new-instance v1, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/utils/DeserializeData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/utils/DeserializeData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-direct {v1, p1, p2, v0, p0}, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;-><init>(JLjava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method


# virtual methods
.method public getCorrelationId()J
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;->correlationId:J

    return-wide v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;->operation:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;->params:Ljava/util/Map;

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

    iget-wide v1, p0, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;->correlationId:J

    invoke-static {v1, v2}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->serializeLong(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;->operation:Ljava/lang/String;

    invoke-static {v1, v0}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V

    iget-object v1, p0, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;->params:Ljava/util/Map;

    invoke-static {v1, v0}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->serializeMap(Ljava/util/Map;Ljava/io/OutputStream;)V
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

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ApiRequestMessage{operation=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;->operation:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "\'}"

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method
