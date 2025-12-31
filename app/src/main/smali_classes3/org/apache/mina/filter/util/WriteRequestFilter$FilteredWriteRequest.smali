.class Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;
.super Lorg/apache/mina/core/write/WriteRequestWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/util/WriteRequestFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilteredWriteRequest"
.end annotation


# instance fields
.field private final filteredMessage:Ljava/lang/Object;

.field final synthetic this$0:Lorg/apache/mina/filter/util/WriteRequestFilter;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/util/WriteRequestFilter;Ljava/lang/Object;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;->this$0:Lorg/apache/mina/filter/util/WriteRequestFilter;

    invoke-direct {p0, p3}, Lorg/apache/mina/core/write/WriteRequestWrapper;-><init>(Lorg/apache/mina/core/write/WriteRequest;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;->filteredMessage:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "filteredMessage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getMessage()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;->filteredMessage:Ljava/lang/Object;

    return-object v0
.end method

.method public getParent()Lorg/apache/mina/filter/util/WriteRequestFilter;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/util/WriteRequestFilter$FilteredWriteRequest;->this$0:Lorg/apache/mina/filter/util/WriteRequestFilter;

    return-object v0
.end method
