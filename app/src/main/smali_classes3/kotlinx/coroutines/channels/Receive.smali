.class public abstract Lkotlinx/coroutines/channels/Receive;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/ReceiveOrClosed;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/channels/ReceiveOrClosed<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getOfferResult()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/Receive;->getOfferResult()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public getOfferResult()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    .line 2
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method
