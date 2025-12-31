.class public final Landroidx/media3/exoplayer/DecoderReuseEvaluation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final decoderName:Ljava/lang/String;

.field public final discardReasons:I

.field public final newFormat:Landroidx/media3/common/Format;

.field public final oldFormat:Landroidx/media3/common/Format;

.field public final result:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->decoderName:Ljava/lang/String;

    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/Format;

    iput-object p1, p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->oldFormat:Landroidx/media3/common/Format;

    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/Format;

    iput-object p1, p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->newFormat:Landroidx/media3/common/Format;

    iput p4, p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    iput p5, p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->discardReasons:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget v2, p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    iget v3, p1, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->discardReasons:I

    iget v3, p1, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->discardReasons:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->decoderName:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->decoderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->oldFormat:Landroidx/media3/common/Format;

    iget-object v3, p1, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->oldFormat:Landroidx/media3/common/Format;

    invoke-virtual {v2, v3}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->newFormat:Landroidx/media3/common/Format;

    iget-object p1, p1, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->newFormat:Landroidx/media3/common/Format;

    invoke-virtual {v2, p1}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/16 v0, 0x20f

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    const/16 v1, 0x1f

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget v2, p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->discardReasons:I

    .line 11
    .line 12
    add-int/2addr v0, v2

    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->decoderName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v2, v0, v1}, Lorg/apache/ftpserver/main/a;->c(Ljava/lang/String;II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v2, p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->oldFormat:Landroidx/media3/common/Format;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroidx/media3/common/Format;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    add-int/2addr v2, v0

    .line 28
    mul-int/lit8 v2, v2, 0x1f

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->newFormat:Landroidx/media3/common/Format;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/media3/common/Format;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/2addr v0, v2

    .line 37
    return v0
.end method
