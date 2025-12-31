.class public final synthetic Lh1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lh1/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget v0, p0, Lh1/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lsk/mimac/slideshow/display/DisplayHelper;->h(Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {p1}, Lsk/mimac/slideshow/display/DisplayHelper;->d(Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-static {p1}, Lsk/mimac/slideshow/display/DisplayHelper;->f(Landroid/view/View;)V

    return-void

    :pswitch_2
    invoke-static {p1}, Lsk/mimac/slideshow/display/DisplayHelper;->e(Landroid/view/View;)V

    return-void

    :pswitch_3
    invoke-static {p1}, Lsk/mimac/slideshow/display/DisplayHelper;->c(Landroid/view/View;)V

    return-void

    :pswitch_4
    invoke-static {p1}, Lsk/mimac/slideshow/display/DisplayHelper;->g(Landroid/view/View;)V

    return-void

    :pswitch_5
    invoke-static {p1}, Lsk/mimac/slideshow/display/DisplayHelper;->k(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
