.class public final synthetic Lr1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;I)V
    .locals 0

    .line 1
    iput p2, p0, Lr1/c;->a:I

    iput-object p1, p0, Lr1/c;->b:Landroid/view/KeyEvent$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget v0, p0, Lr1/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lr1/c;->b:Landroid/view/KeyEvent$Callback;

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0, p1, p2}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->b(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lr1/c;->b:Landroid/view/KeyEvent$Callback;

    check-cast v0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;

    invoke-static {v0, p1, p2}, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->d(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
