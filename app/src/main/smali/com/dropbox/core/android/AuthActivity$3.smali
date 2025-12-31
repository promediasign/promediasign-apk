.class Lcom/dropbox/core/android/AuthActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/android/AuthActivity;->onTopResumedActivityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/core/android/AuthActivity;

.field final synthetic val$officialAuthIntent:Landroid/content/Intent;

.field final synthetic val$state:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/android/AuthActivity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/android/AuthActivity$3;->this$0:Lcom/dropbox/core/android/AuthActivity;

    iput-object p2, p0, Lcom/dropbox/core/android/AuthActivity$3;->val$officialAuthIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/dropbox/core/android/AuthActivity$3;->val$state:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "running startActivity in handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity$3;->this$0:Lcom/dropbox/core/android/AuthActivity;

    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity$3;->val$officialAuthIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/dropbox/core/android/DbxOfficialAppConnector;->getDropboxAppPackage(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity$3;->this$0:Lcom/dropbox/core/android/AuthActivity;

    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity$3;->val$officialAuthIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity$3;->this$0:Lcom/dropbox/core/android/AuthActivity;

    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity$3;->val$state:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dropbox/core/android/AuthActivity;->access$100(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity$3;->this$0:Lcom/dropbox/core/android/AuthActivity;

    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity$3;->val$state:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dropbox/core/android/AuthActivity;->access$202(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0, v0, v0}, Lcom/dropbox/core/android/AuthActivity;->setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :goto_1
    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not launch intent. User may have restricted profile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity$3;->this$0:Lcom/dropbox/core/android/AuthActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
