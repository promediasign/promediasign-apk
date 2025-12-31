.class Lsk/mimac/slideshow/settings/AdvancedSettingsActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity$1;->this$0:Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "Promedia Sign"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "127.0.0.1"

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity$1;->this$0:Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;

    invoke-static {p1}, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->access$000(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity$1;->this$0:Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;

    invoke-static {p1, p3}, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->access$002(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;Z)Z

    iget-object p1, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity$1;->this$0:Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;

    invoke-static {p1}, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->access$100(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "http://127.0.0.1:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/http/HttpServer;->getInternalHttpPort()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity$1;->this$0:Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;

    invoke-static {p1}, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->access$200(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;)I

    move-result p1

    const/4 p4, 0x2

    if-lt p1, p4, :cond_1

    iget-object p1, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity$1;->this$0:Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;

    invoke-static {p1, p3}, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->access$202(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;I)I

    iget-object p1, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity$1;->this$0:Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;

    invoke-virtual {p1}, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->showPasswordDialog()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity$1;->this$0:Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;

    invoke-static {p1}, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->access$208(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;)I

    iget-object p1, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity$1;->this$0:Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;

    invoke-static {p1}, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->access$300(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity$1;->this$0:Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;

    invoke-static {p3}, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;->access$400(Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
