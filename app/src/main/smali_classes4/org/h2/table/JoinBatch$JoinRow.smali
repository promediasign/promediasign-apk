.class final Lorg/h2/table/JoinBatch$JoinRow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/table/JoinBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JoinRow"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final S_CURSOR:J = 0x2L

.field private static final S_FUTURE:J = 0x1L

.field private static final S_MASK:J = 0x3L

.field private static final S_NULL:J = 0x0L

.field private static final S_ROW:J = 0x3L


# instance fields
.field next:Lorg/h2/table/JoinBatch$JoinRow;

.field prev:Lorg/h2/table/JoinBatch$JoinRow;

.field private row:[Ljava/lang/Object;

.field private state:J


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/table/JoinBatch$JoinRow;->row:[Ljava/lang/Object;

    return-void
.end method

.method private getState(I)J
    .locals 4

    iget-wide v0, p0, Lorg/h2/table/JoinBatch$JoinRow;->state:J

    shl-int/lit8 p1, p1, 0x1

    ushr-long/2addr v0, p1

    const-wide/16 v2, 0x3

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private incrementState(IJ)V
    .locals 2

    iget-wide v0, p0, Lorg/h2/table/JoinBatch$JoinRow;->state:J

    shl-int/lit8 p1, p1, 0x1

    shl-long p1, p2, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/h2/table/JoinBatch$JoinRow;->state:J

    return-void
.end method

.method private isCursor(I)Z
    .locals 4

    invoke-direct {p0, p1}, Lorg/h2/table/JoinBatch$JoinRow;->getState(I)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public copyBehind(I)Lorg/h2/table/JoinBatch$JoinRow;
    .locals 3

    iget-object v0, p0, Lorg/h2/table/JoinBatch$JoinRow;->row:[Ljava/lang/Object;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    new-instance p1, Lorg/h2/table/JoinBatch$JoinRow;

    invoke-direct {p1, v1}, Lorg/h2/table/JoinBatch$JoinRow;-><init>([Ljava/lang/Object;)V

    iget-wide v0, p0, Lorg/h2/table/JoinBatch$JoinRow;->state:J

    iput-wide v0, p1, Lorg/h2/table/JoinBatch$JoinRow;->state:J

    iget-object v0, p0, Lorg/h2/table/JoinBatch$JoinRow;->prev:Lorg/h2/table/JoinBatch$JoinRow;

    if-eqz v0, :cond_1

    iput-object v0, p1, Lorg/h2/table/JoinBatch$JoinRow;->prev:Lorg/h2/table/JoinBatch$JoinRow;

    iget-object v0, p0, Lorg/h2/table/JoinBatch$JoinRow;->prev:Lorg/h2/table/JoinBatch$JoinRow;

    iput-object p1, v0, Lorg/h2/table/JoinBatch$JoinRow;->next:Lorg/h2/table/JoinBatch$JoinRow;

    :cond_1
    iput-object p1, p0, Lorg/h2/table/JoinBatch$JoinRow;->prev:Lorg/h2/table/JoinBatch$JoinRow;

    iput-object p0, p1, Lorg/h2/table/JoinBatch$JoinRow;->next:Lorg/h2/table/JoinBatch$JoinRow;

    return-object p1
.end method

.method public drop()V
    .locals 2

    iget-object v0, p0, Lorg/h2/table/JoinBatch$JoinRow;->prev:Lorg/h2/table/JoinBatch$JoinRow;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/h2/table/JoinBatch$JoinRow;->next:Lorg/h2/table/JoinBatch$JoinRow;

    iput-object v1, v0, Lorg/h2/table/JoinBatch$JoinRow;->next:Lorg/h2/table/JoinBatch$JoinRow;

    :cond_0
    iget-object v1, p0, Lorg/h2/table/JoinBatch$JoinRow;->next:Lorg/h2/table/JoinBatch$JoinRow;

    if-eqz v1, :cond_1

    iput-object v0, v1, Lorg/h2/table/JoinBatch$JoinRow;->prev:Lorg/h2/table/JoinBatch$JoinRow;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/table/JoinBatch$JoinRow;->row:[Ljava/lang/Object;

    return-void
.end method

.method public isComplete()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/table/JoinBatch$JoinRow;->row:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/h2/table/JoinBatch$JoinRow;->isRow(I)Z

    move-result v0

    return v0
.end method

.method public isDropped()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/table/JoinBatch$JoinRow;->row:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFuture(I)Z
    .locals 4

    invoke-direct {p0, p1}, Lorg/h2/table/JoinBatch$JoinRow;->getState(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRow(I)Z
    .locals 4

    invoke-direct {p0, p1}, Lorg/h2/table/JoinBatch$JoinRow;->getState(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public row(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/JoinBatch$JoinRow;->row:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JoinRow->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/table/JoinBatch$JoinRow;->row:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateRow(ILjava/lang/Object;JJ)V
    .locals 1

    iget-object v0, p0, Lorg/h2/table/JoinBatch$JoinRow;->row:[Ljava/lang/Object;

    aput-object p2, v0, p1

    sub-long/2addr p5, p3

    invoke-direct {p0, p1, p5, p6}, Lorg/h2/table/JoinBatch$JoinRow;->incrementState(IJ)V

    return-void
.end method
