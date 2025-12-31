.class public Lsk/mimac/slideshow/communication/Packet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final address:Lsk/mimac/slideshow/communication/address/IPAddress;

.field private final data:[B


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/communication/address/IPAddress;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/communication/Packet;->address:Lsk/mimac/slideshow/communication/address/IPAddress;

    iput-object p2, p0, Lsk/mimac/slideshow/communication/Packet;->data:[B

    return-void
.end method


# virtual methods
.method public getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Packet;->address:Lsk/mimac/slideshow/communication/address/IPAddress;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Packet;->data:[B

    return-object v0
.end method

.method public getPeerMid()[B
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Packet;->data:[B

    const/4 v1, 0x1

    const/16 v2, 0x15

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method
