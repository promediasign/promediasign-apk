.class Lcom/jcraft/jsch/Session$GlobalRequestReply;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GlobalRequestReply"
.end annotation


# instance fields
.field private port:I

.field private reply:I

.field final synthetic this$0:Lcom/jcraft/jsch/Session;

.field private thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Lcom/jcraft/jsch/Session;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->this$0:Lcom/jcraft/jsch/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->thread:Ljava/lang/Thread;

    const/4 p1, -0x1

    iput p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->reply:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->port:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Session$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;-><init>(Lcom/jcraft/jsch/Session;)V

    return-void
.end method


# virtual methods
.method public getPort()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->port:I

    return v0
.end method

.method public getReply()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->reply:I

    return v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method public setPort(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->port:I

    return-void
.end method

.method public setReply(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->reply:I

    return-void
.end method

.method public setThread(Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->thread:Ljava/lang/Thread;

    const/4 p1, -0x1

    iput p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->reply:I

    return-void
.end method
