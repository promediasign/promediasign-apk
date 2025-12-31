.class final Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/decoder/CryptoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PatternHolderV24"
.end annotation


# instance fields
.field private final frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

.field private final pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec$CryptoInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    invoke-static {}, Lu/a;->c()Landroid/media/MediaCodec$CryptoInfo$Pattern;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/MediaCodec$CryptoInfo;Landroidx/media3/decoder/CryptoInfo$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;-><init>(Landroid/media/MediaCodec$CryptoInfo;)V

    return-void
.end method

.method public static synthetic access$100(Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;->set(II)V

    return-void
.end method

.method private set(II)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-static {v0, p1, p2}, Lu/a;->g(Landroid/media/MediaCodec$CryptoInfo$Pattern;II)V

    iget-object p1, p0, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object p2, p0, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-static {p1, p2}, Lu/a;->h(Landroid/media/MediaCodec$CryptoInfo;Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    return-void
.end method
