.class public Lorg/apache/velocity/util/introspection/UberspectImpl$VelSetterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/util/introspection/VelPropertySet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/velocity/util/introspection/UberspectImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VelSetterImpl"
.end annotation


# instance fields
.field private final setExecutor:Lorg/apache/velocity/runtime/parser/node/SetExecutor;


# direct methods
.method public constructor <init>(Lorg/apache/velocity/runtime/parser/node/SetExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/util/introspection/UberspectImpl$VelSetterImpl;->setExecutor:Lorg/apache/velocity/runtime/parser/node/SetExecutor;

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl$VelSetterImpl;->setExecutor:Lorg/apache/velocity/runtime/parser/node/SetExecutor;

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl$VelSetterImpl;->setExecutor:Lorg/apache/velocity/runtime/parser/node/SetExecutor;

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl$VelSetterImpl;->setExecutor:Lorg/apache/velocity/runtime/parser/node/SetExecutor;

    invoke-virtual {v0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->execute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCacheable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
