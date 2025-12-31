.class Lorg/apache/mina/core/buffer/IoBufferHexDumper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final highDigits:[B

.field private static final lowDigits:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const/16 v1, 0x100

    new-array v2, v1, [B

    new-array v3, v1, [B

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    ushr-int/lit8 v5, v4, 0x4

    aget-byte v5, v0, v5

    aput-byte v5, v2, v4

    and-int/lit8 v5, v4, 0xf

    aget-byte v5, v0, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sput-object v2, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->highDigits:[B

    sput-object v3, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->lowDigits:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHexdump(Lorg/apache/mina/core/buffer/IoBuffer;I)Ljava/lang/String;
    .locals 5

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-le v0, p1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    :goto_1
    if-nez p1, :cond_2

    .line 20
    .line 21
    const-string p0, "empty"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    mul-int/lit8 v2, p1, 0x3

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x3

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    and-int/lit16 v3, v3, 0xff

    .line 42
    .line 43
    sget-object v4, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->highDigits:[B

    .line 44
    .line 45
    aget-byte v4, v4, v3

    .line 46
    .line 47
    int-to-char v4, v4

    .line 48
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    sget-object v4, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->lowDigits:[B

    .line 52
    .line 53
    aget-byte v3, v4, v3

    .line 54
    .line 55
    :goto_2
    int-to-char v3, v3

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    add-int/lit8 p1, p1, -0x1

    .line 60
    .line 61
    if-lez p1, :cond_3

    .line 62
    .line 63
    const/16 v3, 0x20

    .line 64
    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    and-int/lit16 v3, v3, 0xff

    .line 73
    .line 74
    sget-object v4, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->highDigits:[B

    .line 75
    .line 76
    aget-byte v4, v4, v3

    .line 77
    .line 78
    int-to-char v4, v4

    .line 79
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    sget-object v4, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->lowDigits:[B

    .line 83
    .line 84
    aget-byte v3, v4, v3

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 88
    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    const-string p0, "..."

    .line 93
    .line 94
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    const-string v0, "lengthLimit: "

    .line 105
    .line 106
    const-string v1, " (expected: 1+)"

    .line 107
    .line 108
    invoke-static {p1, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0
.end method
