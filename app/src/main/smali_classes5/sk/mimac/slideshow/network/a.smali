.class public final synthetic Lsk/mimac/slideshow/network/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;I)V
    .locals 0

    .line 1
    iput p2, p0, Lsk/mimac/slideshow/network/a;->a:I

    iput-object p1, p0, Lsk/mimac/slideshow/network/a;->b:Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lsk/mimac/slideshow/network/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lsk/mimac/slideshow/network/a;->b:Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;

    invoke-static {v0}, Lsk/mimac/slideshow/network/WiFiHelper;->d(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lsk/mimac/slideshow/network/a;->b:Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;

    invoke-static {v0}, Lsk/mimac/slideshow/network/WiFiHelper;->b(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lsk/mimac/slideshow/network/a;->b:Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;

    invoke-static {v0}, Lsk/mimac/slideshow/network/WiFiHelper;->a(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lsk/mimac/slideshow/network/a;->b:Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;

    invoke-static {v0}, Lsk/mimac/slideshow/network/WiFiHelper;->c(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
