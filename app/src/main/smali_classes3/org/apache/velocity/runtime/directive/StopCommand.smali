.class public Lorg/apache/velocity/runtime/directive/StopCommand;
.super Ljava/lang/Error;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x23c5c56d7e6f94ecL


# instance fields
.field private nearest:Z

.field private stopMe:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/directive/StopCommand;->nearest:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/directive/StopCommand;->nearest:Z

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/StopCommand;->stopMe:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/directive/StopCommand;->nearest:Z

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/StopCommand;->stopMe:Ljava/lang/Object;

    const-string v1, "StopCommand: "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/StopCommand;->stopMe:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public isFor(Ljava/lang/Object;)Z
    .locals 3

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/directive/StopCommand;->nearest:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/StopCommand;->stopMe:Ljava/lang/Object;

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/StopCommand;->stopMe:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    instance-of v0, p1, Lorg/apache/velocity/Template;

    if-nez v0, :cond_4

    instance-of p1, p1, Lorg/apache/velocity/runtime/RuntimeInstance;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method
