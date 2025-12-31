.class public Lsk/mimac/slideshow/settings/SettingsFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private cameraPreference:Landroidx/preference/Preference;

.field private final intentActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mainPanelItem:Lsk/mimac/slideshow/database/entity/PanelItem;

.field private microphonePreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/settings/SettingsFragment;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/settings/SettingsFragment;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lk1/p;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lk1/p;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->intentActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/settings/SettingsFragment;Landroidx/preference/EditTextPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lsk/mimac/slideshow/settings/SettingsFragment;->lambda$setupAnimationLength$3(Landroidx/preference/EditTextPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/settings/SettingsFragment;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static synthetic access$200(Lsk/mimac/slideshow/settings/SettingsFragment;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->intentActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method public static synthetic b(Lsk/mimac/slideshow/settings/SettingsFragment;Landroid/content/ComponentName;Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lsk/mimac/slideshow/settings/SettingsFragment;->lambda$setupLauncher$8(Landroid/content/ComponentName;Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/settings/SettingsFragment;->lambda$setupAnimationLength$2(Landroid/widget/EditText;)V

    return-void
.end method

.method public static synthetic d(Lsk/mimac/slideshow/settings/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/settings/SettingsFragment;->lambda$setupCameraPermission$6(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Ljava/lang/Integer;[Landroid/text/InputFilter;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lsk/mimac/slideshow/settings/SettingsFragment;->lambda$setupEditText$5(Ljava/lang/Integer;[Landroid/text/InputFilter;Landroid/widget/EditText;)V

    return-void
.end method

.method public static synthetic f(Lsk/mimac/slideshow/settings/SettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/settings/SettingsFragment;->lambda$setupAnimationType$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lsk/mimac/slideshow/settings/SettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/settings/SettingsFragment;->lambda$setupExternalStorages$4(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lsk/mimac/slideshow/settings/SettingsFragment;Landroid/content/ComponentName;Landroidx/preference/Preference;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/settings/SettingsFragment;->lambda$setupLauncher$9(Landroid/content/ComponentName;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/settings/SettingsFragment;->lambda$new$0(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic j(Lsk/mimac/slideshow/settings/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/settings/SettingsFragment;->lambda$setupMicrophonePermission$7(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$new$0(Landroidx/activity/result/ActivityResult;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$setupAnimationLength$2(Landroid/widget/EditText;)V
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private synthetic lambda$setupAnimationLength$3(Landroidx/preference/EditTextPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 p2, 0x1

    const/4 v0, 0x0

    :try_start_0
    check-cast p3, Ljava/lang/String;

    iget-object v1, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->mainPanelItem:Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    :goto_0
    invoke-virtual {v1, p3}, Lsk/mimac/slideshow/database/entity/PanelItem;->setAnimationLength(I)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object p3

    iget-object v1, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->mainPanelItem:Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {p3, v1}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->update(Lsk/mimac/slideshow/database/entity/PanelItem;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->mainPanelItem:Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getAnimationLength()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p1

    sget-object p3, Lsk/mimac/slideshow/settings/SettingsFragment;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t save data to database"

    invoke-interface {p3, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "settings_saving_error"

    .line 1
    invoke-static {p1, p2, p3}, Lch/qos/logback/core/joran/util/a;->v(Landroid/content/Context;ILjava/lang/String;)V

    return v0
.end method

.method private synthetic lambda$setupAnimationType$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->mainPanelItem:Lsk/mimac/slideshow/database/entity/PanelItem;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {p2}, Lsk/mimac/slideshow/enums/TransitionType;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/TransitionType;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->setAnimationType(Lsk/mimac/slideshow/enums/TransitionType;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->mainPanelItem:Lsk/mimac/slideshow/database/entity/PanelItem;

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->update(Lsk/mimac/slideshow/database/entity/PanelItem;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return p1

    .line 23
    :catch_0
    move-exception p2

    .line 24
    sget-object v0, Lsk/mimac/slideshow/settings/SettingsFragment;->LOG:Lorg/slf4j/Logger;

    .line 25
    .line 26
    const-string v1, "Can\'t save data to database"

    .line 27
    .line 28
    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const-string v0, "settings_saving_error"

    .line 36
    .line 37
    invoke-static {p2, p1, v0}, Lch/qos/logback/core/joran/util/a;->v(Landroid/content/Context;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    return p1
.end method

.method private synthetic lambda$setupCameraPermission$6(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method private static synthetic lambda$setupEditText$5(Ljava/lang/Integer;[Landroid/text/InputFilter;Landroid/widget/EditText;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setInputType(I)V

    :cond_0
    array-length p0, p1

    if-lez p0, :cond_1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$setupExternalStorages$4(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    sget-object p1, Lsk/mimac/slideshow/settings/UserSettings;->EXTERNAL_STORAGE_PATH:Lsk/mimac/slideshow/settings/UserSettings;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/settings/UserSettings;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/settings/UserSettings;->save()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lsk/mimac/slideshow/InitializerImpl;->setFilePaths()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return p1

    .line 14
    :catch_0
    move-exception p2

    .line 15
    sget-object v0, Lsk/mimac/slideshow/settings/SettingsFragment;->LOG:Lorg/slf4j/Logger;

    .line 16
    .line 17
    const-string v1, "Can\'t save setting for {}"

    .line 18
    .line 19
    sget-object v2, Lsk/mimac/slideshow/settings/UserSettings;->EXTERNAL_STORAGE_PATH:Lsk/mimac/slideshow/settings/UserSettings;

    .line 20
    .line 21
    invoke-interface {v0, v1, v2, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v0, "settings_saving_error"

    .line 29
    .line 30
    invoke-static {p2, p1, v0}, Lch/qos/logback/core/joran/util/a;->v(Landroid/content/Context;ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    return p1
.end method

.method private synthetic lambda$setupLauncher$8(Landroid/content/ComponentName;Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p4, p1, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p4, "launcher_clear_success"

    invoke-static {p4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p2, p3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-direct {p0, p2}, Lsk/mimac/slideshow/settings/SettingsFragment;->setupLauncher(Landroidx/preference/PreferenceGroup;)V

    return v1
.end method

.method private synthetic lambda$setupLauncher$9(Landroid/content/ComponentName;Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    invoke-virtual {p2, p1, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.HOME"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return v1
.end method

.method private synthetic lambda$setupMicrophonePermission$7(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "android.permission.RECORD_AUDIO"

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method private resolveMainPanel()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getLayoutForDateTime(Lj$/time/LocalDateTime;)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getMainForLayout(I)Lsk/mimac/slideshow/database/entity/PanelItem;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->mainPanelItem:Lsk/mimac/slideshow/database/entity/PanelItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    sget-object v1, Lsk/mimac/slideshow/settings/SettingsFragment;->LOG:Lorg/slf4j/Logger;

    .line 32
    .line 33
    const-string v2, "Can\'t get data from database"

    .line 34
    .line 35
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "database_error"

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-static {v0, v2, v1}, Lch/qos/logback/core/joran/util/a;->v(Landroid/content/Context;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_0
    return-void
.end method

.method private setupAnimationLength()Landroidx/preference/EditTextPreference;
    .locals 4

    new-instance v0, Landroidx/preference/EditTextPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "transition_length"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance v2, Lk1/p;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lk1/p;-><init>(I)V

    invoke-virtual {v0, v2}, Landroidx/preference/EditTextPreference;->setOnBindEditTextListener(Landroidx/preference/EditTextPreference$OnBindEditTextListener;)V

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    const-string v1, "transition_length_help"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->mainPanelItem:Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getAnimationLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->mainPanelItem:Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getAnimationLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v1, LD/c;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v0, v2}, LD/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    return-object v0
.end method

.method private setupAnimationType()Lsk/mimac/slideshow/gui/ListPreference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsk/mimac/slideshow/gui/ListPreference<",
            "Lsk/mimac/slideshow/enums/TransitionType;",
            ">;"
        }
    .end annotation

    new-instance v0, Lsk/mimac/slideshow/gui/ListPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/gui/ListPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "transition_type"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lsk/mimac/slideshow/enums/TransitionType;->values()[Lsk/mimac/slideshow/enums/TransitionType;

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->mainPanelItem:Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getAnimationType()Lsk/mimac/slideshow/enums/TransitionType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/gui/ListPreference;->setItems([Lsk/mimac/slideshow/SelectItem;Lsk/mimac/slideshow/SelectItem;)V

    new-instance v1, Lr1/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lr1/d;-><init>(Lsk/mimac/slideshow/settings/SettingsFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    return-object v0
.end method

.method private setupCameraPermission(Landroidx/preference/PreferenceGroup;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->cameraPreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->cameraPreference:Landroidx/preference/Preference;

    const-string v2, "request_camera_permission"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->cameraPreference:Landroidx/preference/Preference;

    const-string v2, "request_camera_permission_help"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->cameraPreference:Landroidx/preference/Preference;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->cameraPreference:Landroidx/preference/Preference;

    new-instance v2, Lr1/d;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lr1/d;-><init>(Lsk/mimac/slideshow/settings/SettingsFragment;I)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->cameraPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->cameraPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private setupCheckbox(Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;Ljava/lang/String;)Landroidx/preference/CheckBoxPreference;
    .locals 2

    new-instance v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result p2

    invoke-virtual {v0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance p2, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;-><init>(Lsk/mimac/slideshow/settings/SettingsFragment;Lsk/mimac/slideshow/settings/UserSettings;Lsk/mimac/slideshow/settings/SettingsFragment$1;)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    return-object v0
.end method

.method private varargs setupEditText(Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Landroid/text/InputFilter;)Landroidx/preference/EditTextPreference;
    .locals 3

    new-instance v0, Landroidx/preference/EditTextPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance v1, LD/c;

    const/4 v2, 0x5

    invoke-direct {v1, p5, p6, v2}, LD/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setOnBindEditTextListener(Landroidx/preference/EditTextPreference$OnBindEditTextListener;)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Landroidx/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v0, p4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    new-instance p2, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;-><init>(Lsk/mimac/slideshow/settings/SettingsFragment;Lsk/mimac/slideshow/settings/UserSettings;Lsk/mimac/slideshow/settings/SettingsFragment$1;)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v0, p4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    return-object v0
.end method

.method private setupExternalStorages()Lsk/mimac/slideshow/gui/ListPreference;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsk/mimac/slideshow/gui/ListPreference<",
            "Lsk/mimac/slideshow/utils/StorageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lsk/mimac/slideshow/gui/ListPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/gui/ListPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "external_storage_path"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lsk/mimac/slideshow/utils/MountedStorageUtils;->getStorageListWithInternal()Ljava/util/List;

    move-result-object v1

    new-instance v9, Lsk/mimac/slideshow/utils/StorageInfo;

    sget-object v2, Lsk/mimac/slideshow/settings/UserSettings;->EXTERNAL_STORAGE_PATH:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v2}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lsk/mimac/slideshow/utils/StorageInfo;-><init>(Ljava/lang/String;ZJJ)V

    invoke-virtual {v0, v1, v9}, Lsk/mimac/slideshow/gui/ListPreference;->setItems(Ljava/util/List;Lsk/mimac/slideshow/SelectItem;)V

    new-instance v1, Lr1/d;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lr1/d;-><init>(Lsk/mimac/slideshow/settings/SettingsFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    return-object v0
.end method

.method private setupLauncher(Landroidx/preference/PreferenceGroup;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sk.mimac.slideshow.LauncherActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setPersistent(Z)V

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "launcher_clear"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lorg/mozilla/javascript/a;

    invoke-direct {v0, p0, v1, p1, v2}, Lorg/mozilla/javascript/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    :cond_0
    const-string v0, "launcher_set"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "launcher_set_help"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v0, LD/c;

    const/4 v4, 0x4

    invoke-direct {v0, p0, v1, v4}, LD/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_0

    :goto_1
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private setupLayouts(Landroidx/preference/PreferenceScreen;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    new-instance v9, Landroidx/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    const-string v0, "basic_settings"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->START_AT_BOOT:Lsk/mimac/slideshow/settings/UserSettings;

    const-string v1, "start_at_boot"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start_at_boot_help_short"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v0, v1, v2}, Lsk/mimac/slideshow/settings/SettingsFragment;->setupCheckbox(Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;Ljava/lang/String;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->DEVICE_NAME:Lsk/mimac/slideshow/settings/UserSettings;

    const-string v0, "device_name"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v10, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lsk/mimac/slideshow/settings/SettingsFragment;->setupEditText(Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Landroid/text/InputFilter;)Landroidx/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-direct/range {p0 .. p0}, Lsk/mimac/slideshow/settings/SettingsFragment;->setupExternalStorages()Lsk/mimac/slideshow/gui/ListPreference;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WEB_SERVICES_ENABLED:Lsk/mimac/slideshow/settings/UserSettings;

    const-string v1, "web_services_enabled"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "web_services_enabled_help"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v0, v1, v2}, Lsk/mimac/slideshow/settings/SettingsFragment;->setupCheckbox(Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;Ljava/lang/String;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->HTTP_PORT:Lsk/mimac/slideshow/settings/UserSettings;

    const-string v0, "http_port"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "http_port_help"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "<br>"

    const-string v12, " "

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "<i>"

    const-string v14, ""

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v15, "</i>"

    invoke-virtual {v0, v15, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x5

    invoke-direct {v0, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/text/InputFilter;

    aput-object v0, v6, v10

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lsk/mimac/slideshow/settings/SettingsFragment;->setupEditText(Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Landroid/text/InputFilter;)Landroidx/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->LANGUAGE:Lsk/mimac/slideshow/settings/UserSettings;

    const-string v1, "language"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lsk/mimac/slideshow/localization/Language;->values()[Lsk/mimac/slideshow/localization/Language;

    move-result-object v2

    const-class v3, Lsk/mimac/slideshow/localization/Language;

    invoke-virtual {v0, v3}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lsk/mimac/slideshow/localization/Language;

    invoke-direct {v7, v0, v1, v2, v4}, Lsk/mimac/slideshow/settings/SettingsFragment;->setupList(Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;[Lsk/mimac/slideshow/SelectItem;Lsk/mimac/slideshow/SelectItem;)Lsk/mimac/slideshow/gui/ListPreference;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->KEEP_SERVICE_RUNNING:Lsk/mimac/slideshow/settings/UserSettings;

    const-string v1, "keep_service_running"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keep_service_running_help"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v0, v1, v2}, Lsk/mimac/slideshow/settings/SettingsFragment;->setupCheckbox(Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;Ljava/lang/String;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v10}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    const-string v1, "onscreen_formatting"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->SCREEN_ORIENTATION:Lsk/mimac/slideshow/settings/UserSettings;

    const-string v2, "screen_orientation"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lsk/mimac/slideshow/enums/ScreenOrientation;->values()[Lsk/mimac/slideshow/enums/ScreenOrientation;

    move-result-object v4

    const-class v5, Lsk/mimac/slideshow/enums/ScreenOrientation;

    invoke-virtual {v1, v5}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lsk/mimac/slideshow/enums/ScreenOrientation;

    invoke-direct {v7, v1, v2, v4, v6}, Lsk/mimac/slideshow/settings/SettingsFragment;->setupList(Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;[Lsk/mimac/slideshow/SelectItem;Lsk/mimac/slideshow/SelectItem;)Lsk/mimac/slideshow/gui/ListPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->IMAGE_SCALE_TYPE:Lsk/mimac/slideshow/settings/UserSettings;

    const-string v2, "image_scale_type"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lsk/mimac/slideshow/enums/ScaleType;->values()[Lsk/mimac/slideshow/enums/ScaleType;

    move-result-object v4

    invoke-virtual {v1, v5}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v5

    invoke-direct {v7, v1, v2, v4, v5}, Lsk/mimac/slideshow/settings/SettingsFragment;->setupList(Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;[Lsk/mimac/slideshow/SelectItem;Lsk/mimac/slideshow/SelectItem;)Lsk/mimac/slideshow/gui/ListPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->IMAGE_RESPECT_ORIENTATION:Lsk/mimac/slideshow/settings/UserSettings;

    const-string v2, "image_respect_orientation"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "image_respect_orientation_help"

    invoke-static {v4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v1, v2, v4}, Lsk/mimac/slideshow/settings/SettingsFragment;->setupCheckbox(Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;Ljava/lang/String;)Landroidx/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->MULTI_DISPLAY_ALLOW:Lsk/mimac/slideshow/settings/UserSettings;

    const-string v2, "multi_display_allow"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "multi_display_allow_help"

    invoke-static {v4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v1, v2, v4}, Lsk/mimac/slideshow/settings/SettingsFragment;->setupCheckbox(Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;Ljava/lang/String;)Landroidx/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v1, v7, Lsk/mimac/slideshow/settings/SettingsFragment;->mainPanelItem:Lsk/mimac/slideshow/database/entity/PanelItem;

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lsk/mimac/slideshow/settings/SettingsFragment;->setupAnimationType()Lsk/mimac/slideshow/gui/ListPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-direct/range {p0 .. p0}, Lsk/mimac/slideshow/settings/SettingsFragment;->setupAnimationLength()Landroidx/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    new-instance v9, Landroidx/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    const-string v0, "usb_flash_drive"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->USB_MOUNT_ACTION:Lsk/mimac/slideshow/settings/UserSettings;

    const-string v1, "usb_mount_action"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lsk/mimac/slideshow/enums/UsbMountAction;->values()[Lsk/mimac/slideshow/enums/UsbMountAction;

    move-result-object v2

    invoke-virtual {v0, v3}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v3

    invoke-direct {v7, v0, v1, v2, v3}, Lsk/mimac/slideshow/settings/SettingsFragment;->setupList(Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;[Lsk/mimac/slideshow/SelectItem;Lsk/mimac/slideshow/SelectItem;)Lsk/mimac/slideshow/gui/ListPreference;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->USB_COPY_FOLDER:Lsk/mimac/slideshow/settings/UserSettings;

    const-string v0, "usb_copy_folder"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "usb_copy_folder_help"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v10, [Landroid/text/InputFilter;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lsk/mimac/slideshow/settings/SettingsFragment;->setupEditText(Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Landroid/text/InputFilter;)Landroidx/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v10}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-direct {v7, v0}, Lsk/mimac/slideshow/settings/SettingsFragment;->setupCameraPermission(Landroidx/preference/PreferenceGroup;)V

    invoke-direct {v7, v0}, Lsk/mimac/slideshow/settings/SettingsFragment;->setupMicrophonePermission(Landroidx/preference/PreferenceGroup;)V

    invoke-direct {v7, v0}, Lsk/mimac/slideshow/settings/SettingsFragment;->setupLauncher(Landroidx/preference/PreferenceGroup;)V

    invoke-virtual/range {p0 .. p1}, Landroidx/preference/PreferenceFragmentCompat;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private setupList(Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;[Lsk/mimac/slideshow/SelectItem;Lsk/mimac/slideshow/SelectItem;)Lsk/mimac/slideshow/gui/ListPreference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lsk/mimac/slideshow/SelectItem;",
            ">(",
            "Lsk/mimac/slideshow/settings/UserSettings;",
            "Ljava/lang/String;",
            "[TT;TT;)",
            "Lsk/mimac/slideshow/gui/ListPreference<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lsk/mimac/slideshow/gui/ListPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/gui/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/gui/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3, p4}, Lsk/mimac/slideshow/gui/ListPreference;->setItems([Lsk/mimac/slideshow/SelectItem;Lsk/mimac/slideshow/SelectItem;)V

    new-instance p2, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lsk/mimac/slideshow/settings/SettingsFragment$OnSettingsChangeListener;-><init>(Lsk/mimac/slideshow/settings/SettingsFragment;Lsk/mimac/slideshow/settings/UserSettings;Lsk/mimac/slideshow/settings/SettingsFragment$1;)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "%s"

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    return-object v0
.end method

.method private setupMicrophonePermission(Landroidx/preference/PreferenceGroup;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->microphonePreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->microphonePreference:Landroidx/preference/Preference;

    const-string v2, "request_microphone_permission"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->microphonePreference:Landroidx/preference/Preference;

    const-string v2, "request_microphone_permission_help"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->microphonePreference:Landroidx/preference/Preference;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->microphonePreference:Landroidx/preference/Preference;

    new-instance v2, Lr1/d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lr1/d;-><init>(Lsk/mimac/slideshow/settings/SettingsFragment;I)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->microphonePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->microphonePreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public hideCameraPreference()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->cameraPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->cameraPreference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->cameraPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public hideMicrophonePreference()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->microphonePreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->microphonePreference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/settings/SettingsFragment;->microphonePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lsk/mimac/slideshow/localization/Localization;->getLanguage()Lsk/mimac/slideshow/localization/Language;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lsk/mimac/slideshow/settings/SettingsFragment;->LOG:Lorg/slf4j/Logger;

    const-string p2, "Not initialized, restarting"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jakewharton/processphoenix/ProcessPhoenix;->triggerRebirth(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-direct {p0}, Lsk/mimac/slideshow/settings/SettingsFragment;->resolveMainPanel()V

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/settings/SettingsFragment;->setupLayouts(Landroidx/preference/PreferenceScreen;)V

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->DEVICE_NAME:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->DEVICE_TOKEN:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/settings/UserSettings;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lsk/mimac/slideshow/settings/UserSettings;->save()V

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method
