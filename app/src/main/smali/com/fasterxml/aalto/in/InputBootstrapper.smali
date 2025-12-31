.class public abstract Lcom/fasterxml/aalto/in/InputBootstrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final _config:Lcom/fasterxml/aalto/in/ReaderConfig;

.field protected _inputProcessed:I

.field protected _inputRow:I

.field protected _inputRowStart:I

.field mDeclaredXmlVersion:I

.field mFoundEncoding:Ljava/lang/String;

.field final mKeyword:[C

.field mStandalone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fasterxml/aalto/in/ReaderConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputProcessed:I

    iput v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputRow:I

    iput v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_inputRowStart:I

    iput v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mDeclaredXmlVersion:I

    iput-object p1, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->allocSmallCBuffer(I)[C

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mKeyword:[C

    return-void
.end method

.method private final getWsOrChar(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->getNext()I

    move-result v0

    if-ne v0, p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x20

    if-le v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "; expected either \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' or white space"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportUnexpectedChar(ILjava/lang/String;)V

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/16 p1, 0xd

    if-ne v0, p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->pushback()V

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/InputBootstrapper;->getNextAfterWs(Z)I

    move-result p1

    return p1
.end method

.method private final handleEq(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->getNextAfterWs(Z)I

    move-result v1

    const/16 v2, 0x3d

    const-string v3, "\'"

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "; expected \'=\' after \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportUnexpectedChar(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->getNextAfterWs(Z)I

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "; expected a quote character enclosing value for \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportUnexpectedChar(ILjava/lang/String;)V

    :cond_1
    return v0
.end method

.method private final readXmlEncoding()Ljava/lang/String;
    .locals 4

    const-string v0, "encoding"

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->checkKeyword(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportUnexpectedChar(ILjava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->handleEq(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mKeyword:[C

    invoke-virtual {p0, v2, v1}, Lcom/fasterxml/aalto/in/InputBootstrapper;->readQuotedValue([CI)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportPseudoAttrProblem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/String;

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mKeyword:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mKeyword:[C

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private final readXmlStandalone()Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, "standalone"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->checkKeyword(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportUnexpectedChar(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->handleEq(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mKeyword:[C

    .line 17
    .line 18
    invoke-virtual {p0, v2, v1}, Lcom/fasterxml/aalto/in/InputBootstrapper;->readQuotedValue([CI)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-string v2, "yes"

    .line 23
    .line 24
    const-string v3, "no"

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    const/4 v5, 0x2

    .line 28
    const/4 v6, 0x0

    .line 29
    if-ne v1, v5, :cond_1

    .line 30
    .line 31
    iget-object v5, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mKeyword:[C

    .line 32
    .line 33
    aget-char v7, v5, v6

    .line 34
    .line 35
    const/16 v8, 0x6e

    .line 36
    .line 37
    if-ne v7, v8, :cond_2

    .line 38
    .line 39
    aget-char v4, v5, v4

    .line 40
    .line 41
    const/16 v5, 0x6f

    .line 42
    .line 43
    if-ne v4, v5, :cond_2

    .line 44
    .line 45
    return-object v3

    .line 46
    :cond_1
    const/4 v7, 0x3

    .line 47
    if-ne v1, v7, :cond_2

    .line 48
    .line 49
    iget-object v7, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mKeyword:[C

    .line 50
    .line 51
    aget-char v8, v7, v6

    .line 52
    .line 53
    const/16 v9, 0x79

    .line 54
    .line 55
    if-ne v8, v9, :cond_2

    .line 56
    .line 57
    aget-char v4, v7, v4

    .line 58
    .line 59
    const/16 v8, 0x65

    .line 60
    .line 61
    if-ne v4, v8, :cond_2

    .line 62
    .line 63
    aget-char v4, v7, v5

    .line 64
    .line 65
    const/16 v5, 0x73

    .line 66
    .line 67
    if-ne v4, v5, :cond_2

    .line 68
    .line 69
    return-object v2

    .line 70
    :cond_2
    const-string v4, "\'"

    .line 71
    .line 72
    if-gez v1, :cond_3

    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v4, Ljava/lang/String;

    .line 80
    .line 81
    iget-object v5, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mKeyword:[C

    .line 82
    .line 83
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    .line 84
    .line 85
    .line 86
    const-string v5, "[..]\'"

    .line 87
    .line 88
    invoke-static {v4, v5, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    if-nez v1, :cond_4

    .line 94
    .line 95
    const-string v1, "<empty>"

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance v7, Ljava/lang/String;

    .line 104
    .line 105
    iget-object v8, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mKeyword:[C

    .line 106
    .line 107
    invoke-direct {v7, v8, v6, v1}, Ljava/lang/String;-><init>([CII)V

    .line 108
    .line 109
    .line 110
    invoke-static {v7, v4, v5}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    :goto_0
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportPseudoAttrProblem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-object v1
.end method

.method private final readXmlVersion()I
    .locals 7

    .line 1
    const-string v0, "version"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->checkKeyword(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportUnexpectedChar(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->handleEq(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mKeyword:[C

    .line 17
    .line 18
    invoke-virtual {p0, v2, v1}, Lcom/fasterxml/aalto/in/InputBootstrapper;->readQuotedValue([CI)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x3

    .line 23
    const/4 v3, 0x0

    .line 24
    if-ne v1, v2, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mKeyword:[C

    .line 27
    .line 28
    aget-char v4, v2, v3

    .line 29
    .line 30
    const/16 v5, 0x31

    .line 31
    .line 32
    if-ne v4, v5, :cond_2

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    aget-char v4, v2, v4

    .line 36
    .line 37
    const/16 v6, 0x2e

    .line 38
    .line 39
    if-ne v4, v6, :cond_2

    .line 40
    .line 41
    const/4 v4, 0x2

    .line 42
    aget-char v2, v2, v4

    .line 43
    .line 44
    const/16 v4, 0x30

    .line 45
    .line 46
    if-ne v2, v4, :cond_1

    .line 47
    .line 48
    const/16 v0, 0x100

    .line 49
    .line 50
    return v0

    .line 51
    :cond_1
    if-ne v2, v5, :cond_2

    .line 52
    .line 53
    const/16 v0, 0x110

    .line 54
    .line 55
    return v0

    .line 56
    :cond_2
    const-string v2, "\'"

    .line 57
    .line 58
    if-gez v1, :cond_3

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v2, Ljava/lang/String;

    .line 66
    .line 67
    iget-object v4, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mKeyword:[C

    .line 68
    .line 69
    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([C)V

    .line 70
    .line 71
    .line 72
    const-string v4, "[..]\'"

    .line 73
    .line 74
    invoke-static {v2, v4, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    if-nez v1, :cond_4

    .line 80
    .line 81
    const-string v1, "<empty>"

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v5, Ljava/lang/String;

    .line 90
    .line 91
    iget-object v6, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mKeyword:[C

    .line 92
    .line 93
    invoke-direct {v5, v6, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 94
    .line 95
    .line 96
    invoke-static {v5, v2, v4}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    :goto_0
    const-string v2, "1.0"

    .line 101
    .line 102
    const-string v4, "1.1"

    .line 103
    .line 104
    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportPseudoAttrProblem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return v3
.end method


# virtual methods
.method public abstract bootstrap()Lcom/fasterxml/aalto/in/XmlScanner;
.end method

.method public abstract checkKeyword(Ljava/lang/String;)I
.end method

.method public abstract getLocation()Lorg/apache/poi/javax/xml/stream/Location;
.end method

.method public abstract getNext()I
.end method

.method public abstract getNextAfterWs(Z)I
.end method

.method public abstract pushback()V
.end method

.method public abstract readQuotedValue([CI)I
.end method

.method public readXmlDeclaration()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->getNextAfterWs(Z)I

    move-result v0

    const/16 v1, 0x76

    const/16 v2, 0x3f

    if-eq v0, v1, :cond_0

    const-string v1, "; expected keyword \'version\'"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportUnexpectedChar(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->readXmlVersion()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mDeclaredXmlVersion:I

    invoke-direct {p0, v2}, Lcom/fasterxml/aalto/in/InputBootstrapper;->getWsOrChar(I)I

    move-result v0

    :goto_0
    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->readXmlEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mFoundEncoding:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/fasterxml/aalto/in/InputBootstrapper;->getWsOrChar(I)I

    move-result v0

    :cond_1
    const/16 v1, 0x73

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->readXmlStandalone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/InputBootstrapper;->mStandalone:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/fasterxml/aalto/in/InputBootstrapper;->getWsOrChar(I)I

    move-result v0

    :cond_2
    const-string v1, "; expected \"?>\" end marker"

    if-eq v0, v2, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportUnexpectedChar(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->getNext()I

    move-result v0

    const/16 v2, 0x3e

    if-eq v0, v2, :cond_4

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportUnexpectedChar(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public reportEof()V
    .locals 1

    const-string v0, "Unexpected end-of-input in xml declaration"

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportXmlProblem(Ljava/lang/String;)V

    return-void
.end method

.method public reportNull()V
    .locals 1

    const-string v0, "Illegal null byte/char in input stream"

    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportXmlProblem(Ljava/lang/String;)V

    return-void
.end method

.method public final reportPseudoAttrProblem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const-string p3, ""

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "; expected \""

    .line 7
    .line 8
    const-string v1, "\" or \""

    .line 9
    .line 10
    const-string v2, "\""

    .line 11
    .line 12
    invoke-static {v0, p3, v1, p4, v2}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    :goto_0
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result p4

    .line 22
    if-nez p4, :cond_2

    .line 23
    .line 24
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v0, "Missing XML pseudo-attribute \'"

    .line 27
    .line 28
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, "\' value"

    .line 35
    .line 36
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p4

    .line 46
    invoke-virtual {p0, p4}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportXmlProblem(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    const-string p4, "Invalid XML pseudo-attribute \'"

    .line 50
    .line 51
    const-string v0, "\' value "

    .line 52
    .line 53
    invoke-static {p4, p1, v0, p2, p3}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportXmlProblem(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public reportUnexpectedChar(ILjava/lang/String;)V
    .locals 4

    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    const-string v2, ")"

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected character (CTRL-CHAR, code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected character \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\' (code "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/InputBootstrapper;->reportXmlProblem(Ljava/lang/String;)V

    return-void
.end method

.method public reportXmlProblem(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/fasterxml/aalto/WFCException;

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/InputBootstrapper;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/aalto/WFCException;-><init>(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v0
.end method
