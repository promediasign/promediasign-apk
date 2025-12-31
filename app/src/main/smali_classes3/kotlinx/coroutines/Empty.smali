.class final Lkotlinx/coroutines/Empty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/Incomplete;


# instance fields
.field private final isActive:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lkotlinx/coroutines/Empty;->isActive:Z

    return-void
.end method


# virtual methods
.method public getList()Lkotlinx/coroutines/NodeList;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lkotlinx/coroutines/Empty;->isActive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Empty{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlinx/coroutines/Empty;->isActive()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "Active"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, "New"

    .line 18
    .line 19
    :goto_0
    const/16 v2, 0x7d

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
