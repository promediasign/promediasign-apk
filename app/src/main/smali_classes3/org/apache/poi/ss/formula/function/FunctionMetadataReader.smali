.class final Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DIGIT_ENDING_FUNCTION_NAMES:[Ljava/lang/String;

.field private static final DIGIT_ENDING_FUNCTION_NAMES_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final SPACE_DELIM_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAB_DELIM_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "\t"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->TAB_DELIM_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, " "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->SPACE_DELIM_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->EMPTY_BYTE_ARRAY:[B

    const-string v5, "SUMX2MY2"

    const-string v6, "SUMX2PY2"

    const-string v1, "LOG10"

    const-string v2, "ATAN2"

    const-string v3, "DAYS360"

    const-string v4, "SUMXMY2"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->DIGIT_ENDING_FUNCTION_NAMES:[Ljava/lang/String;

    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->DIGIT_ENDING_FUNCTION_NAMES_SET:Ljava/util/Set;

    return-void
.end method

.method public static createRegistry()Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;
    .locals 7

    :try_start_0
    const-class v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;

    const-string v1, "functionMetadata.txt"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;

    const/16 v3, 0x190

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;-><init>(I)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->build()Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_1

    :cond_1
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x23

    if-ne v4, v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v2, v3}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->processLine(Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :goto_1
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "resource \'functionMetadata.txt\' not found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static isDash(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 7
    .line 8
    const-string v1, "Value \'"

    .line 9
    .line 10
    const-string v2, "\' could not be parsed as an integer"

    .line 11
    .line 12
    invoke-static {v1, p0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method private static parseOperandTypeCode(Ljava/lang/String;)B
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x41

    .line 14
    .line 15
    if-eq v1, v2, :cond_2

    .line 16
    .line 17
    const/16 v2, 0x52

    .line 18
    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    const/16 v2, 0x56

    .line 22
    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    const/16 p0, 0x20

    .line 26
    .line 27
    return p0

    .line 28
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string v2, "Unexpected operand type code \'"

    .line 31
    .line 32
    const-string v3, "\' ("

    .line 33
    .line 34
    invoke-static {v2, p0, v3}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, ")"

    .line 46
    .line 47
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v1

    .line 58
    :cond_1
    return v0

    .line 59
    :cond_2
    const/16 p0, 0x40

    .line 60
    .line 61
    return p0

    .line 62
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 63
    .line 64
    const-string v1, "Bad operand type code format \'"

    .line 65
    .line 66
    const-string v2, "\' expected single char"

    .line 67
    .line 68
    invoke-static {v1, p0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0
.end method

.method private static parseOperandTypeCodes(Ljava/lang/String;)[B
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->isDash(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    :cond_1
    sget-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->SPACE_DELIM_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p0, v1

    const-string v2, "..."

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->parseOperandTypeCode(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private static parseReturnTypeCode(Ljava/lang/String;)B
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->parseOperandTypeCode(Ljava/lang/String;)B

    move-result p0

    return p0
.end method

.method private static processLine(Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;Ljava/lang/String;)V
    .locals 10

    .line 1
    sget-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->TAB_DELIM_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-virtual {v0, p1, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    array-length v1, v0

    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    aget-object v1, v0, p1

    .line 15
    .line 16
    invoke-static {v1}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->parseInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v1, 0x1

    .line 21
    aget-object v4, v0, v1

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    aget-object v2, v0, v2

    .line 25
    .line 26
    invoke-static {v2}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->parseInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const/4 v2, 0x3

    .line 31
    aget-object v2, v0, v2

    .line 32
    .line 33
    invoke-static {v2}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->parseInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    const/4 v2, 0x4

    .line 38
    aget-object v2, v0, v2

    .line 39
    .line 40
    invoke-static {v2}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->parseReturnTypeCode(Ljava/lang/String;)B

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    const/4 v2, 0x5

    .line 45
    aget-object v2, v0, v2

    .line 46
    .line 47
    invoke-static {v2}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->parseOperandTypeCodes(Ljava/lang/String;)[B

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    const/4 v2, 0x7

    .line 52
    aget-object v0, v0, v2

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-lez v0, :cond_0

    .line 59
    .line 60
    const/4 v9, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v9, 0x0

    .line 63
    :goto_0
    invoke-static {v4}, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->validateFunctionName(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    move-object v2, p0

    .line 67
    invoke-virtual/range {v2 .. v9}, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->add(ILjava/lang/String;IIB[BZ)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 72
    .line 73
    const-string v0, "Bad line format \'"

    .line 74
    .line 75
    const-string v1, "\' - expected 8 data fields"

    .line 76
    .line 77
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method private static validateFunctionName(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    :goto_0
    if-ltz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    :goto_1
    sget-object v0, Lorg/apache/poi/ss/formula/function/FunctionMetadataReader;->DIGIT_ENDING_FUNCTION_NAMES_SET:Ljava/util/Set;

    .line 35
    .line 36
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 44
    .line 45
    const-string v1, "Invalid function name \'"

    .line 46
    .line 47
    const-string v2, "\' (is footnote number incorrectly appended)"

    .line 48
    .line 49
    invoke-static {v1, p0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method
