.class public final synthetic Lorg/mozilla/javascript/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/ContextAction;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/javascript/a;->a:Ljava/lang/Object;

    iput-object p2, p0, Lorg/mozilla/javascript/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lorg/mozilla/javascript/a;->c:Ljava/lang/Object;

    iput-object p4, p0, Lorg/mozilla/javascript/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iget-object v1, p0, Lorg/mozilla/javascript/a;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/preference/Preference;

    iget-object v2, p0, Lorg/mozilla/javascript/a;->a:Ljava/lang/Object;

    check-cast v2, Lsk/mimac/slideshow/settings/SettingsFragment;

    iget-object v3, p0, Lorg/mozilla/javascript/a;->b:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    invoke-static {v2, v3, v0, v1, p1}, Lsk/mimac/slideshow/settings/SettingsFragment;->b(Lsk/mimac/slideshow/settings/SettingsFragment;Landroid/content/ComponentName;Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/a;->c:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p0, Lorg/mozilla/javascript/a;->d:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/mozilla/javascript/a;->a:Ljava/lang/Object;

    check-cast v2, Lorg/mozilla/javascript/Callable;

    iget-object v3, p0, Lorg/mozilla/javascript/a;->b:Ljava/lang/Object;

    check-cast v3, Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, v3, v0, v1, p1}, Lorg/mozilla/javascript/Context;->a(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
