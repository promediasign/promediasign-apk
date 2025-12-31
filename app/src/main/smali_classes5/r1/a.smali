.class public final synthetic Lr1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lr1/a;->a:I

    iput-object p1, p0, Lr1/a;->b:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget v0, p0, Lr1/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lr1/a;->b:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v0, Lsk/mimac/slideshow/settings/SettingsActivity;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/settings/SettingsActivity;->c(Lsk/mimac/slideshow/settings/SettingsActivity;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lr1/a;->b:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->e(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
