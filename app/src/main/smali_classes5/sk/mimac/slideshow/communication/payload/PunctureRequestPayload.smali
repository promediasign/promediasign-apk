.class public Lsk/mimac/slideshow/communication/payload/PunctureRequestPayload;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/communication/payload/Payload;


# instance fields
.field private final lanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

.field private final wanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/communication/address/IPAddress;Lsk/mimac/slideshow/communication/address/IPAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/communication/payload/PunctureRequestPayload;->lanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    iput-object p2, p0, Lsk/mimac/slideshow/communication/payload/PunctureRequestPayload;->wanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    return-void
.end method

.method public static deserialize([BI)Lsk/mimac/slideshow/communication/payload/PunctureRequestPayload;
    .locals 1

    invoke-static {p0, p1}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->deserializeIpAddress([BI)Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v0

    add-int/lit8 p1, p1, 0x7

    invoke-static {p0, p1}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->deserializeIpAddress([BI)Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object p0

    new-instance p1, Lsk/mimac/slideshow/communication/payload/PunctureRequestPayload;

    invoke-direct {p1, v0, p0}, Lsk/mimac/slideshow/communication/payload/PunctureRequestPayload;-><init>(Lsk/mimac/slideshow/communication/address/IPAddress;Lsk/mimac/slideshow/communication/address/IPAddress;)V

    return-object p1
.end method


# virtual methods
.method public getLanAddress()Lsk/mimac/slideshow/communication/address/IPAddress;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/payload/PunctureRequestPayload;->lanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    return-object v0
.end method

.method public getWanAddress()Lsk/mimac/slideshow/communication/address/IPAddress;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/payload/PunctureRequestPayload;->wanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    return-object v0
.end method
