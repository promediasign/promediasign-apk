.class Lcom/sun/jna/internal/Cleaner$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/internal/Cleaner;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/jna/internal/Cleaner;


# direct methods
.method public constructor <init>(Lcom/sun/jna/internal/Cleaner;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/jna/internal/Cleaner$1;->this$0:Lcom/sun/jna/internal/Cleaner;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-class v0, Lcom/sun/jna/internal/Cleaner;

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sun/jna/internal/Cleaner$1;->this$0:Lcom/sun/jna/internal/Cleaner;

    invoke-static {v2}, Lcom/sun/jna/internal/Cleaner;->access$000(Lcom/sun/jna/internal/Cleaner;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v2

    instance-of v3, v2, Lcom/sun/jna/internal/Cleaner$CleanerRef;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/sun/jna/internal/Cleaner$CleanerRef;

    invoke-virtual {v2}, Lcom/sun/jna/internal/Cleaner$CleanerRef;->clean()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
