.class public final synthetic Le1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Le1/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget v0, p0, Le1/h;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, p2}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->a(Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    invoke-static {p1, p2}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->d(Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_1
    invoke-static {p1, p2}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->e(Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_2
    invoke-static {p1, p2}, Lsk/mimac/slideshow/StartupActivity;->a(Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_3
    invoke-static {p1, p2}, Lsk/mimac/slideshow/ScreenPasswordHelper;->c(Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
