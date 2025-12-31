.class public Lsk/mimac/slideshow/communication/payload/IntroductionResponsePayload;
.super Lsk/mimac/slideshow/communication/payload/IntroductionPayload;
.source "SourceFile"


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

    invoke-direct/range {p0 .. p5}, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;-><init>([BLsk/mimac/slideshow/communication/address/IPAddress;Lsk/mimac/slideshow/communication/address/IPAddress;Ljava/util/Map;[B)V

    return-void
.end method

.method public static deserialize([BILsk/mimac/slideshow/communication/key/PrivateKey;)Lsk/mimac/slideshow/communication/payload/IntroductionResponsePayload;
    .locals 8

    add-int/lit8 v0, p1, 0x20

    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {p0, v0}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->deserializeIpAddress([BI)Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v3

    add-int/lit8 v0, p1, 0x27

    invoke-static {p0, v0}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->deserializeIpAddress([BI)Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v4

    add-int/lit8 v0, p1, 0x2e

    invoke-static {p0, v0}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->deserializeMap([BI)Lsk/mimac/slideshow/communication/utils/DeserializeData;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/utils/DeserializeData;->getOffset()I

    move-result v1

    add-int/lit8 v5, v1, 0x20

    sget-object v6, Lsk/mimac/slideshow/communication/key/LibNaClSK;->BIN_PREFIX:[B

    array-length v7, v6

    add-int/2addr v5, v7

    invoke-static {p0, v1, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    array-length v5, v6

    add-int/lit8 v5, v5, 0x20

    add-int/2addr v5, v1

    invoke-static {p0, p1, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    add-int/lit8 v1, v5, 0x40

    invoke-static {p0, v5, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p1, p0, p2}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->verifySignedMessage([B[BLsk/mimac/slideshow/communication/key/PrivateKey;)V

    new-instance p0, Lsk/mimac/slideshow/communication/payload/IntroductionResponsePayload;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/utils/DeserializeData;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/util/Map;

    move-object v1, p0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lsk/mimac/slideshow/communication/payload/IntroductionResponsePayload;-><init>([BLsk/mimac/slideshow/communication/address/IPAddress;Lsk/mimac/slideshow/communication/address/IPAddress;Ljava/util/Map;[B)V

    return-object p0
.end method


# virtual methods
.method public serialize(Lsk/mimac/slideshow/communication/key/PrivateKey;)[B
    .locals 0

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->serializeInternal(Lsk/mimac/slideshow/communication/key/PrivateKey;)[B

    move-result-object p1

    return-object p1
.end method
