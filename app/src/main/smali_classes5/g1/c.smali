.class public final synthetic Lg1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/communication/PacketListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lsk/mimac/slideshow/communication/DiscoveryCommunity;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/communication/DiscoveryCommunity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lg1/c;->a:I

    iput-object p1, p0, Lg1/c;->b:Lsk/mimac/slideshow/communication/DiscoveryCommunity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPacket(Lsk/mimac/slideshow/communication/Packet;)V
    .locals 1

    .line 1
    iget v0, p0, Lg1/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg1/c;->b:Lsk/mimac/slideshow/communication/DiscoveryCommunity;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->e(Lsk/mimac/slideshow/communication/DiscoveryCommunity;Lsk/mimac/slideshow/communication/Packet;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg1/c;->b:Lsk/mimac/slideshow/communication/DiscoveryCommunity;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->c(Lsk/mimac/slideshow/communication/DiscoveryCommunity;Lsk/mimac/slideshow/communication/Packet;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg1/c;->b:Lsk/mimac/slideshow/communication/DiscoveryCommunity;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->b(Lsk/mimac/slideshow/communication/DiscoveryCommunity;Lsk/mimac/slideshow/communication/Packet;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lg1/c;->b:Lsk/mimac/slideshow/communication/DiscoveryCommunity;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->h(Lsk/mimac/slideshow/communication/DiscoveryCommunity;Lsk/mimac/slideshow/communication/Packet;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lg1/c;->b:Lsk/mimac/slideshow/communication/DiscoveryCommunity;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->d(Lsk/mimac/slideshow/communication/DiscoveryCommunity;Lsk/mimac/slideshow/communication/Packet;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lg1/c;->b:Lsk/mimac/slideshow/communication/DiscoveryCommunity;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->f(Lsk/mimac/slideshow/communication/DiscoveryCommunity;Lsk/mimac/slideshow/communication/Packet;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
