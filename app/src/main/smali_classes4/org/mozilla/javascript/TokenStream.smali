.class Lorg/mozilla/javascript/TokenStream;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BYTE_ORDER_MARK:C = '\ufeff'

.field private static final EOF_CHAR:I = -0x1


# instance fields
.field private allStrings:Lorg/mozilla/javascript/ObjToIntMap;

.field private commentCursor:I

.field private commentPrefix:Ljava/lang/String;

.field commentType:Lorg/mozilla/javascript/Token$CommentType;

.field cursor:I

.field private dirtyLine:Z

.field private hitEOF:Z

.field private isBinary:Z

.field private isHex:Z

.field private isOctal:Z

.field private isOldOctal:Z

.field private lineEndChar:I

.field private lineStart:I

.field lineno:I

.field private number:D

.field private parser:Lorg/mozilla/javascript/Parser;

.field private quoteChar:I

.field regExpFlags:Ljava/lang/String;

.field private sourceBuffer:[C

.field sourceCursor:I

.field private sourceEnd:I

.field private sourceReader:Ljava/io/Reader;

.field private sourceString:Ljava/lang/String;

.field private string:Ljava/lang/String;

.field private stringBuffer:[C

.field private stringBufferTop:I

.field tokenBeg:I

.field tokenEnd:I

.field private final ungetBuffer:[I

.field private ungetCursor:I

.field private xmlIsAttribute:Z

.field private xmlIsTagContent:Z

.field private xmlOpenTagsCount:I


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Parser;Ljava/io/Reader;Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v1, 0x80

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    new-instance v1, Lorg/mozilla/javascript/ObjToIntMap;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    const/4 v2, -0x1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iput p4, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iput-object p2, p0, Lorg/mozilla/javascript/TokenStream;->sourceReader:Ljava/io/Reader;

    const/16 p1, 0x200

    new-array p1, p1, [C

    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_2
    iput-object p3, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    :goto_0
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    return-void
.end method

.method private addToString(I)V
    .locals 4

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    array-length v2, v1

    if-ne v0, v2, :cond_0

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    int-to-char p1, p1

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    return-void
.end method

.method private canUngetChar()Z
    .locals 3

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private final charAt(I)I
    .locals 3

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-lt p1, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1

    :cond_2
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-lt p1, v1, :cond_4

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->fillSourceBuffer()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_3

    return v0

    :cond_3
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    sub-int/2addr v1, v0

    sub-int/2addr p1, v1

    goto :goto_0

    :catch_0
    return v0

    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    aget-char p1, v0, p1

    return p1
.end method

.method private static convertLastCharToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\\u"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x4

    if-ge v2, v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private fillSourceBuffer()Z
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->isMarkingComment()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceReader:Ljava/io/Reader;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-gez v0, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    const/4 v0, 0x1

    return v0
.end method

.method private getChar()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->getChar(Z)I

    move-result v0

    return v0
.end method

.method private getChar(Z)I
    .locals 6

    .line 2
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aget p1, p1, v0

    return p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v3, v4, :cond_1

    iput-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    return v2

    :cond_1
    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v0, v3, :cond_3

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->fillSourceBuffer()Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    return v2

    :cond_3
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    aget-char v0, v0, v3

    :goto_1
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-ltz v3, :cond_5

    if-ne v3, v4, :cond_4

    if-ne v0, v5, :cond_4

    iput v5, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    goto :goto_0

    :cond_4
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    :cond_5
    const/16 v2, 0x7f

    if-gt v0, v2, :cond_7

    if-eq v0, v5, :cond_6

    if-ne v0, v4, :cond_a

    :cond_6
    :goto_2
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    const/16 v0, 0xa

    goto :goto_3

    :cond_7
    const v2, 0xfeff

    if-ne v0, v2, :cond_8

    return v0

    :cond_8
    if-eqz p1, :cond_9

    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isJSFormatChar(I)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_0

    :cond_9
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    :goto_3
    return v0
.end method

.method private getCharIgnoreLineEnd()I
    .locals 5

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aget v0, v2, v0

    return v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v3, v4, :cond_1

    iput-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    return v2

    :cond_1
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v0, v3, :cond_3

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->fillSourceBuffer()Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    return v2

    :cond_3
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    aget-char v0, v0, v2

    :goto_1
    const/16 v2, 0x7f

    const/16 v3, 0xa

    if-gt v0, v2, :cond_5

    if-eq v0, v3, :cond_4

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    :cond_4
    :goto_2
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    const/16 v0, 0xa

    goto :goto_3

    :cond_5
    const v2, 0xfeff

    if-ne v0, v2, :cond_6

    return v0

    :cond_6
    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isJSFormatChar(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    :goto_3
    return v0
.end method

.method private getStringFromBuffer()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private static isAlpha(I)Z
    .locals 3

    const/16 v0, 0x5a

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v0, :cond_1

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isDigit(I)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isJSFormatChar(I)Z
    .locals 1

    const/16 v0, 0x7f

    if-le p0, v0, :cond_0

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isJSSpace(I)Z
    .locals 4

    const/16 v0, 0x7f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc

    if-gt p0, v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    if-eq p0, v3, :cond_1

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/16 v0, 0xa0

    if-eq p0, v0, :cond_4

    const v0, 0xfeff

    if-eq p0, v0, :cond_4

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    if-ne p0, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method

.method public static isKeyword(Ljava/lang/String;IZ)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/TokenStream;->stringToKeyword(Ljava/lang/String;IZ)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMarkingComment()Z
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private markCommentStart()V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->markCommentStart(Ljava/lang/String;)V

    return-void
.end method

.method private markCommentStart(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isRecordingComments()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceReader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    :cond_0
    return-void
.end method

.method private matchChar(I)Z
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getCharIgnoreLineEnd()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    const/4 p1, 0x0

    return p1
.end method

.method private peekChar()I
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    return v0
.end method

.method private readCDATA()Z
    .locals 3

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    :cond_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v0
.end method

.method private readEntity()Z
    .locals 4

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_1

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_2

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v0
.end method

.method private readPI()Z
    .locals 3

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v0
.end method

.method private readQuotedString(I)Z
    .locals 2

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.XML.bad.form"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return p1
.end method

.method private readXmlComment()Z
    .locals 3

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    :cond_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v0
.end method

.method private skipLine()V
    .locals 2

    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return-void
.end method

.method private static stringToKeyword(Ljava/lang/String;IZ)I
    .locals 1

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_0

    invoke-static {p0}, Lorg/mozilla/javascript/TokenStream;->stringToKeywordForJS(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p2}, Lorg/mozilla/javascript/TokenStream;->stringToKeywordForES(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method private static stringToKeywordForES(Ljava/lang/String;Z)I
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x70

    const/16 v7, 0x66

    const/16 v8, 0x64

    const/16 v9, 0x63

    const/16 v10, 0x6d

    const/16 v12, 0x75

    const/16 v13, 0x61

    const/16 v14, 0x74

    const/16 v15, 0x69

    const/16 v11, 0x6e

    const/16 v3, 0x72

    const/16 v5, 0x65

    const/16 v16, 0x80

    const/4 v6, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "implements"

    :goto_0
    const/16 v3, 0x80

    goto/16 :goto_2

    :cond_0
    if-ne v1, v11, :cond_29

    const-string v1, "instanceof"

    const/16 v2, 0x35

    const/16 v3, 0x35

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_1

    if-eqz p1, :cond_1

    const-string v1, "interface"

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_29

    if-eqz p1, :cond_29

    const-string v1, "protected"

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v9, :cond_4

    if-eq v1, v8, :cond_3

    if-eq v1, v7, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v1, "function"

    const/16 v3, 0x6e

    goto/16 :goto_2

    :cond_3
    const-string v1, "debugger"

    const/16 v2, 0xa1

    const/16 v3, 0xa1

    goto/16 :goto_2

    :cond_4
    const-string v1, "continue"

    const/16 v2, 0x7a

    const/16 v3, 0x7a

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v13, :cond_8

    if-eq v1, v5, :cond_9

    if-eq v1, v15, :cond_7

    if-eq v1, v3, :cond_5

    const/16 v2, 0x78

    if-eq v1, v2, :cond_6

    goto/16 :goto_1

    :cond_5
    if-eqz p1, :cond_6

    const-string v1, "private"

    goto :goto_0

    :cond_6
    const-string v1, "extends"

    goto :goto_0

    :cond_7
    const-string v1, "finally"

    const/16 v2, 0x7e

    const/16 v3, 0x7e

    goto/16 :goto_2

    :cond_8
    if-eqz p1, :cond_9

    const-string v1, "package"

    goto :goto_0

    :cond_9
    const-string v1, "default"

    const/16 v3, 0x75

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_e

    if-eq v1, v10, :cond_d

    if-eq v1, v14, :cond_a

    if-eq v1, v12, :cond_b

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_5
    const-string v1, "typeof"

    const/16 v2, 0x20

    const/16 v3, 0x20

    goto/16 :goto_2

    :pswitch_6
    const-string v1, "export"

    goto/16 :goto_0

    :cond_a
    if-eqz p1, :cond_b

    const-string v1, "static"

    goto/16 :goto_0

    :cond_b
    if-eqz p1, :cond_c

    const-string v1, "public"

    goto/16 :goto_0

    :cond_c
    :pswitch_7
    const-string v1, "switch"

    const/16 v3, 0x73

    goto/16 :goto_2

    :cond_d
    const-string v1, "import"

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_f

    const-string v1, "delete"

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    goto/16 :goto_2

    :cond_f
    if-ne v1, v3, :cond_29

    const-string v1, "return"

    const/4 v2, 0x4

    const/4 v3, 0x4

    goto/16 :goto_2

    :pswitch_8
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v13, :cond_18

    if-eq v1, v5, :cond_16

    if-eq v1, v15, :cond_15

    const/16 v5, 0x6c

    if-eq v1, v5, :cond_14

    if-eq v1, v11, :cond_13

    if-eq v1, v2, :cond_12

    if-eq v1, v3, :cond_11

    if-eq v1, v14, :cond_10

    goto/16 :goto_1

    :cond_10
    const-string v1, "catch"

    const/16 v2, 0x7d

    const/16 v3, 0x7d

    goto/16 :goto_2

    :cond_11
    const-string v1, "throw"

    const/16 v2, 0x32

    const/16 v3, 0x32

    goto/16 :goto_2

    :cond_12
    const-string v1, "super"

    goto/16 :goto_0

    :cond_13
    const-string v1, "const"

    const/16 v2, 0x9b

    const/16 v3, 0x9b

    goto/16 :goto_2

    :cond_14
    const-string v1, "false"

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    goto/16 :goto_2

    :cond_15
    const-string v1, "while"

    const/16 v3, 0x76

    goto/16 :goto_2

    :cond_16
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_17

    const-string v1, "break"

    const/16 v3, 0x79

    goto/16 :goto_2

    :cond_17
    const/16 v2, 0x79

    if-ne v1, v2, :cond_29

    const-string v1, "yield"

    const/16 v2, 0x49

    const/16 v3, 0x49

    goto/16 :goto_2

    :cond_18
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_19

    const-string v1, "class"

    goto/16 :goto_0

    :cond_19
    if-ne v1, v13, :cond_29

    const-string v1, "await"

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v9, :cond_21

    if-eq v1, v5, :cond_1f

    if-eq v1, v11, :cond_1e

    if-eq v1, v14, :cond_1c

    const/16 v7, 0x76

    if-eq v1, v7, :cond_1b

    const/16 v2, 0x77

    if-eq v1, v2, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const-string v1, "with"

    const/16 v2, 0x7c

    const/16 v3, 0x7c

    goto/16 :goto_2

    :cond_1b
    const-string v1, "void"

    const/16 v2, 0x7f

    const/16 v3, 0x7f

    goto/16 :goto_2

    :cond_1c
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v5, :cond_1d

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_29

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_29

    const/16 v3, 0x2d

    goto/16 :goto_3

    :cond_1d
    const/16 v3, 0x73

    if-ne v1, v3, :cond_29

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_29

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x68

    if-ne v1, v2, :cond_29

    const/16 v3, 0x2b

    goto/16 :goto_3

    :cond_1e
    const-string v1, "null"

    const/16 v2, 0x2a

    const/16 v3, 0x2a

    goto/16 :goto_2

    :cond_1f
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v7, 0x2

    if-ne v1, v5, :cond_20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_29

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_29

    goto/16 :goto_3

    :cond_20
    if-ne v1, v10, :cond_29

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_29

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_29

    const/16 v3, 0x80

    goto/16 :goto_3

    :cond_21
    const/4 v7, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_29

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_29

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_29

    const/16 v3, 0x74

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v7, :cond_26

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_25

    if-eq v1, v11, :cond_24

    if-eq v1, v14, :cond_23

    const/16 v2, 0x76

    if-eq v1, v2, :cond_22

    goto/16 :goto_1

    :cond_22
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_29

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_29

    const/16 v3, 0x7b

    goto/16 :goto_3

    :cond_23
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_29

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_29

    const/16 v3, 0x52

    goto/16 :goto_3

    :cond_24
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_29

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_29

    const/16 v3, 0x1e

    goto :goto_3

    :cond_25
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_29

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_29

    const/16 v3, 0x9a

    goto :goto_3

    :cond_26
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_29

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_29

    const/16 v3, 0x78

    goto :goto_3

    :pswitch_b
    const/16 v2, 0x77

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_27

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_29

    const/16 v3, 0x71

    goto :goto_3

    :cond_27
    if-ne v1, v11, :cond_28

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_29

    const/16 v3, 0x34

    goto :goto_3

    :cond_28
    const/16 v3, 0x6f

    if-ne v1, v3, :cond_29

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_29

    const/16 v3, 0x77

    goto :goto_3

    :cond_29
    :goto_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2
    if-eqz v1, :cond_2a

    if-eq v1, v0, :cond_2a

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v3, 0x0

    :cond_2a
    :goto_3
    if-nez v3, :cond_2b

    return v4

    :cond_2b
    and-int/lit16 v0, v3, 0xff

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x77
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private static stringToKeywordForJS(Ljava/lang/String;)I
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0x64

    const/16 v6, 0x63

    const/16 v7, 0x6d

    const/16 v10, 0x6f

    const/16 v11, 0x76

    const/16 v13, 0x66

    const/16 v14, 0x61

    const/16 v15, 0x69

    const/16 v2, 0x6e

    const/16 v3, 0x74

    const/16 v12, 0x72

    const/16 v8, 0x65

    const/4 v9, 0x1

    const/16 v16, 0x80

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    const-string v1, "synchronized"

    :goto_0
    const/16 v2, 0x80

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_0

    const-string v1, "implements"

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_33

    const-string v1, "instanceof"

    const/16 v2, 0x35

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_1

    const-string v1, "interface"

    goto :goto_0

    :cond_1
    const/16 v2, 0x70

    if-ne v1, v2, :cond_2

    const-string v1, "protected"

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_33

    const-string v1, "transient"

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v14, :cond_7

    if-eq v1, v13, :cond_6

    if-eq v1, v11, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v1, "debugger"

    const/16 v2, 0xa1

    goto/16 :goto_3

    :cond_4
    const-string v1, "continue"

    const/16 v2, 0x7a

    goto/16 :goto_3

    :cond_5
    const-string v1, "volatile"

    goto :goto_0

    :cond_6
    const-string v1, "function"

    goto/16 :goto_3

    :cond_7
    const-string v1, "abstract"

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v14, :cond_d

    if-eq v1, v8, :cond_c

    if-eq v1, v15, :cond_b

    if-eq v1, v10, :cond_a

    if-eq v1, v12, :cond_9

    const/16 v2, 0x78

    if-eq v1, v2, :cond_8

    goto/16 :goto_2

    :cond_8
    const-string v1, "extends"

    goto :goto_0

    :cond_9
    const-string v1, "private"

    goto :goto_0

    :cond_a
    const-string v1, "boolean"

    goto :goto_0

    :cond_b
    const-string v1, "finally"

    const/16 v2, 0x7e

    goto/16 :goto_3

    :cond_c
    const-string v1, "default"

    const/16 v2, 0x75

    goto/16 :goto_3

    :cond_d
    const-string v1, "package"

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v14, :cond_15

    if-eq v1, v8, :cond_13

    const/16 v2, 0x68

    if-eq v1, v2, :cond_12

    if-eq v1, v7, :cond_11

    if-eq v1, v10, :cond_10

    if-eq v1, v3, :cond_f

    const/16 v2, 0x75

    if-eq v1, v2, :cond_e

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_7
    const-string v1, "typeof"

    const/16 v2, 0x20

    goto/16 :goto_3

    :pswitch_8
    const-string v1, "export"

    goto/16 :goto_0

    :pswitch_9
    const-string v1, "switch"

    const/16 v2, 0x73

    goto/16 :goto_3

    :cond_e
    const-string v1, "public"

    goto/16 :goto_0

    :cond_f
    const-string v1, "static"

    goto/16 :goto_0

    :cond_10
    const-string v1, "double"

    goto/16 :goto_0

    :cond_11
    const-string v1, "import"

    goto/16 :goto_0

    :cond_12
    const-string v1, "throws"

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_14

    const-string v1, "delete"

    const/16 v2, 0x1f

    goto/16 :goto_3

    :cond_14
    if-ne v1, v12, :cond_33

    const-string v1, "return"

    const/4 v2, 0x4

    goto/16 :goto_3

    :cond_15
    const-string v1, "native"

    goto/16 :goto_0

    :pswitch_a
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v14, :cond_1e

    if-eq v1, v8, :cond_1c

    if-eq v1, v15, :cond_1b

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_1a

    if-eq v1, v12, :cond_19

    if-eq v1, v3, :cond_18

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_2

    :pswitch_b
    const-string v1, "super"

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_16

    const-string v1, "float"

    goto/16 :goto_0

    :cond_16
    const/16 v2, 0x73

    if-ne v1, v2, :cond_33

    const-string v1, "short"

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_17

    const-string v1, "const"

    const/16 v2, 0x9b

    goto/16 :goto_3

    :cond_17
    if-ne v1, v13, :cond_33

    const-string v1, "final"

    goto/16 :goto_0

    :cond_18
    const-string v1, "catch"

    const/16 v2, 0x7d

    goto/16 :goto_3

    :cond_19
    const-string v1, "throw"

    const/16 v2, 0x32

    goto/16 :goto_3

    :cond_1a
    const-string v1, "false"

    const/16 v2, 0x2c

    goto/16 :goto_3

    :cond_1b
    const-string v1, "while"

    const/16 v2, 0x76

    goto/16 :goto_3

    :cond_1c
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_1d

    const-string v1, "break"

    const/16 v2, 0x79

    goto/16 :goto_3

    :cond_1d
    const/16 v2, 0x79

    if-ne v1, v2, :cond_33

    const-string v1, "yield"

    const/16 v2, 0x49

    goto/16 :goto_3

    :cond_1e
    const-string v1, "class"

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x62

    if-eq v1, v5, :cond_2a

    if-eq v1, v6, :cond_28

    if-eq v1, v8, :cond_26

    const/16 v5, 0x67

    if-eq v1, v5, :cond_25

    const/16 v5, 0x6c

    if-eq v1, v5, :cond_24

    if-eq v1, v2, :cond_23

    if-eq v1, v3, :cond_21

    if-eq v1, v11, :cond_20

    const/16 v2, 0x77

    if-eq v1, v2, :cond_1f

    goto/16 :goto_2

    :cond_1f
    const-string v1, "with"

    const/16 v2, 0x7c

    goto/16 :goto_3

    :cond_20
    const-string v1, "void"

    const/16 v2, 0x7f

    goto/16 :goto_3

    :cond_21
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v8, :cond_22

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_33

    const/16 v2, 0x2d

    goto/16 :goto_4

    :cond_22
    const/16 v3, 0x73

    if-ne v1, v3, :cond_33

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x68

    if-ne v1, v2, :cond_33

    const/16 v2, 0x2b

    goto/16 :goto_4

    :cond_23
    const-string v1, "null"

    const/16 v2, 0x2a

    goto/16 :goto_3

    :cond_24
    const-string v1, "long"

    goto/16 :goto_0

    :cond_25
    const-string v1, "goto"

    goto/16 :goto_0

    :cond_26
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v8, :cond_27

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_33

    const/16 v2, 0x72

    goto/16 :goto_4

    :cond_27
    if-ne v1, v7, :cond_33

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x75

    if-ne v1, v3, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_33

    :goto_1
    const/16 v2, 0x80

    goto/16 :goto_4

    :cond_28
    const/4 v5, 0x2

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_29

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_33

    const/16 v2, 0x74

    goto/16 :goto_4

    :cond_29
    if-ne v1, v12, :cond_33

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x68

    if-ne v1, v2, :cond_33

    goto :goto_1

    :cond_2a
    const-string v1, "byte"

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v13, :cond_30

    if-eq v1, v15, :cond_2f

    const/16 v5, 0x6c

    if-eq v1, v5, :cond_2e

    if-eq v1, v2, :cond_2d

    if-eq v1, v3, :cond_2c

    if-eq v1, v11, :cond_2b

    goto/16 :goto_2

    :cond_2b
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_33

    const/16 v2, 0x7b

    goto/16 :goto_4

    :cond_2c
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_33

    const/16 v2, 0x52

    goto/16 :goto_4

    :cond_2d
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x77

    if-ne v1, v3, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_33

    const/16 v2, 0x1e

    goto/16 :goto_4

    :cond_2e
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_33

    const/16 v2, 0x9a

    goto :goto_4

    :cond_2f
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_33

    goto/16 :goto_1

    :cond_30
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_33

    const/16 v2, 0x78

    goto :goto_4

    :pswitch_10
    const/16 v3, 0x77

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_31

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_33

    const/16 v2, 0x71

    goto :goto_4

    :cond_31
    if-ne v1, v2, :cond_32

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_33

    const/16 v2, 0x34

    goto :goto_4

    :cond_32
    if-ne v1, v10, :cond_33

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_33

    const/16 v2, 0x77

    goto :goto_4

    :cond_33
    :goto_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-eqz v1, :cond_34

    if-eq v1, v0, :cond_34

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v2, 0x0

    :cond_34
    :goto_4
    if-nez v2, :cond_35

    return v4

    :cond_35
    and-int/lit16 v0, v2, 0xff

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x77
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method private final substring(II)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int/2addr p2, p1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private ungetChar(I)V
    .locals 3

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aput p1, v0, v1

    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    return-void
.end method

.method private ungetCharIgnoreLineEnd(I)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aput p1, v0, v1

    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    return-void
.end method


# virtual methods
.method public final eof()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    return v0
.end method

.method public final getAndResetCurrentComment()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->isMarkingComment()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->isMarkingComment()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    invoke-virtual {p0}, Lorg/mozilla/javascript/TokenStream;->getTokenLength()I

    move-result v3

    iget-object v4, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentType()Lorg/mozilla/javascript/Token$CommentType;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return-object v0
.end method

.method public getCursor()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    return v0
.end method

.method public getFirstXMLToken()I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->canUngetChar()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/TokenStream;->getNextXMLToken()I

    move-result v0

    return v0
.end method

.method public final getLine()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    if-ltz v1, :cond_0

    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    add-int/lit8 v1, v0, -0x2

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_3

    add-int/lit8 v2, v0, -0x2

    goto :goto_2

    :cond_0
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    add-int v2, v1, v0

    :cond_3
    :goto_2
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    invoke-direct {p0, v0, v2}, Lorg/mozilla/javascript/TokenStream;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLine(I[I)Ljava/lang/String;
    .locals 7

    .line 2
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    if-le v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lez v0, :cond_3

    add-int/lit8 v4, p1, -0x1

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v4

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v3, 0xa

    if-ne v4, v3, :cond_1

    add-int/lit8 v3, p1, -0x2

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p1, -0x1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-lez p1, :cond_5

    add-int/lit8 v4, p1, -0x1

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v4

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_2
    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    sub-int/2addr v4, v2

    iget v5, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    const/4 v6, 0x1

    if-ltz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    add-int/2addr v4, v5

    aput v4, p2, v1

    aput v0, p2, v6

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lorg/mozilla/javascript/TokenStream;->getLine()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/TokenStream;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getLineno()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    return v0
.end method

.method public getNextXMLToken()I
    .locals 10

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const-string v2, "msg.XML.bad.form"

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_11

    iget-boolean v5, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    const/16 v6, 0x92

    const/16 v7, 0x7b

    const/16 v8, 0x2f

    const/4 v9, 0x1

    if-eqz v5, :cond_8

    const/16 v2, 0x9

    if-eq v1, v2, :cond_6

    const/16 v2, 0xa

    if-eq v1, v2, :cond_6

    const/16 v2, 0xd

    if-eq v1, v2, :cond_6

    const/16 v2, 0x20

    if-eq v1, v2, :cond_6

    const/16 v2, 0x22

    if-eq v1, v2, :cond_5

    const/16 v2, 0x27

    if-eq v1, v2, :cond_5

    const/16 v2, 0x3e

    if-eq v1, v8, :cond_4

    if-eq v1, v7, :cond_3

    const/16 v3, 0x3d

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    :goto_1
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    goto :goto_2

    :cond_1
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    goto :goto_1

    :cond_2
    iput-boolean v9, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    goto :goto_2

    :cond_3
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    return v6

    :cond_4
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    if-ne v1, v2, :cond_7

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    sub-int/2addr v1, v9

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    goto :goto_2

    :cond_5
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->readQuotedString(I)Z

    move-result v1

    if-nez v1, :cond_7

    return v4

    :cond_6
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    :cond_7
    :goto_2
    iget-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v0, 0x95

    return v0

    :cond_8
    const/16 v5, 0x3c

    if-eq v1, v5, :cond_9

    if-eq v1, v7, :cond_3

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v5, 0x21

    if-eq v1, v5, :cond_e

    if-eq v1, v8, :cond_b

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_a

    iput-boolean v9, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    add-int/2addr v1, v9

    :goto_3
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readPI()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_b
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    if-nez v1, :cond_d

    :cond_c
    :goto_4
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v4

    :cond_d
    iput-boolean v9, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_e
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v5, 0x2d

    if-eq v1, v5, :cond_10

    const/16 v5, 0x5b

    if-eq v1, v5, :cond_f

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readEntity()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_f
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v6, 0x43

    if-ne v1, v6, :cond_c

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v7, 0x44

    if-ne v1, v7, :cond_c

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v8, 0x41

    if-ne v1, v8, :cond_c

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v9, 0x54

    if-ne v1, v9, :cond_c

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v8, :cond_c

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v5, :cond_c

    invoke-direct {p0, v6}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0, v9}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readCDATA()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_10
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v5, :cond_c

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readXmlComment()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_11
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    goto/16 :goto_4
.end method

.method public final getNumber()D
    .locals 2

    iget-wide v0, p0, Lorg/mozilla/javascript/TokenStream;->number:D

    return-wide v0
.end method

.method public final getOffset()I
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public final getQuoteChar()C
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->quoteChar:I

    int-to-char v0, v0

    return v0
.end method

.method public final getSourceString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    return-object v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()I
    .locals 16

    move-object/from16 v0, p0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return v3

    :cond_1
    const/16 v4, 0xa

    const/4 v5, 0x1

    if-ne v1, v4, :cond_2

    iput-boolean v3, v0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return v5

    :cond_2
    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isJSSpace(I)Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0x2d

    if-eq v1, v6, :cond_3

    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    :cond_3
    iget v7, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v8, v7, -0x1

    iput v8, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iput v7, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/16 v7, 0x40

    if-ne v1, v7, :cond_4

    const/16 v1, 0x94

    return v1

    :cond_4
    const/16 v7, 0x75

    const/16 v8, 0x5c

    if-ne v1, v8, :cond_7

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v7, :cond_5

    iput v3, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    const/16 v1, 0x5c

    const/4 v9, 0x0

    :cond_6
    :goto_0
    const/4 v10, 0x0

    goto :goto_1

    :cond_7
    int-to-char v9, v1

    invoke-static {v9}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v9

    if-eqz v9, :cond_6

    iput v3, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_0

    :goto_1
    const/16 v11, 0x27

    const/4 v12, 0x4

    if-eqz v9, :cond_17

    move v1, v10

    :goto_2
    if-eqz v10, :cond_b

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_3
    if-eq v4, v12, :cond_9

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v9

    invoke-static {v9, v6}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v6

    if-gez v6, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    if-gez v6, :cond_a

    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v3, "msg.invalid.escape"

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_a
    invoke-direct {v0, v6}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v10, 0x0

    goto :goto_2

    :cond_b
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    if-ne v4, v8, :cond_d

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v7, :cond_c

    const/4 v1, 0x1

    const/4 v10, 0x1

    goto :goto_2

    :cond_c
    iget-object v3, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v4, "msg.illegal.character"

    invoke-virtual {v3, v4, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;I)V

    return v2

    :cond_d
    if-eq v4, v2, :cond_f

    const v6, 0xfeff

    if-eq v4, v6, :cond_f

    int-to-char v6, v4

    invoke-static {v6}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_5

    :cond_e
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_2

    :cond_f
    :goto_5
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_15

    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v1, v1, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v1

    iget-object v3, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v3}, Lorg/mozilla/javascript/Parser;->inUseStrictDirective()Z

    move-result v3

    invoke-static {v2, v1, v3}, Lorg/mozilla/javascript/TokenStream;->stringToKeyword(Ljava/lang/String;IZ)I

    move-result v1

    if-eqz v1, :cond_16

    const/16 v3, 0x9a

    if-eq v1, v3, :cond_10

    const/16 v3, 0x49

    if-ne v1, v3, :cond_12

    :cond_10
    iget-object v3, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v3, v3, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v3

    const/16 v4, 0xaa

    if-ge v3, v4, :cond_12

    const/16 v3, 0x9a

    if-ne v1, v3, :cond_11

    const-string v1, "let"

    goto :goto_6

    :cond_11
    const-string v1, "yield"

    :goto_6
    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v1, 0x27

    :cond_12
    iget-object v3, v0, Lorg/mozilla/javascript/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v3, 0x80

    if-eq v1, v3, :cond_13

    return v1

    :cond_13
    iget-object v3, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v3, v3, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_14

    return v1

    :cond_14
    iget-object v3, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v3, v3, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->isReservedKeywordAsIdentifier()Z

    move-result v3

    if-nez v3, :cond_16

    return v1

    :cond_15
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v1, v1, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v1

    iget-object v3, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v3}, Lorg/mozilla/javascript/Parser;->inUseStrictDirective()Z

    move-result v3

    invoke-static {v2, v1, v3}, Lorg/mozilla/javascript/TokenStream;->isKeyword(Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {v2}, Lorg/mozilla/javascript/TokenStream;->convertLastCharToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_16
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    return v11

    :cond_17
    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v9

    const/16 v10, 0x10

    const/16 v13, 0x78

    const/4 v14, 0x2

    const/16 v7, 0x2e

    const/16 v15, 0x30

    if-nez v9, :cond_57

    if-ne v1, v7, :cond_18

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v9

    invoke-static {v9}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v9

    if-eqz v9, :cond_18

    goto/16 :goto_12

    :cond_18
    const/16 v9, 0x22

    if-eq v1, v9, :cond_47

    if-eq v1, v11, :cond_47

    const/16 v9, 0x60

    if-ne v1, v9, :cond_19

    goto/16 :goto_b

    :cond_19
    const/16 v9, 0x2f

    const/16 v11, 0x21

    const/16 v13, 0x3d

    if-eq v1, v11, :cond_44

    const/16 v15, 0x5b

    if-eq v1, v15, :cond_43

    const/16 v15, 0x25

    if-eq v1, v15, :cond_41

    const/16 v15, 0x26

    if-eq v1, v15, :cond_3e

    const/16 v15, 0x5d

    if-eq v1, v15, :cond_3d

    const/16 v15, 0x5e

    if-eq v1, v15, :cond_3b

    const/16 v4, 0x3e

    const/16 v15, 0xa2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    iget-object v3, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v4, "msg.illegal.character"

    invoke-virtual {v3, v4, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;I)V

    return v2

    :pswitch_0
    const/16 v1, 0x1b

    return v1

    :pswitch_1
    const/16 v1, 0x57

    return v1

    :pswitch_2
    const/16 v1, 0x7c

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v1, 0x69

    return v1

    :cond_1a
    invoke-direct {v0, v13}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    return v8

    :cond_1b
    const/16 v1, 0x9

    return v1

    :pswitch_3
    const/16 v1, 0x56

    return v1

    :pswitch_4
    const/16 v1, 0x67

    return v1

    :pswitch_5
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-direct {v0, v13}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/16 v1, 0x61

    return v1

    :cond_1c
    const/16 v1, 0x14

    return v1

    :cond_1d
    invoke-direct {v0, v13}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/16 v1, 0x60

    return v1

    :cond_1e
    const/16 v1, 0x13

    return v1

    :cond_1f
    invoke-direct {v0, v13}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_20

    const/16 v1, 0x11

    return v1

    :cond_20
    return v10

    :pswitch_6
    invoke-direct {v0, v13}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-direct {v0, v13}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_21

    return v7

    :cond_21
    const/16 v1, 0xc

    return v1

    :cond_22
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v1, 0xa5

    return v1

    :cond_23
    const/16 v1, 0x5b

    return v1

    :pswitch_7
    invoke-direct {v0, v11}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_24

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr v1, v12

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->HTML:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return v15

    :cond_24
    invoke-direct {v0, v6}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    :cond_25
    invoke-direct {v0, v11}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    :cond_26
    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-direct {v0, v13}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_27

    const/16 v1, 0x5f

    return v1

    :cond_27
    const/16 v1, 0x12

    return v1

    :cond_28
    invoke-direct {v0, v13}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_29

    const/16 v1, 0xf

    return v1

    :cond_29
    const/16 v1, 0xe

    return v1

    :pswitch_8
    const/16 v1, 0x53

    return v1

    :pswitch_9
    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/16 v1, 0x91

    return v1

    :cond_2a
    const/16 v1, 0x68

    return v1

    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->markCommentStart()V

    invoke-direct {v0, v9}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr v1, v14

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->LINE:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return v15

    :cond_2b
    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_31

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr v1, v14

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->JSDOC:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    :goto_7
    const/4 v1, 0x1

    goto :goto_9

    :cond_2c
    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->BLOCK_COMMENT:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    :goto_8
    const/4 v1, 0x0

    :cond_2d
    :goto_9
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    if-ne v4, v2, :cond_2e

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr v1, v5

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.unterminated.comment"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v15

    :cond_2e
    const/16 v6, 0x2a

    if-ne v4, v6, :cond_2f

    goto :goto_7

    :cond_2f
    if-ne v4, v9, :cond_30

    if-eqz v1, :cond_2d

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return v15

    :cond_30
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    goto :goto_8

    :cond_31
    invoke-direct {v0, v13}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_32

    const/16 v1, 0x65

    return v1

    :cond_32
    const/16 v1, 0x18

    return v1

    :pswitch_b
    invoke-direct {v0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_33

    const/16 v1, 0x90

    return v1

    :cond_33
    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_34

    const/16 v1, 0x93

    return v1

    :cond_34
    const/16 v1, 0x6d

    return v1

    :pswitch_c
    invoke-direct {v0, v13}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x63

    goto :goto_a

    :cond_35
    invoke-direct {v0, v6}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-boolean v1, v0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    if-nez v1, :cond_36

    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v1, "--"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->markCommentStart(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->HTML:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return v15

    :cond_36
    const/16 v1, 0x6c

    goto :goto_a

    :cond_37
    const/16 v1, 0x16

    :goto_a
    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    return v1

    :pswitch_d
    const/16 v1, 0x5a

    return v1

    :pswitch_e
    invoke-direct {v0, v13}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_38

    const/16 v1, 0x62

    return v1

    :cond_38
    const/16 v1, 0x2b

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_39

    const/16 v1, 0x6b

    return v1

    :cond_39
    const/16 v1, 0x15

    return v1

    :pswitch_f
    invoke-direct {v0, v13}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    const/16 v1, 0x64

    return v1

    :cond_3a
    const/16 v1, 0x17

    return v1

    :pswitch_10
    const/16 v1, 0x59

    return v1

    :pswitch_11
    const/16 v1, 0x58

    return v1

    :cond_3b
    invoke-direct {v0, v13}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/16 v1, 0x5d

    return v1

    :cond_3c
    return v4

    :cond_3d
    const/16 v1, 0x55

    return v1

    :cond_3e
    const/16 v1, 0x26

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    const/16 v1, 0x6a

    return v1

    :cond_3f
    invoke-direct {v0, v13}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_40

    const/16 v1, 0x5e

    return v1

    :cond_40
    const/16 v1, 0xb

    return v1

    :cond_41
    invoke-direct {v0, v13}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_42

    const/16 v1, 0x66

    return v1

    :cond_42
    const/16 v1, 0x19

    return v1

    :cond_43
    const/16 v1, 0x54

    return v1

    :cond_44
    invoke-direct {v0, v13}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-direct {v0, v13}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_45

    return v9

    :cond_45
    const/16 v1, 0xd

    return v1

    :cond_46
    const/16 v1, 0x1a

    return v1

    :cond_47
    :goto_b
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->quoteChar:I

    iput v3, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    :goto_c
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->getChar(Z)I

    move-result v1

    :goto_d
    iget v5, v0, Lorg/mozilla/javascript/TokenStream;->quoteChar:I

    if-eq v1, v5, :cond_56

    if-eq v1, v4, :cond_55

    if-ne v1, v2, :cond_48

    goto/16 :goto_11

    :cond_48
    if-ne v1, v8, :cond_4a

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-eq v1, v4, :cond_54

    const/16 v5, 0x62

    if-eq v1, v5, :cond_53

    const/16 v5, 0x66

    if-eq v1, v5, :cond_52

    const/16 v5, 0x6e

    if-eq v1, v5, :cond_51

    const/16 v5, 0x72

    if-eq v1, v5, :cond_50

    if-eq v1, v13, :cond_4e

    packed-switch v1, :pswitch_data_3

    if-gt v15, v1, :cond_4a

    const/16 v5, 0x38

    if-ge v1, v5, :cond_4a

    add-int/lit8 v1, v1, -0x30

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v6

    if-gt v15, v6, :cond_49

    if-ge v6, v5, :cond_49

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v6

    sub-int/2addr v1, v15

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v6

    if-gt v15, v6, :cond_49

    if-ge v6, v5, :cond_49

    const/16 v5, 0x1f

    if-gt v1, v5, :cond_49

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v6

    sub-int/2addr v1, v15

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v6

    :cond_49
    invoke-direct {v0, v6}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    :cond_4a
    :goto_e
    const/16 v5, 0x75

    goto/16 :goto_10

    :pswitch_12
    const/16 v1, 0xb

    goto :goto_e

    :pswitch_13
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/16 v5, 0x75

    invoke-direct {v0, v5}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_f
    if-eq v7, v12, :cond_4c

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v9

    invoke-static {v9, v6}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v6

    if-gez v6, :cond_4b

    move v1, v9

    goto :goto_d

    :cond_4b
    invoke-direct {v0, v9}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_4c
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    :cond_4d
    move v1, v6

    goto :goto_10

    :pswitch_14
    const/16 v5, 0x75

    const/16 v1, 0x9

    goto :goto_10

    :cond_4e
    const/16 v5, 0x75

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-static {v1, v3}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v6

    if-gez v6, :cond_4f

    invoke-direct {v0, v13}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto/16 :goto_d

    :cond_4f
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v7

    invoke-static {v7, v6}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v6

    if-gez v6, :cond_4d

    invoke-direct {v0, v13}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    move v1, v7

    goto/16 :goto_d

    :cond_50
    const/16 v5, 0x75

    const/16 v1, 0xd

    goto :goto_10

    :cond_51
    const/16 v5, 0x75

    const/16 v1, 0xa

    goto :goto_10

    :cond_52
    const/16 v5, 0x75

    const/16 v1, 0xc

    goto :goto_10

    :cond_53
    const/16 v5, 0x75

    const/16 v1, 0x8

    goto :goto_10

    :cond_54
    const/16 v5, 0x75

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    goto/16 :goto_d

    :goto_10
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto/16 :goto_c

    :cond_55
    :goto_11
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v3, "msg.unterminated.string.lit"

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_56
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/mozilla/javascript/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v1, 0x29

    return v1

    :cond_57
    :goto_12
    iput v3, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    iput-boolean v3, v0, Lorg/mozilla/javascript/TokenStream;->isBinary:Z

    iput-boolean v3, v0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    iput-boolean v3, v0, Lorg/mozilla/javascript/TokenStream;->isOldOctal:Z

    iput-boolean v3, v0, Lorg/mozilla/javascript/TokenStream;->isHex:Z

    iget-object v8, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v8, v8, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v8}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v8

    const/16 v9, 0xc8

    if-lt v8, v9, :cond_58

    const/4 v8, 0x1

    goto :goto_13

    :cond_58
    const/4 v8, 0x0

    :goto_13
    if-ne v1, v15, :cond_5f

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-eq v1, v13, :cond_60

    const/16 v9, 0x58

    if-ne v1, v9, :cond_59

    goto :goto_15

    :cond_59
    if-eqz v8, :cond_5b

    const/16 v9, 0x6f

    if-eq v1, v9, :cond_5a

    const/16 v9, 0x4f

    if-ne v1, v9, :cond_5b

    :cond_5a
    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    :goto_14
    const/16 v8, 0x8

    goto :goto_16

    :cond_5b
    if-eqz v8, :cond_5d

    const/16 v8, 0x62

    if-eq v1, v8, :cond_5c

    const/16 v8, 0x42

    if-ne v1, v8, :cond_5d

    :cond_5c
    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->isBinary:Z

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/4 v8, 0x2

    goto :goto_16

    :cond_5d
    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v8

    if-eqz v8, :cond_5e

    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->isOldOctal:Z

    goto :goto_14

    :cond_5e
    invoke-direct {v0, v15}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    :cond_5f
    const/16 v8, 0xa

    goto :goto_16

    :cond_60
    :goto_15
    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->isHex:Z

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v8, 0x10

    :goto_16
    const-string v9, "msg.caught.nfe"

    if-ne v8, v10, :cond_61

    const/4 v10, 0x1

    :goto_17
    invoke-static {v1, v3}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v11

    if-ltz v11, :cond_66

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/4 v10, 0x0

    goto :goto_17

    :cond_61
    const/4 v10, 0x1

    :goto_18
    if-gt v15, v1, :cond_66

    const/16 v11, 0x39

    if-gt v1, v11, :cond_66

    const/16 v11, 0x8

    const/16 v12, 0x38

    if-ne v8, v11, :cond_64

    if-lt v1, v12, :cond_64

    iget-boolean v8, v0, Lorg/mozilla/javascript/TokenStream;->isOldOctal:Z

    if-eqz v8, :cond_63

    iget-object v8, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    if-ne v1, v12, :cond_62

    const-string v10, "8"

    goto :goto_19

    :cond_62
    const-string v10, "9"

    :goto_19
    const-string v13, "msg.bad.octal.literal"

    invoke-virtual {v8, v13, v10}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0xa

    goto :goto_1a

    :cond_63
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v1, v9}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_64
    if-ne v8, v14, :cond_65

    const/16 v10, 0x32

    if-lt v1, v10, :cond_65

    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v1, v9}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_65
    :goto_1a
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/4 v10, 0x0

    goto :goto_18

    :cond_66
    if-eqz v10, :cond_68

    iget-boolean v10, v0, Lorg/mozilla/javascript/TokenStream;->isBinary:Z

    if-nez v10, :cond_67

    iget-boolean v10, v0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    if-nez v10, :cond_67

    iget-boolean v10, v0, Lorg/mozilla/javascript/TokenStream;->isHex:Z

    if-eqz v10, :cond_68

    :cond_67
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v1, v9}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_68
    if-ne v8, v4, :cond_71

    if-eq v1, v7, :cond_69

    const/16 v10, 0x65

    if-eq v1, v10, :cond_69

    const/16 v10, 0x45

    if-ne v1, v10, :cond_71

    :cond_69
    if-ne v1, v7, :cond_6b

    :cond_6a
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v5

    if-nez v5, :cond_6a

    :cond_6b
    const/16 v5, 0x65

    if-eq v1, v5, :cond_6d

    const/16 v5, 0x45

    if-ne v1, v5, :cond_6c

    goto :goto_1c

    :cond_6c
    :goto_1b
    const/4 v5, 0x0

    goto :goto_1d

    :cond_6d
    :goto_1c
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v5, 0x2b

    if-eq v1, v5, :cond_6e

    if-ne v1, v6, :cond_6f

    :cond_6e
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    :cond_6f
    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v5

    if-nez v5, :cond_70

    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v3, "msg.missing.exponent"

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_70
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v5

    if-nez v5, :cond_70

    goto :goto_1b

    :cond_71
    :goto_1d
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    if-ne v8, v4, :cond_72

    if-nez v5, :cond_72

    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1e

    :catch_0
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v1, v9}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_72
    invoke-static {v1, v3, v8}, Lorg/mozilla/javascript/ScriptRuntime;->stringPrefixToNumber(Ljava/lang/String;II)D

    move-result-wide v1

    :goto_1e
    iput-wide v1, v0, Lorg/mozilla/javascript/TokenStream;->number:D

    const/16 v1, 0x28

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x74
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getTokenBeg()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    return v0
.end method

.method public getTokenEnd()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return v0
.end method

.method public getTokenLength()I
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final isNumberBinary()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->isBinary:Z

    return v0
.end method

.method public final isNumberHex()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->isHex:Z

    return v0
.end method

.method public final isNumberOctal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    return v0
.end method

.method public final isNumberOldOctal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->isOldOctal:Z

    return v0
.end method

.method public isXMLAttribute()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    return v0
.end method

.method public readAndClearRegExpFlags()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->regExpFlags:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->regExpFlags:Ljava/lang/String;

    return-object v0
.end method

.method public readRegExp(I)V
    .locals 8

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/16 v2, 0x65

    const-string v3, "msg.unterminated.re.lit"

    const/4 v4, 0x1

    if-ne p1, v2, :cond_0

    const/16 p1, 0x3d

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x18

    if-eq p1, v2, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result p1

    const/16 v2, 0x2a

    if-ne p1, v2, :cond_2

    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr p1, v4

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v2

    const/16 v5, 0x2f

    if-ne v2, v5, :cond_9

    if-eqz p1, :cond_3

    goto :goto_4

    :cond_3
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    :goto_2
    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_3
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_2

    :cond_4
    const/16 v2, 0x69

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    const/16 v2, 0x6d

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    const/16 v2, 0x79

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.invalid.re.flag"

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_8
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    invoke-direct {v0, v2, v1, p1}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->regExpFlags:Ljava/lang/String;

    return-void

    :cond_9
    :goto_4
    const/16 v5, 0xa

    if-eq v2, v5, :cond_f

    const/4 v6, -0x1

    if-ne v2, v6, :cond_a

    goto :goto_6

    :cond_a
    const/16 v7, 0x5c

    if-ne v2, v7, :cond_c

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v2

    if-eq v2, v5, :cond_b

    if-ne v2, v6, :cond_e

    :cond_b
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr p1, v4

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-void

    :cond_c
    const/16 v5, 0x5b

    if-ne v2, v5, :cond_d

    const/4 p1, 0x1

    goto :goto_5

    :cond_d
    const/16 v5, 0x5d

    if-ne v2, v5, :cond_e

    const/4 p1, 0x0

    :cond_e
    :goto_5
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto/16 :goto_1

    :cond_f
    :goto_6
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr p1, v4

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-void
.end method

.method public tokenToString(I)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method
