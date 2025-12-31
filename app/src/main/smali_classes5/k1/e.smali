.class public final synthetic Lk1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/utils/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lsk/mimac/slideshow/gui/PlaylistPanel;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/PlaylistPanel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lk1/e;->a:I

    iput-object p1, p0, Lk1/e;->b:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lk1/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lk1/e;->b:Lsk/mimac/slideshow/gui/PlaylistPanel;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->a(Lsk/mimac/slideshow/gui/PlaylistPanel;Ljava/lang/Integer;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lk1/e;->b:Lsk/mimac/slideshow/gui/PlaylistPanel;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->d(Lsk/mimac/slideshow/gui/PlaylistPanel;Ljava/lang/Integer;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lk1/e;->b:Lsk/mimac/slideshow/gui/PlaylistPanel;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->b(Lsk/mimac/slideshow/gui/PlaylistPanel;Ljava/lang/Integer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
