.class public final Lcom/fasterxml/aalto/util/BufferRecycler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mFullBBuffer:[B

.field private mFullCBuffer:[C

.field private mMediumCBuffer:[C

.field private mSmallCBuffer:[C


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/util/BufferRecycler;->mSmallCBuffer:[C

    iput-object v0, p0, Lcom/fasterxml/aalto/util/BufferRecycler;->mMediumCBuffer:[C

    iput-object v0, p0, Lcom/fasterxml/aalto/util/BufferRecycler;->mFullCBuffer:[C

    iput-object v0, p0, Lcom/fasterxml/aalto/util/BufferRecycler;->mFullBBuffer:[B

    return-void
.end method


# virtual methods
.method public getFullBBuffer(I)[B
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/aalto/util/BufferRecycler;->mFullBBuffer:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lt v2, p1, :cond_0

    iput-object v1, p0, Lcom/fasterxml/aalto/util/BufferRecycler;->mFullBBuffer:[B

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getFullCBuffer(I)[C
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/aalto/util/BufferRecycler;->mFullCBuffer:[C

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lt v2, p1, :cond_0

    iput-object v1, p0, Lcom/fasterxml/aalto/util/BufferRecycler;->mFullCBuffer:[C

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getMediumCBuffer(I)[C
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/aalto/util/BufferRecycler;->mMediumCBuffer:[C

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lt v2, p1, :cond_0

    iput-object v1, p0, Lcom/fasterxml/aalto/util/BufferRecycler;->mMediumCBuffer:[C

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getSmallCBuffer(I)[C
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/aalto/util/BufferRecycler;->mSmallCBuffer:[C

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lt v2, p1, :cond_0

    iput-object v1, p0, Lcom/fasterxml/aalto/util/BufferRecycler;->mSmallCBuffer:[C

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public returnFullBBuffer([B)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/aalto/util/BufferRecycler;->mFullBBuffer:[B

    return-void
.end method

.method public returnFullCBuffer([C)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/aalto/util/BufferRecycler;->mFullCBuffer:[C

    return-void
.end method

.method public returnMediumCBuffer([C)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/aalto/util/BufferRecycler;->mMediumCBuffer:[C

    return-void
.end method

.method public returnSmallCBuffer([C)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/aalto/util/BufferRecycler;->mSmallCBuffer:[C

    return-void
.end method
