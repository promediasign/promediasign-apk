.class public Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private firstTime:Z

.field private numRequests:I

.field private password:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->firstTime:Z

    const-string v0, "admin"

    iput-object v0, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->username:Ljava/lang/String;

    iput-object v0, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->password:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->firstTime:Z

    return p0
.end method

.method public static synthetic access$002(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->firstTime:Z

    return p1
.end method

.method public static synthetic access$100(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static synthetic access$200(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;)I
    .locals 0

    iget p0, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->numRequests:I

    return p0
.end method

.method public static synthetic access$202(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;I)I
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->numRequests:I

    return p1
.end method

.method public static synthetic access$208(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;)I
    .locals 2

    iget v0, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->numRequests:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->numRequests:I

    return v0
.end method

.method public static synthetic access$300(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->username:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->password:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->lambda$showPasswordDialog$1(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->lambda$showPasswordDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->finishActivity(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$showPasswordDialog$1(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->processPasswordDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showPasswordDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->finishActivity(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private processPasswordDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->username:Ljava/lang/String;

    iput-object p2, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->password:Ljava/lang/String;

    iget-object p1, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->webView:Landroid/webkit/WebView;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "http://127.0.0.1:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/http/HttpServer;->getInternalHttpPort()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lsk/mimac/slideshow/R$layout;->advanced_settings:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x580

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    sget p1, Lsk/mimac/slideshow/R$id;->advancedSettingsWebView:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    iget-object p1, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    sget-object v0, Lsk/mimac/slideshow/BuildInfo;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    iget-object p1, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object p1, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    iget-object p1, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity$1;

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity$1;-><init>(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Authorization"

    const-string v1, "CLEAR"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://127.0.0.1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/http/HttpServer;->getInternalHttpPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    sget p1, Lsk/mimac/slideshow/R$id;->advancedSettingsButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-static {}, Lsk/mimac/slideshow/localization/Localization;->getLanguage()Lsk/mimac/slideshow/localization/Language;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "back_to_playing"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lsk/mimac/slideshow/R$string;->app_name:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "advanced_settings"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v0, Lr1/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr1/a;-><init>(Landroidx/appcompat/app/AppCompatActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-static {}, Lsk/mimac/slideshow/localization/Localization;->getLanguage()Lsk/mimac/slideshow/localization/Language;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Not initialized, restarting"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/jakewharton/processphoenix/ProcessPhoenix;->triggerRebirth(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public showPasswordDialog()V
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    const-string v3, "username"

    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v4, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v4}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const-string v4, "password"

    invoke-static {v4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "screen_login_required"

    invoke-static {v4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v4, "screen_login_required_help"

    invoke-static {v4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v0, "login"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lr1/b;

    invoke-direct {v4, p0, v2, v3}, Lr1/b;-><init>(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "cancel"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lr1/c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lr1/c;-><init>(Landroid/view/KeyEvent$Callback;I)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
