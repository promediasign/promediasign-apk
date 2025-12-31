.class public abstract Lorg/apache/velocity/runtime/parser/node/SetExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected log:Lorg/slf4j/Logger;

.field private method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->log:Lorg/slf4j/Logger;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->method:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public abstract execute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setMethod(Ljava/lang/reflect/Method;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->method:Ljava/lang/reflect/Method;

    return-void
.end method
