.class Lsk/mimac/slideshow/http/page/SettingsFormPage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk/mimac/slideshow/http/page/SettingsFormPage;->processLicenseKeyActivation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/http/page/SettingsFormPage;


# direct methods
.method constructor <init>(Lsk/mimac/slideshow/http/page/SettingsFormPage;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/http/page/SettingsFormPage$1;->this$0:Lsk/mimac/slideshow/http/page/SettingsFormPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/jakewharton/processphoenix/ProcessPhoenix;->triggerRebirth(Landroid/content/Context;)V

    return-void
.end method
