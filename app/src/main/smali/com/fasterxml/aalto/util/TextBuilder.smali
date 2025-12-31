.class public final Lcom/fasterxml/aalto/util/TextBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sIndSpacesArray:[C

.field private static final sIndSpacesStrings:[Ljava/lang/String;

.field private static final sIndTabsArray:[C

.field private static final sIndTabsStrings:[Ljava/lang/String;

.field static final sNoChars:[C


# instance fields
.field private final _config:Lcom/fasterxml/aalto/in/ReaderConfig;

.field private _currentSegment:[C

.field private _currentSize:I

.field private _isIndentation:Z

.field private _resultArray:[C

.field private _resultLen:I

.field private _resultString:Ljava/lang/String;

.field private _segmentSize:I

.field private _segments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lcom/fasterxml/aalto/util/TextBuilder;->sNoChars:[C

    const-string v0, "\n                                 "

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/aalto/util/TextBuilder;->sIndSpacesArray:[C

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/fasterxml/aalto/util/TextBuilder;->sIndSpacesStrings:[Ljava/lang/String;

    const-string v0, "\n\t\t\t\t\t\t\t\t\t"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/aalto/util/TextBuilder;->sIndTabsArray:[C

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/fasterxml/aalto/util/TextBuilder;->sIndTabsStrings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/aalto/in/ReaderConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_isIndentation:Z

    iput-object p1, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    return-void
.end method

.method private final allocBuffer(I)[C
    .locals 1

    const/16 v0, 0x1f4

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/ReaderConfig;->allocMediumCBuffer(I)[C

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-array p1, p1, [C

    return-object p1
.end method

.method private buildResultArray()[C
    .locals 7

    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_resultString:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/util/TextBuilder;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/fasterxml/aalto/util/TextBuilder;->sNoChars:[C

    return-object v0

    :cond_1
    new-array v0, v0, [C

    iget-object v1, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segments:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v5, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [C

    array-length v6, v5

    invoke-static {v5, v2, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :cond_3
    iget-object v1, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSegment:[C

    iget v3, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSize:I

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private calcNewSize(I)I
    .locals 1

    const/16 v0, 0x1f40

    if-ge p1, v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x1

    :goto_0
    add-int/2addr p1, v0

    const/high16 v0, 0x40000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public static createRecyclableBuffer(Lcom/fasterxml/aalto/in/ReaderConfig;)Lcom/fasterxml/aalto/util/TextBuilder;
    .locals 1

    new-instance v0, Lcom/fasterxml/aalto/util/TextBuilder;

    invoke-direct {v0, p0}, Lcom/fasterxml/aalto/util/TextBuilder;-><init>(Lcom/fasterxml/aalto/in/ReaderConfig;)V

    return-object v0
.end method


# virtual methods
.method public contentsAsArray()[C
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_resultArray:[C

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fasterxml/aalto/util/TextBuilder;->buildResultArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_resultArray:[C

    :cond_0
    return-object v0
.end method

.method public contentsAsString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_resultString:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_resultArray:[C

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_resultString:Ljava/lang/String;

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segmentSize:I

    iget v1, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSize:I

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-nez v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSegment:[C

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_resultString:Ljava/lang/String;

    return-object v0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segments:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_3

    iget-object v5, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [C

    array-length v6, v5

    invoke-virtual {v3, v5, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSegment:[C

    invoke-virtual {v3, v0, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_resultString:Ljava/lang/String;

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_resultString:Ljava/lang/String;

    return-object v0
.end method

.method public contentsToArray(I[CII)I
    .locals 8

    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    array-length v5, v4

    sub-int v6, v5, p1

    const/4 v7, 0x1

    if-ge v6, v7, :cond_0

    sub-int/2addr p1, v5

    goto :goto_1

    :cond_0
    if-lt v6, p4, :cond_1

    invoke-static {v4, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, p4

    return v3

    :cond_1
    invoke-static {v4, p1, p2, p3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v6

    add-int/2addr p3, v6

    sub-int/2addr p4, v6

    const/4 p1, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    :cond_3
    if-lez p4, :cond_5

    iget v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSize:I

    sub-int/2addr v0, p1

    if-le p4, v0, :cond_4

    move p4, v0

    :cond_4
    if-lez p4, :cond_5

    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSegment:[C

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, p4

    :cond_5
    return v1
.end method

.method public finishCurrentSegment()[C
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segments:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segments:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSegment:[C

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSegment:[C

    array-length v0, v0

    iget v1, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segmentSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segmentSize:I

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/util/TextBuilder;->calcNewSize(I)I

    move-result v0

    new-array v0, v0, [C

    const/4 v1, 0x0

    iput v1, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSize:I

    iput-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSegment:[C

    return-object v0
.end method

.method public getBufferWithoutReset()[C
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSegment:[C

    return-object v0
.end method

.method public getCurrentLength()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSize:I

    return v0
.end method

.method public getTextBuffer()[C
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segments:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/util/TextBuilder;->contentsAsArray()[C

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_resultArray:[C

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSegment:[C

    return-object v0
.end method

.method public isAllWhitespace()Z
    .locals 9

    iget-boolean v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_isIndentation:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segments:Ljava/util/ArrayList;

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    iget-object v5, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [C

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-char v8, v5, v7

    if-le v8, v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSegment:[C

    iget v4, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSize:I

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_5

    aget-char v6, v0, v5

    if-le v6, v2, :cond_4

    return v3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    return v1
.end method

.method public recycle(Z)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSegment:[C

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_resultString:Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_resultArray:[C

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segmentSize:I

    iget v1, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSize:I

    add-int/2addr p1, v1

    if-lez p1, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segments:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segmentSize:I

    :cond_2
    iget-object p1, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSegment:[C

    iput-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSegment:[C

    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/in/ReaderConfig;->freeMediumCBuffer([C)V

    :cond_3
    return-void
.end method

.method public resetWithEmpty()[C
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_resultString:Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_resultArray:[C

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_isIndentation:Z

    iget-object v1, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segments:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segmentSize:I

    :cond_0
    iput v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSize:I

    iget-object v1, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSegment:[C

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/util/TextBuilder;->allocBuffer(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSegment:[C

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSegment:[C

    return-object v0
.end method

.method public resetWithIndentation(IC)V
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segmentSize:I

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSize:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_isIndentation:Z

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_resultLen:I

    const/16 v2, 0x9

    if-ne p2, v2, :cond_1

    sget-object p2, Lcom/fasterxml/aalto/util/TextBuilder;->sIndTabsArray:[C

    iput-object p2, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_resultArray:[C

    sget-object p2, Lcom/fasterxml/aalto/util/TextBuilder;->sIndTabsStrings:[Ljava/lang/String;

    aget-object v2, p2, p1

    if-nez v2, :cond_2

    const-string v2, "\n\t\t\t\t\t\t\t\t\t"

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, p1

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/fasterxml/aalto/util/TextBuilder;->sIndSpacesArray:[C

    iput-object p2, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_resultArray:[C

    sget-object p2, Lcom/fasterxml/aalto/util/TextBuilder;->sIndSpacesStrings:[Ljava/lang/String;

    aget-object v2, p2, p1

    if-nez v2, :cond_2

    const-string v2, "\n                                 "

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, p1

    :cond_2
    :goto_0
    iput-object v2, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_resultString:Ljava/lang/String;

    return-void
.end method

.method public setCurrentLength(I)V
    .locals 0

    iput p1, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSize:I

    return-void
.end method

.method public size()I
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_currentSize:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_resultLen:I

    return v0

    :cond_0
    iget v1, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_segmentSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_resultString:Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/aalto/util/TextBuilder;->_resultArray:[C

    invoke-virtual {p0}, Lcom/fasterxml/aalto/util/TextBuilder;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
