.class public final synthetic Lr1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;

.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr1/b;->a:Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;

    iput-object p2, p0, Lr1/b;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lr1/b;->c:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lr1/b;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lr1/b;->c:Landroid/widget/EditText;

    iget-object v2, p0, Lr1/b;->a:Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;

    invoke-static {v2, v0, v1, p1, p2}, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->c(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
