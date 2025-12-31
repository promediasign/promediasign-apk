.class public Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/common/UnicodeString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtRst"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;",
        ">;"
    }
.end annotation


# instance fields
.field private extraData:[B

.field private formattingFontIndex:S

.field private formattingOptions:S

.field private numberOfRuns:I

.field private phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

.field private phoneticText:Ljava/lang/String;

.field private reserved:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->populateEmpty()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->populateEmpty()V

    return-void

    :cond_0
    const/4 v3, 0x5

    if-eq v2, v1, :cond_2

    invoke-static {}, Lorg/apache/poi/hssf/record/common/UnicodeString;->access$000()Lorg/apache/poi/util/POILogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Warning - ExtRst has wrong magic marker, expecting 1 but found "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v5, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    const-string v6, " - ignoring"

    .line 2
    invoke-static {v6, v5, v4}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    .line 3
    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-virtual {v2, v3, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_0
    add-int/lit8 v2, p2, -0x2

    if-ge v0, v2, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->populateEmpty()V

    return-void

    :cond_2
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result p2

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v2

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v4

    if-nez v2, :cond_3

    if-lez v4, :cond_3

    const/4 v4, 0x0

    :cond_3
    if-ne v2, v4, :cond_7

    invoke-static {p1, v2}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    add-int/lit8 p2, p2, -0xa

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    div-int/lit8 v2, p2, 0x6

    new-array v4, v2, [Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    iput-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v6, v5

    if-ge v4, v6, :cond_4

    new-instance v6, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    const/4 v7, 0x0

    invoke-direct {v6, p1, v7}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;-><init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/hssf/record/common/UnicodeString$1;)V

    aput-object v6, v5, v4

    add-int/2addr v4, v1

    goto :goto_1

    :cond_4
    mul-int/lit8 v2, v2, 0x6

    sub-int/2addr p2, v2

    if-gez p2, :cond_5

    invoke-static {}, Lorg/apache/poi/hssf/record/common/UnicodeString;->access$000()Lorg/apache/poi/util/POILogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Warning - ExtRst overran by "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rsub-int/lit8 p2, p2, 0x0

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    const/4 p2, 0x0

    :cond_5
    new-array p2, p2, [B

    iput-object p2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    :goto_2
    iget-object p2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    array-length v2, p2

    if-ge v0, v2, :cond_6

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v2

    aput-byte v2, p2, v0

    add-int/2addr v0, v1

    goto :goto_2

    :cond_6
    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The two length fields of the Phonetic Text don\'t agree! "

    const-string v0, " vs "

    .line 4
    invoke-static {p2, v2, v0, v4}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private populateEmpty()V
    .locals 2

    const/4 v0, 0x1

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->clone()Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;
    .locals 7

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;-><init>()V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    iget v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    iput v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v1, v1

    new-array v1, v1, [Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v3, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$300(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v4

    iget-object v5, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$400(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v5

    iget-object v6, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$500(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;-><init>(III)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;)I
    .locals 3

    .line 2
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    iget-short v1, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    iget-short v1, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    iget-short v1, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    sub-int/2addr v0, v1

    if-eqz v0, :cond_2

    return v0

    :cond_2
    iget v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    iget v1, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_3

    return v0

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v0, v0

    iget-object v1, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v1, v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_5

    return v0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v2, v1

    if-ge v0, v2, :cond_9

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$300(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v1

    iget-object v2, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$300(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v2

    sub-int/2addr v1, v2

    if-eqz v1, :cond_6

    return v1

    :cond_6
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$400(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v1

    iget-object v2, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$400(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v2

    sub-int/2addr v1, v2

    if-eqz v1, :cond_7

    return v1

    :cond_7
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$500(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v1

    iget-object v2, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$500(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v2

    sub-int/2addr v1, v2

    if-eqz v1, :cond_8

    return v1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iget-object p1, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getDataSize()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    array-length v0, v0

    add-int/2addr v1, v0

    return v1
.end method

.method public getFormattingFontIndex()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    return v0
.end method

.method public getFormattingOptions()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    return v0
.end method

.method public getNumberOfRuns()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    return v0
.end method

.method public getPhRuns()[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    return-object v0
.end method

.method public getPhoneticText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {v4}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$300(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v5

    add-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0x1f

    invoke-static {v4}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$400(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v1

    add-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {v4}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$500(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->getDataSize()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->reserved:S

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingFontIndex:S

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->formattingOptions:S

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->numberOfRuns:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phoneticText:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->phRuns:[Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;->access$200(Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->extraData:[B

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->write([B)V

    return-void
.end method
