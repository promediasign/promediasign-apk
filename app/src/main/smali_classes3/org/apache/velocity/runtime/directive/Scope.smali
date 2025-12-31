.class public Lorg/apache/velocity/runtime/directive/Scope;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/velocity/runtime/directive/Scope$Info;
    }
.end annotation


# instance fields
.field private info:Lorg/apache/velocity/runtime/directive/Scope$Info;

.field protected final owner:Ljava/lang/Object;

.field private parent:Lorg/apache/velocity/runtime/directive/Scope;

.field private replaced:Ljava/lang/Object;

.field private storage:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/Scope;->owner:Ljava/lang/Object;

    if-eqz p2, :cond_0

    :try_start_0
    move-object p1, p2

    check-cast p1, Lorg/apache/velocity/runtime/directive/Scope;

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/Scope;->parent:Lorg/apache/velocity/runtime/directive/Scope;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object p2, p0, Lorg/apache/velocity/runtime/directive/Scope;->replaced:Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void
.end method

.method private getStorage()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Scope;->storage:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/runtime/directive/Scope;->storage:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Scope;->storage:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/directive/Scope;->getStorage()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-super {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/Scope;->parent:Lorg/apache/velocity/runtime/directive/Scope;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Scope;->parent:Lorg/apache/velocity/runtime/directive/Scope;

    invoke-virtual {v0, p1}, Lorg/apache/velocity/runtime/directive/Scope;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public getDepth()I
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Scope;->parent:Lorg/apache/velocity/runtime/directive/Scope;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/velocity/runtime/directive/Scope;->getDepth()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public getInfo()Lorg/apache/velocity/runtime/directive/Scope$Info;
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Scope;->info:Lorg/apache/velocity/runtime/directive/Scope$Info;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/velocity/runtime/directive/Scope$Info;

    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/Scope;->owner:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lorg/apache/velocity/runtime/directive/Scope$Info;-><init>(Lorg/apache/velocity/runtime/directive/Scope;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/velocity/runtime/directive/Scope;->info:Lorg/apache/velocity/runtime/directive/Scope$Info;

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Scope;->info:Lorg/apache/velocity/runtime/directive/Scope$Info;

    return-object v0
.end method

.method public getParent()Lorg/apache/velocity/runtime/directive/Scope;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Scope;->parent:Lorg/apache/velocity/runtime/directive/Scope;

    return-object v0
.end method

.method public getReplaced()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Scope;->replaced:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/Scope;->parent:Lorg/apache/velocity/runtime/directive/Scope;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/velocity/runtime/directive/Scope;->getReplaced()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTopmost()Lorg/apache/velocity/runtime/directive/Scope;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Scope;->parent:Lorg/apache/velocity/runtime/directive/Scope;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/velocity/runtime/directive/Scope;->getTopmost()Lorg/apache/velocity/runtime/directive/Scope;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/directive/Scope;->getStorage()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/velocity/runtime/directive/Scope;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ""

    return-object p1
.end method

.method public stop()V
    .locals 2

    new-instance v0, Lorg/apache/velocity/runtime/directive/StopCommand;

    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/Scope;->owner:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/apache/velocity/runtime/directive/StopCommand;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
