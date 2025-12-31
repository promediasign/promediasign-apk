.class public Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/cache/CacheLongKeyLIRS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public maxMemory:J

.field public nonResidentQueueSize:I

.field public segmentCount:I

.field public stackMoveDistance:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;->maxMemory:J

    const/16 v0, 0x10

    iput v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;->segmentCount:I

    const/16 v0, 0x20

    iput v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;->stackMoveDistance:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;->nonResidentQueueSize:I

    return-void
.end method
