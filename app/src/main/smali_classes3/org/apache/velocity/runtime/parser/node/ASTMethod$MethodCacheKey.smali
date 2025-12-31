.class public Lorg/apache/velocity/runtime/parser/node/ASTMethod$MethodCacheKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/velocity/runtime/parser/node/ASTMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodCacheKey"
.end annotation


# instance fields
.field private final methodName:Ljava/lang/String;

.field private final params:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod$MethodCacheKey;->methodName:Ljava/lang/String;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lorg/apache/velocity/runtime/parser/node/ASTMethod;->access$000()[Ljava/lang/Class;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod$MethodCacheKey;->params:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lorg/apache/velocity/runtime/parser/node/ASTMethod$MethodCacheKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lorg/apache/velocity/runtime/parser/node/ASTMethod$MethodCacheKey;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod$MethodCacheKey;->params:[Ljava/lang/Class;

    array-length v0, v0

    iget-object v2, p1, Lorg/apache/velocity/runtime/parser/node/ASTMethod$MethodCacheKey;->params:[Ljava/lang/Class;

    array-length v2, v2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod$MethodCacheKey;->methodName:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/velocity/runtime/parser/node/ASTMethod$MethodCacheKey;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod$MethodCacheKey;->params:[Ljava/lang/Class;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    iget-object v3, p1, Lorg/apache/velocity/runtime/parser/node/ASTMethod$MethodCacheKey;->params:[Ljava/lang/Class;

    if-nez v2, :cond_0

    aget-object v3, v3, v0

    if-eq v2, v3, :cond_1

    return v1

    :cond_0
    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod$MethodCacheKey;->params:[Ljava/lang/Class;

    array-length v1, v0

    const/16 v2, 0x11

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    mul-int/lit8 v2, v2, 0x25

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v4, v2

    move v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v2, v2, 0x25

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTMethod$MethodCacheKey;->methodName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method
