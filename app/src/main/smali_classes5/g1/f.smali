.class public final synthetic Lg1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/communication/PacketListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lsk/mimac/slideshow/communication/Community;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/communication/Community;I)V
    .locals 0

    .line 1
    iput p2, p0, Lg1/f;->a:I

    iput-object p1, p0, Lg1/f;->b:Lsk/mimac/slideshow/communication/Community;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPacket(Lsk/mimac/slideshow/communication/Packet;)V
    .locals 1

    .line 1
    iget v0, p0, Lg1/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg1/f;->b:Lsk/mimac/slideshow/communication/Community;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/communication/Community;->onPacket(Lsk/mimac/slideshow/communication/Packet;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg1/f;->b:Lsk/mimac/slideshow/communication/Community;

    check-cast v0, Lsk/mimac/slideshow/communication/SlideshowCommunity;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/communication/SlideshowCommunity;->j(Lsk/mimac/slideshow/communication/SlideshowCommunity;Lsk/mimac/slideshow/communication/Packet;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg1/f;->b:Lsk/mimac/slideshow/communication/Community;

    check-cast v0, Lsk/mimac/slideshow/communication/SlideshowCommunity;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/communication/SlideshowCommunity;->i(Lsk/mimac/slideshow/communication/SlideshowCommunity;Lsk/mimac/slideshow/communication/Packet;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
