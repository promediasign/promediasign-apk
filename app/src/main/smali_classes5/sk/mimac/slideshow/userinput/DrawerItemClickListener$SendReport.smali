.class Lsk/mimac/slideshow/userinput/DrawerItemClickListener$SendReport;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/userinput/DrawerItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendReport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final emailText:Ljava/lang/String;

.field private final messageText:Ljava/lang/String;

.field private final progressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lsk/mimac/slideshow/userinput/DrawerItemClickListener;


# direct methods
.method private constructor <init>(Lsk/mimac/slideshow/userinput/DrawerItemClickListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$SendReport;->this$0:Lsk/mimac/slideshow/userinput/DrawerItemClickListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance p1, Landroid/app/ProgressDialog;

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$SendReport;->progressDialog:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$SendReport;->emailText:Ljava/lang/String;

    iput-object p3, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$SendReport;->messageText:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/userinput/DrawerItemClickListener;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/userinput/DrawerItemClickListener$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$SendReport;-><init>(Lsk/mimac/slideshow/userinput/DrawerItemClickListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object p1, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$SendReport;->emailText:Ljava/lang/String;

    iget-object v0, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$SendReport;->messageText:Ljava/lang/String;

    invoke-static {p1, v0}, Lsk/mimac/slideshow/http/page/ReporterFormPage;->sendReport(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$SendReport;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$SendReport;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$SendReport;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    sget-object p1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v1, "report_sent"

    .line 1
    :goto_0
    invoke-static {p1, v0, v1}, Lch/qos/logback/core/joran/util/a;->v(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    .line 2
    :cond_1
    sget-object p1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v1, "cant_send_report"

    goto :goto_0

    :goto_1
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$SendReport;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$SendReport;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "sending_please_wait"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$SendReport;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
