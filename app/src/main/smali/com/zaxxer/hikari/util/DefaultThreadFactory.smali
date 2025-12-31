.class public Lcom/zaxxer/hikari/util/DefaultThreadFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private daemon:Z

.field private threadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zaxxer/hikari/util/DefaultThreadFactory;->threadName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/zaxxer/hikari/util/DefaultThreadFactory;->daemon:Z

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/zaxxer/hikari/util/DefaultThreadFactory;->threadName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/zaxxer/hikari/util/DefaultThreadFactory;->daemon:Z

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method
