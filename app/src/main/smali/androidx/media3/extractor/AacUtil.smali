.class public abstract Landroidx/media3/extractor/AacUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/AacUtil$Config;
    }
.end annotation


# static fields
.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

.field private static final AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method public static buildAacLcAudioSpecificConfig(II)[B
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, -0x1

    .line 5
    :goto_0
    sget-object v4, Landroidx/media3/extractor/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    .line 6
    .line 7
    array-length v5, v4

    .line 8
    if-ge v2, v5, :cond_1

    .line 9
    .line 10
    aget v4, v4, v2

    .line 11
    .line 12
    if-ne p0, v4, :cond_0

    .line 13
    .line 14
    move v3, v2

    .line 15
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v2, -0x1

    .line 19
    :goto_1
    sget-object v4, Landroidx/media3/extractor/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    .line 20
    .line 21
    array-length v5, v4

    .line 22
    if-ge v1, v5, :cond_3

    .line 23
    .line 24
    aget v4, v4, v1

    .line 25
    .line 26
    if-ne p1, v4, :cond_2

    .line 27
    .line 28
    move v2, v1

    .line 29
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_3
    if-eq p0, v0, :cond_4

    .line 33
    .line 34
    if-eq v2, v0, :cond_4

    .line 35
    .line 36
    const/4 p0, 0x2

    .line 37
    invoke-static {p0, v3, v2}, Landroidx/media3/extractor/AacUtil;->buildAudioSpecificConfig(III)[B

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string v1, "Invalid sample rate or number of channels: "

    .line 45
    .line 46
    const-string v2, ", "

    .line 47
    .line 48
    invoke-static {v1, p0, v2, p1}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method public static buildAudioSpecificConfig(III)[B
    .locals 2

    shl-int/lit8 p0, p0, 0x3

    and-int/lit16 p0, p0, 0xf8

    const/4 v0, 0x1

    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x7

    or-int/2addr p0, v1

    int-to-byte p0, p0

    shl-int/lit8 p1, p1, 0x7

    and-int/lit16 p1, p1, 0x80

    shl-int/lit8 p2, p2, 0x3

    and-int/lit8 p2, p2, 0x78

    or-int/2addr p1, p2

    int-to-byte p1, p1

    const/4 p2, 0x2

    new-array p2, p2, [B

    const/4 v1, 0x0

    aput-byte p0, p2, v1

    aput-byte p1, p2, v0

    return-object p2
.end method

.method private static getAudioObjectType(Landroidx/media3/common/util/ParsableBitArray;)I
    .locals 2

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    add-int/lit8 v0, p0, 0x20

    :cond_0
    return v0
.end method

.method private static getSamplingFrequency(Landroidx/media3/common/util/ParsableBitArray;)I
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const-string p0, "AAC header insufficient data"

    invoke-static {p0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_1
    const/16 p0, 0xd

    if-ge v0, p0, :cond_2

    sget-object p0, Landroidx/media3/extractor/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget p0, p0, v0

    :goto_0
    return p0

    :cond_2
    const-string p0, "AAC header wrong Sampling Frequency Index"

    invoke-static {p0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static parseAudioSpecificConfig(Landroidx/media3/common/util/ParsableBitArray;Z)Landroidx/media3/extractor/AacUtil$Config;
    .locals 7

    invoke-static {p0}, Landroidx/media3/extractor/AacUtil;->getAudioObjectType(Landroidx/media3/common/util/ParsableBitArray;)I

    move-result v0

    invoke-static {p0}, Landroidx/media3/extractor/AacUtil;->getSamplingFrequency(Landroidx/media3/common/util/ParsableBitArray;)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const-string v4, "mp4a.40."

    .line 1
    invoke-static {v0, v4}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    if-eq v0, v5, :cond_0

    const/16 v5, 0x1d

    if-ne v0, v5, :cond_1

    .line 2
    :cond_0
    invoke-static {p0}, Landroidx/media3/extractor/AacUtil;->getSamplingFrequency(Landroidx/media3/common/util/ParsableBitArray;)I

    move-result v1

    invoke-static {p0}, Landroidx/media3/extractor/AacUtil;->getAudioObjectType(Landroidx/media3/common/util/ParsableBitArray;)I

    move-result v0

    const/16 v5, 0x16

    if-ne v0, v5, :cond_1

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    :cond_1
    if-eqz p1, :cond_4

    const/4 p1, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, p1, :cond_2

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v2, :cond_2

    const/4 p1, 0x6

    if-eq v0, p1, :cond_2

    const/4 p1, 0x7

    if-eq v0, p1, :cond_2

    const/16 p1, 0x11

    if-eq v0, p1, :cond_2

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unsupported audio object type: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_2
    :pswitch_0
    invoke-static {p0, v0, v3}, Landroidx/media3/extractor/AacUtil;->parseGaSpecificConfig(Landroidx/media3/common/util/ParsableBitArray;II)V

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    if-eq p0, v6, :cond_3

    if-eq p0, v5, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported epConfig: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_0
    sget-object p0, Landroidx/media3/extractor/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    aget p0, p0, v3

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_5

    new-instance p1, Landroidx/media3/extractor/AacUtil$Config;

    invoke-direct {p1, v1, p0, v4, v0}, Landroidx/media3/extractor/AacUtil$Config;-><init>(IILjava/lang/String;Landroidx/media3/extractor/AacUtil$1;)V

    return-object p1

    :cond_5
    invoke-static {v0, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static parseAudioSpecificConfig([B)Landroidx/media3/extractor/AacUtil$Config;
    .locals 1

    .line 7
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig(Landroidx/media3/common/util/ParsableBitArray;Z)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object p0

    return-object p0
.end method

.method private static parseGaSpecificConfig(Landroidx/media3/common/util/ParsableBitArray;II)V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AacUtil"

    const-string v1, "Unexpected frameLengthFlag = 1"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz p2, :cond_8

    const/4 p2, 0x6

    const/4 v1, 0x3

    const/16 v2, 0x14

    if-eq p1, p2, :cond_2

    if-ne p1, v2, :cond_3

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_3
    if-eqz v0, :cond_7

    const/16 p2, 0x16

    if-ne p1, p2, :cond_4

    const/16 p2, 0x10

    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_4
    const/16 p2, 0x11

    if-eq p1, p2, :cond_5

    const/16 p2, 0x13

    if-eq p1, p2, :cond_5

    if-eq p1, v2, :cond_5

    const/16 p2, 0x17

    if-ne p1, p2, :cond_6

    :cond_5
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_6
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_7
    return-void

    :cond_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
