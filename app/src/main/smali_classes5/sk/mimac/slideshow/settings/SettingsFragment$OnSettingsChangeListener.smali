.class Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSettingsChangeListener"
.end annotation


# instance fields
.field private final property:Lsk/mimac/slideshow/settings/UserSettings;

.field final synthetic this$0:Lsk/mimac/slideshow/settings/SettingsFragment;


# direct methods
.method private constructor <init>(Lsk/mimac/slideshow/settings/SettingsFragment;Lsk/mimac/slideshow/settings/UserSettings;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;->this$0:Lsk/mimac/slideshow/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;->property:Lsk/mimac/slideshow/settings/UserSettings;

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/settings/SettingsFragment;Lsk/mimac/slideshow/settings/UserSettings;Lsk/mimac/slideshow/settings/SettingsFragment$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;-><init>(Lsk/mimac/slideshow/settings/SettingsFragment;Lsk/mimac/slideshow/settings/UserSettings;)V

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;->lambda$displayStartOnBootPermissionDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private displayStartOnBootPermissionDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;->this$0:Lsk/mimac/slideshow/settings/SettingsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "permission_start_at_boot_allow"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lsk/mimac/slideshow/settings/a;

    invoke-direct {v2, p0}, Lsk/mimac/slideshow/settings/a;-><init>(Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;)V

    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic lambda$displayStartOnBootPermissionDialog$0(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    const-string p1, "package:"

    .line 2
    .line 3
    :try_start_0
    iget-object p2, p0, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;->this$0:Lsk/mimac/slideshow/settings/SettingsFragment;

    .line 4
    .line 5
    invoke-static {p2}, Lsk/mimac/slideshow/settings/SettingsFragment;->access$200(Lsk/mimac/slideshow/settings/SettingsFragment;)Landroidx/activity/result/ActivityResultLauncher;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;->this$0:Lsk/mimac/slideshow/settings/SettingsFragment;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    invoke-static {}, Lsk/mimac/slideshow/settings/SettingsFragment;->access$100()Lorg/slf4j/Logger;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const-string v0, "Can\'t open settings for allowing start on boot"

    .line 52
    .line 53
    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;->this$0:Lsk/mimac/slideshow/settings/SettingsFragment;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string p2, "permission_start_at_boot_error"

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    invoke-static {p1, v0, p2}, Lch/qos/logback/core/joran/util/a;->v(Landroid/content/Context;ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method

.method private restartWebService()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WEB_SERVICES_ENABLED:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    invoke-static {}, Lsk/mimac/slideshow/http/HttpServer;->stopServer()V

    invoke-static {v0}, Lsk/mimac/slideshow/http/HttpServer;->startServer(Z)V

    if-eqz v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/WebService;->start()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/WebService;->stop()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 2
    .line 3
    iget-object v1, p0, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;->property:Lsk/mimac/slideshow/settings/UserSettings;

    .line 4
    .line 5
    invoke-virtual {v1, p2}, Lsk/mimac/slideshow/settings/UserSettings;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/settings/UserSettings;->save()V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;->property:Lsk/mimac/slideshow/settings/UserSettings;

    .line 14
    .line 15
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->WEB_SERVICES_ENABLED:Lsk/mimac/slideshow/settings/UserSettings;

    .line 16
    .line 17
    if-ne v3, v4, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;->restartWebService()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->START_AT_BOOT:Lsk/mimac/slideshow/settings/UserSettings;

    .line 26
    .line 27
    if-ne v3, v4, :cond_1

    .line 28
    .line 29
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/16 v5, 0x17

    .line 32
    .line 33
    if-lt v3, v5, :cond_1

    .line 34
    .line 35
    iget-object v3, p0, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;->this$0:Lsk/mimac/slideshow/settings/SettingsFragment;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, LA/a;->u(Landroid/content/Context;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    invoke-virtual {v4}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    invoke-direct {p0}, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;->displayStartOnBootPermissionDialog()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v3, p0, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;->property:Lsk/mimac/slideshow/settings/UserSettings;

    .line 58
    .line 59
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->KEEP_SERVICE_RUNNING:Lsk/mimac/slideshow/settings/UserSettings;

    .line 60
    .line 61
    if-ne v3, v4, :cond_2

    .line 62
    .line 63
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 64
    .line 65
    const/16 v4, 0x21

    .line 66
    .line 67
    if-lt v3, v4, :cond_2

    .line 68
    .line 69
    iget-object v3, p0, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;->this$0:Lsk/mimac/slideshow/settings/SettingsFragment;

    .line 70
    .line 71
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v3, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    iget-object v3, p0, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;->this$0:Lsk/mimac/slideshow/settings/SettingsFragment;

    .line 82
    .line 83
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    filled-new-array {v0}, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v3, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_0
    iget-object v3, p0, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;->property:Lsk/mimac/slideshow/settings/UserSettings;

    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->DEVICE_NAME:Lsk/mimac/slideshow/settings/UserSettings;

    if-ne v3, v4, :cond_3

    sget-object v3, Lsk/mimac/slideshow/settings/UserSettings;->DEVICE_TOKEN:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v3, p2}, Lsk/mimac/slideshow/settings/UserSettings;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lsk/mimac/slideshow/settings/UserSettings;->save()V

    :cond_3
    instance-of v0, p1, Landroidx/preference/EditTextPreference;

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    return v1

    .line 106
    :goto_1
    invoke-static {}, Lsk/mimac/slideshow/settings/SettingsFragment;->access$100()Lorg/slf4j/Logger;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    const-string v0, "Can\'t save setting for {}"

    .line 111
    .line 112
    iget-object v3, p0, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;->property:Lsk/mimac/slideshow/settings/UserSettings;

    .line 113
    .line 114
    invoke-interface {p2, v0, v3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;->this$0:Lsk/mimac/slideshow/settings/SettingsFragment;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const-string p2, "settings_saving_error"

    .line 124
    .line 125
    invoke-static {p1, v1, p2}, Lch/qos/logback/core/joran/util/a;->v(Landroid/content/Context;ILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return v2
.end method
