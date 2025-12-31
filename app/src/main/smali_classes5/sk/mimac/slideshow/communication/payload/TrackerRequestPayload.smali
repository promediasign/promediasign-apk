.class public Lsk/mimac/slideshow/communication/payload/TrackerRequestPayload;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/communication/payload/Payload;


# instance fields
.field private final serviceId:[B

.field private final sourceLanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

.field private final sourceWanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;


# direct methods
.method public constructor <init>([BLsk/mimac/slideshow/communication/address/IPAddress;Lsk/mimac/slideshow/communication/address/IPAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/communication/payload/TrackerRequestPayload;->serviceId:[B

    iput-object p2, p0, Lsk/mimac/slideshow/communication/payload/TrackerRequestPayload;->sourceLanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    iput-object p3, p0, Lsk/mimac/slideshow/communication/payload/TrackerRequestPayload;->sourceWanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    return-void
.end method


# virtual methods
.method public serialize(Lsk/mimac/slideshow/communication/key/PrivateKey;)[B
    .locals 6

    invoke-interface {p1}, Lsk/mimac/slideshow/communication/key/PrivateKey;->verifyKeyToBin()[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x2e

    new-array v1, v1, [B

    iget-object v2, p0, Lsk/mimac/slideshow/communication/payload/TrackerRequestPayload;->serviceId:[B

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lsk/mimac/slideshow/communication/payload/TrackerRequestPayload;->sourceLanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    invoke-static {v2}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->serializeIpAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)[B

    move-result-object v2

    const/16 v3, 0x20

    const/4 v5, 0x7

    invoke-static {v2, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lsk/mimac/slideshow/communication/payload/TrackerRequestPayload;->sourceWanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    invoke-static {v2}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->serializeIpAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)[B

    move-result-object v2

    const/16 v3, 0x27

    invoke-static {v2, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lsk/mimac/slideshow/communication/payload/TrackerRequestPayload;->serviceId:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0xe

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, p1}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->packSignedMessage([BLsk/mimac/slideshow/communication/key/PrivateKey;)[B

    move-result-object p1

    return-object p1
.end method
