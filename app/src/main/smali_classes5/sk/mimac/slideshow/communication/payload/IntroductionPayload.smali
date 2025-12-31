.class public abstract Lsk/mimac/slideshow/communication/payload/IntroductionPayload;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/communication/payload/Payload;


# instance fields
.field private final additionalInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final lanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

.field private final publicKey:[B

.field private final serviceId:[B

.field private final wanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;


# direct methods
.method public constructor <init>([BLsk/mimac/slideshow/communication/address/IPAddress;Lsk/mimac/slideshow/communication/address/IPAddress;Ljava/util/Map;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lsk/mimac/slideshow/communication/address/IPAddress;",
            "Lsk/mimac/slideshow/communication/address/IPAddress;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->serviceId:[B

    iput-object p2, p0, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->lanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    iput-object p3, p0, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->wanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    iput-object p4, p0, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->additionalInfo:Ljava/util/Map;

    iput-object p5, p0, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->publicKey:[B

    return-void
.end method


# virtual methods
.method public getAdditionalInfo()Ljava/util/Map;
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

    iget-object v0, p0, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->additionalInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getLanAddress()Lsk/mimac/slideshow/communication/address/IPAddress;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->lanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->publicKey:[B

    return-object v0
.end method

.method public getServiceId()[B
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->serviceId:[B

    return-object v0
.end method

.method public getWanAddress()Lsk/mimac/slideshow/communication/address/IPAddress;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->wanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    return-object v0
.end method

.method public serializeInternal(Lsk/mimac/slideshow/communication/key/PrivateKey;)[B
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->serviceId:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->lanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    invoke-static {v1}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->serializeIpAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->wanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    invoke-static {v1}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->serializeIpAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->additionalInfo:Ljava/util/Map;

    invoke-static {v1, v0}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->serializeMap(Ljava/util/Map;Ljava/io/OutputStream;)V

    iget-object v1, p0, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->publicKey:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, p1}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->packSignedMessage([BLsk/mimac/slideshow/communication/key/PrivateKey;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lsk/mimac/slideshow/communication/PacketDecodingException;

    const-string v1, "Can\'t encode packet"

    invoke-direct {v0, v1, p1}, Lsk/mimac/slideshow/communication/PacketDecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
