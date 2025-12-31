.class public final synthetic Lr1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lsk/mimac/slideshow/settings/SettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/settings/SettingsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lr1/d;->a:I

    iput-object p1, p0, Lr1/d;->b:Lsk/mimac/slideshow/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lr1/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lr1/d;->b:Lsk/mimac/slideshow/settings/SettingsFragment;

    invoke-static {v0, p1, p2}, Lsk/mimac/slideshow/settings/SettingsFragment;->g(Lsk/mimac/slideshow/settings/SettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Lr1/d;->b:Lsk/mimac/slideshow/settings/SettingsFragment;

    invoke-static {v0, p1, p2}, Lsk/mimac/slideshow/settings/SettingsFragment;->f(Lsk/mimac/slideshow/settings/SettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 1
    iget v0, p0, Lr1/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lr1/d;->b:Lsk/mimac/slideshow/settings/SettingsFragment;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/settings/SettingsFragment;->d(Lsk/mimac/slideshow/settings/SettingsFragment;Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Lr1/d;->b:Lsk/mimac/slideshow/settings/SettingsFragment;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/settings/SettingsFragment;->j(Lsk/mimac/slideshow/settings/SettingsFragment;Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
