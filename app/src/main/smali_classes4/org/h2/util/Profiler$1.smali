.class final Lorg/h2/util/Profiler$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/util/Profiler;->copyInThread(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$in:Ljava/io/InputStream;

.field final synthetic val$out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p2, p0, Lorg/h2/util/Profiler$1;->val$in:Ljava/io/InputStream;

    iput-object p3, p0, Lorg/h2/util/Profiler$1;->val$out:Ljava/io/OutputStream;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v0, 0x1000

    new-array v1, v0, [B

    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/h2/util/Profiler$1;->val$in:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lorg/h2/util/Profiler$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v4, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
