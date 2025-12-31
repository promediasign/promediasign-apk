.class public Lsk/mimac/slideshow/ScreenPasswordHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static final SCREEN_PASSWORD_HELPER:Lsk/mimac/slideshow/ScreenPasswordHelper;


# instance fields
.field private lastLoggedIn:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsk/mimac/slideshow/ScreenPasswordHelper;

    invoke-direct {v0}, Lsk/mimac/slideshow/ScreenPasswordHelper;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/ScreenPasswordHelper;->SCREEN_PASSWORD_HELPER:Lsk/mimac/slideshow/ScreenPasswordHelper;

    const-class v0, Lsk/mimac/slideshow/ScreenPasswordHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/ScreenPasswordHelper;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsk/mimac/slideshow/ScreenPasswordHelper;->lastLoggedIn:J

    return-void
.end method

.method public static synthetic a(Landroid/app/AlertDialog;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/ScreenPasswordHelper;->lambda$showPasswordDialog$2(Landroid/app/AlertDialog;)V

    return-void
.end method

.method public static synthetic b(Lsk/mimac/slideshow/ScreenPasswordHelper;Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lsk/mimac/slideshow/ScreenPasswordHelper;->lambda$showPasswordDialog$0(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/ScreenPasswordHelper;->lambda$showPasswordDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private checkPasswordDialog(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getInstance()Lsk/mimac/slideshow/database/dao/AccessUserDao;

    move-result-object v1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getByUsername(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/AccessUser;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;->INSTANCE:Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/AccessUser;->getPassword()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p3, p2}, Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p0, Lsk/mimac/slideshow/ScreenPasswordHelper;->lastLoggedIn:J

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_0
    const-string p2, "bad_username_or_password"

    invoke-static {p2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p3, Lsk/mimac/slideshow/ScreenPasswordHelper;->LOG:Lorg/slf4j/Logger;

    const-string p4, "Can\'t load user from database"

    invoke-interface {p3, p4, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p2, "database_error"

    .line 1
    invoke-static {p1, v0, p2}, Lch/qos/logback/core/joran/util/a;->v(Landroid/content/Context;ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static getInstance()Lsk/mimac/slideshow/ScreenPasswordHelper;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/ScreenPasswordHelper;->SCREEN_PASSWORD_HELPER:Lsk/mimac/slideshow/ScreenPasswordHelper;

    return-object v0
.end method

.method private synthetic lambda$showPasswordDialog$0(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lsk/mimac/slideshow/ScreenPasswordHelper;->checkPasswordDialog(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showPasswordDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$showPasswordDialog$2(Landroid/app/AlertDialog;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private showPasswordDialog(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 10

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    const-string v2, "username"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/EditText;

    invoke-direct {v8, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x80

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const-string v2, "password"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "screen_login_required"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "screen_login_required_help"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v0, "login"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Le1/g;

    move-object v4, v2

    move-object v5, p0

    move-object v6, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Le1/g;-><init>(Lsk/mimac/slideshow/ScreenPasswordHelper;Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string p1, "cancel"

    invoke-static {p1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Le1/h;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Le1/h;-><init>(I)V

    invoke-virtual {v1, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, LB/c;

    const/4 v1, 0x7

    invoke-direct {v0, p1, v1}, LB/c;-><init>(Ljava/lang/Object;I)V

    const-wide/32 v1, 0xea60

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public checkPasswordIfNecessary(Landroid/content/Context;Ljava/lang/Runnable;)Z
    .locals 6

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->PASSWORD_PROTECT_SCREEN:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lsk/mimac/slideshow/ScreenPasswordHelper;->lastLoggedIn:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide v4, 0xdf8475800L

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/ScreenPasswordHelper;->showPasswordDialog(Landroid/content/Context;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    return p1
.end method

.method public setLastLoggedInNow()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lsk/mimac/slideshow/ScreenPasswordHelper;->lastLoggedIn:J

    return-void
.end method
