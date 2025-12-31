.class public abstract Lorg/apache/mina/filter/util/WriteRequestFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)Ljava/lang/Object;
.end method

.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/filter/util/WriteRequestFilter;->doFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v1, Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;

    invoke-direct {v1, p0, v0, p3}, Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;-><init>(Lorg/apache/mina/filter/util/WriteRequestFilter;Ljava/lang/Object;Lorg/apache/mina/core/write/WriteRequest;)V

    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :goto_0
    return-void
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2

    instance-of v0, p3, Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;

    invoke-virtual {v0}, Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;->getParent()Lorg/apache/mina/filter/util/WriteRequestFilter;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {v0}, Lorg/apache/mina/core/write/WriteRequestWrapper;->getParentRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void

    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method
