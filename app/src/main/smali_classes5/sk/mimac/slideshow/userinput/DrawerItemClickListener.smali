.class public Lsk/mimac/slideshow/userinput/DrawerItemClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;,
        Lsk/mimac/slideshow/userinput/DrawerItemClickListener$SendReport;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

.field private final menuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lsk/mimac/slideshow/display/DisplayHelper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/utils/LicenseKeyUtils;->isStoredLicenceKeyValid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->menuItems:Ljava/util/List;

    invoke-static {}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->values()[Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->LICENSE_KEY_ENTER:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->values()[Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->menuItems:Ljava/util/List;

    :goto_0
    iput-object p1, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->lambda$showReporter$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->lambda$showLicenseKeyDialog$4(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lsk/mimac/slideshow/userinput/DrawerItemClickListener;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->lambda$showReporter$2(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->lambda$showReporter$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->lambda$showLicenseKeyDialog$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static exit(Lsk/mimac/slideshow/display/DisplayHelper;)V
    .locals 5

    :try_start_0
    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-static {v0}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->stopLockTask(Landroid/app/Activity;)V
    :try_end_0
    .catch Lsk/mimac/slideshow/exception/DeviceOwnerExeception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->KEEP_SERVICE_RUNNING:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->MAIN_SERVICE:Lsk/mimac/slideshow/MainService;

    invoke-virtual {v0}, Lsk/mimac/slideshow/MainService;->stop()V

    :cond_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.android.settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10200000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    sget-object p0, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-object p0, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :cond_3
    return-void
.end method

.method public static synthetic f()V
    .locals 0

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->lambda$showLicenseKeyDialog$3()V

    return-void
.end method

.method private static synthetic lambda$showLicenseKeyDialog$3()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-static {v0}, Lcom/jakewharton/processphoenix/ProcessPhoenix;->triggerRebirth(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$showLicenseKeyDialog$4(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsk/mimac/slideshow/utils/LicenseKeyUtils;->checkLicenseKey(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    sget-object p1, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Entered valid license key"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    sget-object p1, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    const-string v0, "license_key_valid"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {p0}, Lsk/mimac/slideshow/settings/SystemSettings;->setLicenseKey(Ljava/lang/String;)V

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Le1/c;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Le1/c;-><init>(I)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    sget-object p1, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Entered invalid license key: {}"

    invoke-interface {p1, v0, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    const-string p1, "license_key_invalid"

    invoke-static {p1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$showLicenseKeyDialog$5(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$showReporter$0(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$showReporter$1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$showReporter$2(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "@"

    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_0

    new-instance p4, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$SendReport;

    const/4 v0, 0x0

    invoke-direct {p4, p0, p1, p2, v0}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$SendReport;-><init>(Lsk/mimac/slideshow/userinput/DrawerItemClickListener;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/userinput/DrawerItemClickListener$1;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p4, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_0
    sget-object p1, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    const-string p2, "report_fill_data"

    invoke-static {p2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private showLicenseKeyDialog()V
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "license_key_enter"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v2, "license_key_device_id"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-static {}, Lsk/mimac/slideshow/utils/LicenseKeyUtils;->getProcessedDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/widget/EditText;

    sget-object v2, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v2, "save"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lr1/c;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Lr1/c;-><init>(Landroid/view/KeyEvent$Callback;I)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "cancel"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Le1/h;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Le1/h;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showReporter()V
    .locals 7

    new-instance v0, Landroid/widget/LinearLayout;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xf

    const/4 v5, 0x5

    invoke-virtual {v2, v4, v4, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v4, Landroid/widget/EditText;

    sget-object v5, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v5, "reporter_message"

    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/EditText;

    sget-object v6, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-direct {v5, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x21

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setInputType(I)V

    const-string v6, "reporter_email"

    invoke-static {v6}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v0, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "reporter"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "reporter_help_screen"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v0, "send"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Le1/h;

    const/4 v6, 0x3

    invoke-direct {v2, v6}, Le1/h;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "back"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Le1/h;

    const/4 v6, 0x4

    invoke-direct {v2, v6}, Le1/h;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lt1/c;

    invoke-direct {v2, p0, v5, v4, v0}, Lt1/c;-><init>(Lsk/mimac/slideshow/userinput/DrawerItemClickListener;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getMenuItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->menuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->menuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->access$000(Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->menuItems:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-static {p1}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->exit(Lsk/mimac/slideshow/display/DisplayHelper;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->showReporter()V

    iget-object p1, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {p1}, Lsk/mimac/slideshow/display/DisplayHelper;->closeDrawers()V

    goto/16 :goto_1

    :pswitch_2
    sget-object p1, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->LOG:Lorg/slf4j/Logger;

    const-string p2, "Displaying dialog for adding files from storage"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "image/*,video/*,application/pdf,application/vnd.ms-excel"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.category.OPENABLE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p2, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    const-string p3, "add_file_from_storage"

    invoke-static {p3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 p3, 0xb

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :pswitch_3
    const-string p1, ""

    invoke-static {p1}, Lsk/mimac/slideshow/SampleImageHelper;->addSampleImages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p3

    invoke-virtual {p3}, Lsk/mimac/slideshow/gui/ItemThread;->interrupt()V

    if-eqz p1, :cond_0

    iget-object p3, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {p3}, Lsk/mimac/slideshow/display/DisplayHelper;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "sample_images_error"

    invoke-static {p5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ": "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {p1}, Lsk/mimac/slideshow/display/DisplayHelper;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "sample_images_success"

    const/4 p3, 0x0

    .line 1
    invoke-static {p1, p3, p2}, Lch/qos/logback/core/joran/util/a;->v(Landroid/content/Context;ILjava/lang/String;)V

    .line 2
    :goto_0
    iget-object p1, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {p1}, Lsk/mimac/slideshow/display/DisplayHelper;->closeDrawers()V

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lsk/mimac/slideshow/userinput/ActionHelper;->showHelp()V

    goto :goto_0

    :pswitch_5
    :try_start_0
    sget-object p1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    new-instance p3, Landroid/content/Intent;

    const-string p4, "android.settings.SETTINGS"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object p3, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->LOG:Lorg/slf4j/Logger;

    const-string p4, "Can\'t find Android settings"

    invoke-interface {p3, p4, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {p1}, Lsk/mimac/slideshow/display/DisplayHelper;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "Can\'t open Android settings"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_6
    invoke-static {}, Lsk/mimac/slideshow/userinput/ActionHelper;->showWebSettingsActivity()V

    goto :goto_0

    :pswitch_7
    invoke-static {}, Lsk/mimac/slideshow/userinput/ActionHelper;->showSettingsActivity()V

    goto :goto_1

    :pswitch_8
    invoke-static {}, Lsk/mimac/slideshow/userinput/ActionHelper;->showInfo()V

    goto :goto_0

    :pswitch_9
    iget-object p1, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {p1}, Lsk/mimac/slideshow/display/DisplayHelper;->closeDrawers()V

    iget-object p1, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {p1}, Lsk/mimac/slideshow/display/DisplayHelper;->toggleRightDrawer()V

    goto :goto_1

    :pswitch_a
    invoke-direct {p0}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->showLicenseKeyDialog()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
