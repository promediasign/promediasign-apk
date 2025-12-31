.class final Lcom/zaxxer/hikari/pool/LeakTask$1;
.super Lcom/zaxxer/hikari/pool/LeakTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zaxxer/hikari/pool/LeakTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zaxxer/hikari/pool/LeakTask;-><init>(Lcom/zaxxer/hikari/pool/LeakTask$1;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public start(Lcom/zaxxer/hikari/pool/PoolBagEntry;)Lcom/zaxxer/hikari/pool/LeakTask;
    .locals 0

    return-object p0
.end method
