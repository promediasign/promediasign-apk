.class public final synthetic Lsk/mimac/slideshow/settings/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/settings/a;->a:Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/settings/a;->a:Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;

    invoke-static {v0, p1, p2}, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;->a(Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;Landroid/content/DialogInterface;I)V

    return-void
.end method
