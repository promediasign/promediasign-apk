.class Lcom/dropbox/core/android/AuthActivity$TokenRequestAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/android/AuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TokenRequestAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/dropbox/core/DbxAuthFinish;",
        ">;"
    }
.end annotation


# instance fields
.field private final code:Ljava/lang/String;

.field final synthetic this$0:Lcom/dropbox/core/android/AuthActivity;


# direct methods
.method private constructor <init>(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dropbox/core/android/AuthActivity$TokenRequestAsyncTask;->this$0:Lcom/dropbox/core/android/AuthActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/dropbox/core/android/AuthActivity$TokenRequestAsyncTask;->code:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;Lcom/dropbox/core/android/AuthActivity$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/android/AuthActivity$TokenRequestAsyncTask;-><init>(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 6

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/dropbox/core/android/AuthActivity$TokenRequestAsyncTask;->this$0:Lcom/dropbox/core/android/AuthActivity;

    invoke-static {p1}, Lcom/dropbox/core/android/AuthActivity;->access$700(Lcom/dropbox/core/android/AuthActivity;)Lcom/dropbox/core/DbxPKCEManager;

    move-result-object v0

    iget-object p1, p0, Lcom/dropbox/core/android/AuthActivity$TokenRequestAsyncTask;->this$0:Lcom/dropbox/core/android/AuthActivity;

    invoke-static {p1}, Lcom/dropbox/core/android/AuthActivity;->access$400(Lcom/dropbox/core/android/AuthActivity;)Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/android/AuthActivity$TokenRequestAsyncTask;->code:Ljava/lang/String;

    iget-object p1, p0, Lcom/dropbox/core/android/AuthActivity$TokenRequestAsyncTask;->this$0:Lcom/dropbox/core/android/AuthActivity;

    invoke-static {p1}, Lcom/dropbox/core/android/AuthActivity;->access$500(Lcom/dropbox/core/android/AuthActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/dropbox/core/android/AuthActivity$TokenRequestAsyncTask;->this$0:Lcom/dropbox/core/android/AuthActivity;

    invoke-static {p1}, Lcom/dropbox/core/android/AuthActivity;->access$600(Lcom/dropbox/core/android/AuthActivity;)Lcom/dropbox/core/DbxHost;

    move-result-object v5

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/DbxPKCEManager;->makeTokenRequest(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object p1
    :try_end_0
    .catch Lcom/dropbox/core/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Token Request Failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dropbox/core/android/AuthActivity$TokenRequestAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object p1

    return-object p1
.end method
