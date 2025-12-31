.class public Lorg/apache/poi/util/ReplacingInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/util/ReplacingInputStream$State;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field final buf:[I

.field private matchedIndex:I

.field private final pattern:[B

.field private replacedIndex:I

.field private final replacement:[B

.field private state:Lorg/apache/poi/util/ReplacingInputStream$State;

.field private unbufferIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/ReplacingInputStream;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/poi/util/ReplacingInputStream;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/util/ReplacingInputStream;-><init>(Ljava/io/InputStream;[B[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[B[B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/util/ReplacingInputStream;->matchedIndex:I

    iput p1, p0, Lorg/apache/poi/util/ReplacingInputStream;->unbufferIndex:I

    iput p1, p0, Lorg/apache/poi/util/ReplacingInputStream;->replacedIndex:I

    sget-object p1, Lorg/apache/poi/util/ReplacingInputStream$State;->NOT_MATCHED:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput-object p1, p0, Lorg/apache/poi/util/ReplacingInputStream;->state:Lorg/apache/poi/util/ReplacingInputStream$State;

    if-eqz p2, :cond_0

    array-length p1, p2

    if-eqz p1, :cond_0

    iput-object p2, p0, Lorg/apache/poi/util/ReplacingInputStream;->pattern:[B

    iput-object p3, p0, Lorg/apache/poi/util/ReplacingInputStream;->replacement:[B

    array-length p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/poi/util/ReplacingInputStream;->buf:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pattern length should be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public read()I
    .locals 6

    .line 1
    sget-object v0, Lorg/apache/poi/util/ReplacingInputStream$1;->$SwitchMap$org$apache$poi$util$ReplacingInputStream$State:[I

    iget-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->state:Lorg/apache/poi/util/ReplacingInputStream$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->pattern:[B

    aget-byte v1, v1, v2

    if-eq v1, v0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->buf:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->buf:[I

    const/4 v3, 0x1

    iput v3, p0, Lorg/apache/poi/util/ReplacingInputStream;->matchedIndex:I

    aput v0, v1, v2

    iget-object v0, p0, Lorg/apache/poi/util/ReplacingInputStream;->pattern:[B

    array-length v0, v0

    if-ne v0, v3, :cond_1

    sget-object v0, Lorg/apache/poi/util/ReplacingInputStream$State;->REPLACING:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput-object v0, p0, Lorg/apache/poi/util/ReplacingInputStream;->state:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput v2, p0, Lorg/apache/poi/util/ReplacingInputStream;->replacedIndex:I

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/util/ReplacingInputStream$State;->MATCHING:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput-object v0, p0, Lorg/apache/poi/util/ReplacingInputStream;->state:Lorg/apache/poi/util/ReplacingInputStream$State;

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/util/ReplacingInputStream;->read()I

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/util/ReplacingInputStream;->buf:[I

    iget v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->unbufferIndex:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/poi/util/ReplacingInputStream;->unbufferIndex:I

    aget v0, v0, v1

    iget v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->matchedIndex:I

    if-ne v3, v1, :cond_3

    sget-object v1, Lorg/apache/poi/util/ReplacingInputStream$State;->NOT_MATCHED:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->state:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput v2, p0, Lorg/apache/poi/util/ReplacingInputStream;->matchedIndex:I

    :cond_3
    return v0

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/util/ReplacingInputStream;->replacement:[B

    iget v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->replacedIndex:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/poi/util/ReplacingInputStream;->replacedIndex:I

    aget-byte v1, v0, v1

    array-length v0, v0

    if-ne v3, v0, :cond_5

    sget-object v0, Lorg/apache/poi/util/ReplacingInputStream$State;->NOT_MATCHED:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput-object v0, p0, Lorg/apache/poi/util/ReplacingInputStream;->state:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput v2, p0, Lorg/apache/poi/util/ReplacingInputStream;->replacedIndex:I

    :cond_5
    return v1

    :cond_6
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->pattern:[B

    iget v3, p0, Lorg/apache/poi/util/ReplacingInputStream;->matchedIndex:I

    aget-byte v4, v1, v3

    if-ne v4, v0, :cond_9

    iget-object v4, p0, Lorg/apache/poi/util/ReplacingInputStream;->buf:[I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/apache/poi/util/ReplacingInputStream;->matchedIndex:I

    aput v0, v4, v3

    array-length v0, v1

    if-ne v5, v0, :cond_a

    iget-object v0, p0, Lorg/apache/poi/util/ReplacingInputStream;->replacement:[B

    if-eqz v0, :cond_8

    array-length v0, v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    sget-object v0, Lorg/apache/poi/util/ReplacingInputStream$State;->REPLACING:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput-object v0, p0, Lorg/apache/poi/util/ReplacingInputStream;->state:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput v2, p0, Lorg/apache/poi/util/ReplacingInputStream;->replacedIndex:I

    goto :goto_2

    :cond_8
    :goto_1
    sget-object v0, Lorg/apache/poi/util/ReplacingInputStream$State;->NOT_MATCHED:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput-object v0, p0, Lorg/apache/poi/util/ReplacingInputStream;->state:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput v2, p0, Lorg/apache/poi/util/ReplacingInputStream;->matchedIndex:I

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->buf:[I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/poi/util/ReplacingInputStream;->matchedIndex:I

    aput v0, v1, v3

    sget-object v0, Lorg/apache/poi/util/ReplacingInputStream$State;->UNBUFFER:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput-object v0, p0, Lorg/apache/poi/util/ReplacingInputStream;->state:Lorg/apache/poi/util/ReplacingInputStream$State;

    iput v2, p0, Lorg/apache/poi/util/ReplacingInputStream;->unbufferIndex:I

    :cond_a
    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/util/ReplacingInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/util/ReplacingInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_4

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/util/ReplacingInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    int-to-byte v0, v0

    aput-byte v0, p1, p2

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p3, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/util/ReplacingInputStream;->read()I

    move-result v2

    if-ne v2, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int v3, p2, v0

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->state:Lorg/apache/poi/util/ReplacingInputStream$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/util/ReplacingInputStream;->matchedIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/util/ReplacingInputStream;->replacedIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/util/ReplacingInputStream;->unbufferIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
