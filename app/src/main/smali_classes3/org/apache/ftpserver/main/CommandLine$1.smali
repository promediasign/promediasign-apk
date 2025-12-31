.class Lorg/apache/ftpserver/main/CommandLine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ftpserver/main/CommandLine;->addShutdownHook(Lorg/apache/ftpserver/FtpServer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ftpserver/main/CommandLine;

.field final synthetic val$engine:Lorg/apache/ftpserver/FtpServer;


# direct methods
.method public constructor <init>(Lorg/apache/ftpserver/main/CommandLine;Lorg/apache/ftpserver/FtpServer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/main/CommandLine$1;->this$0:Lorg/apache/ftpserver/main/CommandLine;

    iput-object p2, p0, Lorg/apache/ftpserver/main/CommandLine$1;->val$engine:Lorg/apache/ftpserver/FtpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Stopping server..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/ftpserver/main/CommandLine$1;->val$engine:Lorg/apache/ftpserver/FtpServer;

    invoke-interface {v0}, Lorg/apache/ftpserver/FtpServer;->stop()V

    return-void
.end method
