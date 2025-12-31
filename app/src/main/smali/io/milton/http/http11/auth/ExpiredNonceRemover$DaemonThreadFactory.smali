.class Lio/milton/http/http11/auth/ExpiredNonceRemover$DaemonThreadFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/http11/auth/ExpiredNonceRemover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DaemonThreadFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lio/milton/http/http11/auth/ExpiredNonceRemover;


# direct methods
.method private constructor <init>(Lio/milton/http/http11/auth/ExpiredNonceRemover;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/milton/http/http11/auth/ExpiredNonceRemover$DaemonThreadFactory;->this$0:Lio/milton/http/http11/auth/ExpiredNonceRemover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/milton/http/http11/auth/ExpiredNonceRemover;Lio/milton/http/http11/auth/ExpiredNonceRemover$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/milton/http/http11/auth/ExpiredNonceRemover$DaemonThreadFactory;-><init>(Lio/milton/http/http11/auth/ExpiredNonceRemover;)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-class v1, Lio/milton/http/http11/auth/ExpiredNonceRemover;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method
