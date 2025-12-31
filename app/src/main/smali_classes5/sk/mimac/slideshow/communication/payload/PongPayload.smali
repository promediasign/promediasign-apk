.class public Lsk/mimac/slideshow/communication/payload/PongPayload;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/communication/payload/Payload;


# instance fields
.field private final identifier:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsk/mimac/slideshow/communication/payload/PongPayload;->identifier:I

    return-void
.end method

.method public static deserialize([BILsk/mimac/slideshow/communication/key/PrivateKey;)Lsk/mimac/slideshow/communication/payload/PongPayload;
    .locals 1

    array-length v0, p0

    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-interface {p2, p0}, Lsk/mimac/slideshow/communication/key/PrivateKey;->decrypt([B)[B

    move-result-object p0

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->deserializeInt([BI)I

    move-result p0

    new-instance p1, Lsk/mimac/slideshow/communication/payload/PongPayload;

    invoke-direct {p1, p0}, Lsk/mimac/slideshow/communication/payload/PongPayload;-><init>(I)V

    return-object p1
.end method


# virtual methods
.method public getIdentifier()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/communication/payload/PongPayload;->identifier:I

    return v0
.end method

.method public serialize(Lsk/mimac/slideshow/communication/key/PublicKey;)[B
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [B

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v2}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->serializeInt(I)[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lsk/mimac/slideshow/communication/payload/PongPayload;->identifier:I

    invoke-static {v1}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->serializeInt(I)[B

    move-result-object v1

    invoke-static {v1, v2, v0, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1, v0}, Lsk/mimac/slideshow/communication/key/PublicKey;->encrypt([B)[B

    move-result-object p1

    return-object p1
.end method
