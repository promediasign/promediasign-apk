.class final Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;
.super Lorg/apache/xmlbeans/impl/store/Saver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextSaver"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _buf:[C

.field private _cdataEntityCountThreshold:I

.field private _cdataLengthThreshold:I

.field private _free:I

.field private _in:I

.field private _isPrettyPrint:Z

.field private _lastEmitCch:I

.field private _lastEmitIn:I

.field private _out:I

.field private _useCDataBookmarks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Saver;->class$org$apache$xmlbeans$impl$store$Saver:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.Saver"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Saver;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Saver;->class$org$apache$xmlbeans$impl$store$Saver:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saver;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x20

    .line 5
    .line 6
    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_cdataLengthThreshold:I

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_cdataEntityCountThreshold:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_useCDataBookmarks:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_isPrettyPrint:Z

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    const-string v2, "SAVE_NO_XML_DECL"

    .line 20
    .line 21
    invoke-virtual {p2, v2}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    :goto_0
    if-eqz p2, :cond_1

    .line 31
    .line 32
    const-string v3, "SAVE_CDATA_LENGTH_THRESHOLD"

    .line 33
    .line 34
    invoke-virtual {p2, v3}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-virtual {p2, v3}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iput v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_cdataLengthThreshold:I

    .line 51
    .line 52
    :cond_1
    if-eqz p2, :cond_2

    .line 53
    .line 54
    const-string v3, "SAVE_CDATA_ENTITY_COUNT_THRESHOLD"

    .line 55
    .line 56
    invoke-virtual {p2, v3}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    invoke-virtual {p2, v3}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    iput v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_cdataEntityCountThreshold:I

    .line 73
    .line 74
    :cond_2
    if-eqz p2, :cond_3

    .line 75
    .line 76
    const-string v3, "LOAD_SAVE_CDATA_BOOKMARKS"

    .line 77
    .line 78
    invoke-virtual {p2, v3}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    iput-boolean v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_useCDataBookmarks:Z

    .line 85
    .line 86
    :cond_3
    if-eqz p2, :cond_4

    .line 87
    .line 88
    const-string v3, "SAVE_PRETTY_PRINT"

    .line 89
    .line 90
    invoke-virtual {p2, v3}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-eqz p2, :cond_4

    .line 95
    .line 96
    iput-boolean v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_isPrettyPrint:Z

    .line 97
    .line 98
    :cond_4
    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    .line 99
    .line 100
    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    .line 101
    .line 102
    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    .line 103
    .line 104
    sget-boolean p2, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    .line 105
    .line 106
    if-nez p2, :cond_5

    .line 107
    .line 108
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    .line 109
    .line 110
    if-eqz p2, :cond_5

    .line 111
    .line 112
    array-length p2, p2

    .line 113
    :cond_5
    if-eqz p3, :cond_8

    .line 114
    .line 115
    if-nez v2, :cond_8

    .line 116
    .line 117
    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->getDocProps(Lorg/apache/xmlbeans/impl/store/Cur;Z)Lorg/apache/xmlbeans/XmlDocumentProperties;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-nez p1, :cond_6

    .line 122
    .line 123
    const/4 p1, 0x0

    .line 124
    goto :goto_1

    .line 125
    :cond_6
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getVersion()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    :goto_1
    if-nez p1, :cond_7

    .line 130
    .line 131
    const-string p1, "1.0"

    .line 132
    .line 133
    :cond_7
    const-string p2, "<?xml version=\""

    .line 134
    .line 135
    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string p1, "\" encoding=\""

    .line 142
    .line 143
    const-string p2, "\"?>"

    .line 144
    .line 145
    invoke-static {p1, p3, p2}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    sget-object p2, Lorg/apache/xmlbeans/impl/store/Saver;->_newLine:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_8
    return-void
.end method

.method private emit(C)V
    .locals 11

    .line 1
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    const-string v1, " _free:"

    const-string v2, " _out:"

    const-string v3, " _in:"

    const-string v4, "_buf.length:"

    if-nez v0, :cond_4

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    if-eqz v5, :cond_4

    iget v6, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    iget v7, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    if-ge v6, v7, :cond_0

    iget v8, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    array-length v9, v5

    sub-int v10, v7, v6

    sub-int/2addr v9, v10

    if-eq v8, v9, :cond_4

    :cond_0
    if-le v6, v7, :cond_1

    iget v8, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    sub-int v9, v6, v7

    if-eq v8, v9, :cond_4

    :cond_1
    if-ne v6, v7, :cond_2

    iget v8, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    array-length v5, v5

    if-eq v8, v5, :cond_4

    :cond_2
    if-ne v6, v7, :cond_3

    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_4
    :goto_0
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->preEmit(I)Z

    iget-object v6, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    iget v7, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    aput-char p1, v6, v7

    add-int/2addr v7, v5

    array-length p1, v6

    rem-int/2addr v7, p1

    iput v7, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    if-nez v0, :cond_9

    if-eqz v6, :cond_9

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    if-ge p1, v7, :cond_5

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    array-length v5, v6

    sub-int v8, v7, p1

    sub-int/2addr v5, v8

    if-eq v0, v5, :cond_9

    :cond_5
    if-le p1, v7, :cond_6

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    sub-int v5, p1, v7

    if-eq v0, v5, :cond_9

    :cond_6
    if-ne p1, v7, :cond_7

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    array-length v5, v6

    if-eq v0, v5, :cond_9

    :cond_7
    if-ne p1, v7, :cond_8

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_9
    :goto_1
    return-void
.end method

.method private emit(CC)V
    .locals 4

    .line 2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->preEmit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    aput-char p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    aput-char p2, v0, v1

    add-int/lit8 v1, v1, 0x1

    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    sget-boolean p1, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    if-ge p1, v1, :cond_1

    iget p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    array-length v2, v0

    sub-int v3, v1, p1

    sub-int/2addr v2, v3

    if-eq p2, v2, :cond_5

    :cond_1
    if-le p1, v1, :cond_2

    iget p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    sub-int v2, p1, v1

    if-eq p2, v2, :cond_5

    :cond_2
    if-ne p1, v1, :cond_3

    iget p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    array-length v0, v0

    if-eq p2, v0, :cond_5

    :cond_3
    if-ne p1, v1, :cond_4

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "_buf.length:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " _in:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " _out:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " _free:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_5
    :goto_0
    return-void
.end method

.method private emit(Ljava/lang/String;)V
    .locals 11

    .line 3
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    const-string v1, " _free:"

    const-string v2, " _out:"

    const-string v3, " _in:"

    const-string v4, "_buf.length:"

    if-nez v0, :cond_4

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    if-eqz v5, :cond_4

    iget v6, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    iget v7, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    if-ge v6, v7, :cond_0

    iget v8, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    array-length v9, v5

    sub-int v10, v7, v6

    sub-int/2addr v9, v10

    if-eq v8, v9, :cond_4

    :cond_0
    if-le v6, v7, :cond_1

    iget v8, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    sub-int v9, v6, v7

    if-eq v8, v9, :cond_4

    :cond_1
    if-ne v6, v7, :cond_2

    iget v8, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    array-length v5, v5

    if-eq v8, v5, :cond_4

    :cond_2
    if-ne v6, v7, :cond_3

    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_4
    :goto_0
    const/4 v5, 0x0

    if-nez p1, :cond_5

    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    :goto_1
    invoke-direct {p0, v6}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->preEmit(I)Z

    move-result v7

    if-eqz v7, :cond_6

    return-void

    :cond_6
    iget v7, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    iget v8, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    if-le v7, v8, :cond_8

    iget-object v8, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v9, v8

    sub-int/2addr v9, v7

    if-ge v6, v9, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v5, v9, v8, v7}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v7, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    invoke-virtual {p1, v9, v6, v7, v5}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    add-int/2addr p1, v6

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v5, v5

    rem-int/2addr p1, v5

    :goto_2
    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    goto :goto_4

    :cond_8
    :goto_3
    iget-object v8, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    invoke-virtual {p1, v5, v6, v8, v7}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    add-int/2addr p1, v6

    goto :goto_2

    :goto_4
    if-nez v0, :cond_d

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    if-eqz p1, :cond_d

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    if-ge v0, v5, :cond_9

    iget v6, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    array-length v7, p1

    sub-int v8, v5, v0

    sub-int/2addr v7, v8

    if-eq v6, v7, :cond_d

    :cond_9
    if-le v0, v5, :cond_a

    iget v6, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    sub-int v7, v0, v5

    if-eq v6, v7, :cond_d

    :cond_a
    if-ne v0, v5, :cond_b

    iget v6, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    array-length p1, p1

    if-eq v6, p1, :cond_d

    :cond_b
    if-ne v0, v5, :cond_c

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-nez p1, :cond_c

    goto :goto_5

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_d
    :goto_5
    return-void
.end method

.method private emit(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 7

    .line 4
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isText()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getChars()Ljava/lang/Object;

    move-result-object v0

    iget v2, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->preEmit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    if-le v3, v4, :cond_2

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v5, v4

    sub-int/2addr v5, v3

    if-ge v2, v5, :cond_1

    goto :goto_1

    :cond_1
    iget v6, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    invoke-static {v4, v3, v0, v6, v5}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    add-int/2addr p1, v5

    sub-int v4, v2, v5

    invoke-static {v3, v1, v0, p1, v4}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    add-int/2addr p1, v2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v0, v0

    rem-int/2addr p1, v0

    :goto_0
    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    invoke-static {v1, v3, v0, p1, v2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    add-int/2addr p1, v2

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->preEmit(I)Z

    :goto_2
    return-void
.end method

.method private emitAttrHelper(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emitName(Lorg/apache/poi/javax/xml/namespace/QName;Z)V

    const/16 p1, 0x3d

    const/16 v1, 0x22

    invoke-direct {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(CC)V

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->entitizeAttrValue(Z)V

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    return-void
.end method

.method private emitLiteral(Ljava/lang/String;)V
    .locals 1

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0x22

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x27

    goto :goto_0

    :goto_1
    return-void
.end method

.method private emitName(Lorg/apache/poi/javax/xml/namespace/QName;Z)V
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/store/Saver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Saver;->getUriMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Saver;->getNonDefaultUriMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_7

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    const/16 p2, 0x3a

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    :cond_7
    if-nez v0, :cond_9

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_2
    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    return-void
.end method

.method private emitNamespacesHelper()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->iterateMappings()V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->hasMapping()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->mappingPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->mappingUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emitXmlns(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->nextMapping()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensure(I)I
    .locals 2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->getAvailable()I

    move-result v0

    if-ge v0, p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->process()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    sget-boolean p1, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->getAvailable()I

    move-result p1

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    return v0
.end method

.method private entitizeAttrValue(Z)V
    .locals 4

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitCch:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitIn:I

    :goto_0
    if-lez v0, :cond_7

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    aget-char v2, v2, v1

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1

    const-string v2, "&lt;"

    :goto_1
    invoke-direct {p0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_1
    const/16 v3, 0x26

    if-ne v2, v3, :cond_2

    const-string v2, "&amp;"

    goto :goto_1

    :cond_2
    const/16 v3, 0x22

    if-ne v2, v3, :cond_3

    const-string v2, "&quot;"

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->isEscapedChar(C)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p1, :cond_5

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_replaceChar:Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;

    invoke-virtual {v3, v2}, Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;->getEscapedString(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    :cond_5
    :goto_2
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v2, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private entitizeComment()V
    .locals 9

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitCch:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitIn:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, " "

    const/16 v5, 0x2d

    const/4 v6, 0x1

    if-lez v0, :cond_5

    iget-object v7, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    aget-char v7, v7, v1

    invoke-direct {p0, v7}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->isBadChar(C)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v4, "?"

    invoke-direct {p0, v1, v4}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_1
    if-ne v7, v5, :cond_3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1, v4}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :goto_2
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v4, v4

    if-ne v1, v4, :cond_4

    const/4 v1, 0x0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitIn:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitCch:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v6

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-char v1, v1, v0

    if-ne v1, v5, :cond_6

    invoke-direct {p0, v0, v4}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    :cond_6
    return-void
.end method

.method private entitizeContent(Z)V
    .locals 17

    move-object/from16 v0, p0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget v1, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :goto_0
    iget v1, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitCch:I

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget v2, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitIn:I

    iget-object v3, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    const/16 v9, 0xd

    const/16 v10, 0x26

    const/16 v11, 0x3c

    const/16 v12, 0x3e

    const/16 v13, 0x5d

    const/4 v14, 0x1

    if-lez v1, :cond_9

    iget-object v15, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    aget-char v15, v15, v2

    if-eq v15, v11, :cond_6

    if-ne v15, v10, :cond_3

    goto :goto_3

    :cond_3
    if-ne v7, v13, :cond_5

    if-ne v8, v13, :cond_5

    if-ne v15, v12, :cond_5

    :cond_4
    :goto_2
    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    invoke-direct {v0, v15}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->isBadChar(C)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-direct {v0, v15}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->isEscapedChar(C)Z

    move-result v7

    if-nez v7, :cond_4

    iget-boolean v7, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_isPrettyPrint:Z

    if-nez v7, :cond_7

    if-ne v15, v9, :cond_7

    goto :goto_2

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_8

    const/4 v2, 0x0

    :cond_8
    add-int/lit8 v1, v1, -0x1

    move v7, v8

    move v8, v15

    goto :goto_1

    :cond_9
    if-nez p1, :cond_a

    if-nez v5, :cond_a

    if-nez v6, :cond_a

    iget v1, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_cdataEntityCountThreshold:I

    if-ge v5, v1, :cond_a

    return-void

    :cond_a
    iget v1, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitIn:I

    const-string v2, "?"

    if-nez p1, :cond_13

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitCch:I

    iget v6, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_cdataLengthThreshold:I

    if-le v3, v6, :cond_b

    iget v6, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_cdataEntityCountThreshold:I

    if-le v5, v6, :cond_b

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_5
    if-lez v3, :cond_1c

    iget-object v7, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    aget-char v7, v7, v1

    if-ne v7, v11, :cond_c

    const-string v5, "&lt;"

    :goto_6
    invoke-direct {v0, v1, v5}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_7

    :cond_c
    if-ne v7, v10, :cond_d

    const-string v5, "&amp;"

    goto :goto_6

    :cond_d
    if-ne v7, v12, :cond_e

    if-ne v6, v13, :cond_e

    if-ne v5, v13, :cond_e

    const-string v5, "&gt;"

    goto :goto_6

    :cond_e
    invoke-direct {v0, v7}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->isBadChar(C)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_7

    :cond_f
    iget-boolean v5, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_isPrettyPrint:Z

    if-nez v5, :cond_10

    if-ne v7, v9, :cond_10

    const-string v5, "&#13;"

    goto :goto_6

    :cond_10
    invoke-direct {v0, v7}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->isEscapedChar(C)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, v0, Lorg/apache/xmlbeans/impl/store/Saver;->_replaceChar:Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;

    invoke-virtual {v5, v7}, Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;->getEscapedString(C)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_11
    add-int/lit8 v1, v1, 0x1

    :goto_7
    iget-object v5, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v5, v5

    if-ne v1, v5, :cond_12

    const/4 v1, 0x0

    :cond_12
    add-int/lit8 v3, v3, -0x1

    move v5, v6

    move v6, v7

    goto :goto_5

    :cond_13
    :goto_8
    iget-object v3, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    aget-char v3, v3, v1

    if-ne v3, v13, :cond_14

    const/4 v3, 0x1

    goto :goto_9

    :cond_14
    const/4 v3, 0x0

    :goto_9
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "<![CDATA["

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    aget-char v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    iget-object v5, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    aget-char v6, v5, v1

    if-ne v6, v13, :cond_15

    const/4 v6, 0x1

    goto :goto_a

    :cond_15
    const/4 v6, 0x0

    :goto_a
    add-int/2addr v1, v14

    array-length v5, v5

    if-ne v1, v5, :cond_16

    const/4 v1, 0x0

    :cond_16
    iget v5, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitCch:I

    :goto_b
    if-lez v5, :cond_1b

    iget-object v7, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    aget-char v7, v7, v1

    if-ne v7, v12, :cond_17

    if-eqz v3, :cond_17

    if-eqz v6, :cond_17

    const-string v3, "]]>><![CDATA["

    invoke-direct {v0, v1, v3}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_c

    :cond_17
    invoke-direct {v0, v7}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->isBadChar(C)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_c

    :cond_18
    add-int/lit8 v1, v1, 0x1

    :goto_c
    if-ne v7, v13, :cond_19

    const/4 v3, 0x1

    goto :goto_d

    :cond_19
    const/4 v3, 0x0

    :goto_d
    iget-object v7, v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v7, v7

    if-ne v1, v7, :cond_1a

    const/4 v1, 0x0

    :cond_1a
    add-int/lit8 v5, v5, -0x1

    move/from16 v16, v6

    move v6, v3

    move/from16 v3, v16

    goto :goto_b

    :cond_1b
    const-string v1, "]]>"

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method private entitizeProcinst()V
    .locals 6

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitCch:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitIn:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lez v0, :cond_6

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    aget-char v4, v4, v1

    invoke-direct {p0, v4}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->isBadChar(C)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "?"

    invoke-direct {p0, v1, v5}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    :cond_1
    const/16 v5, 0x3e

    if-ne v4, v5, :cond_3

    if-eqz v3, :cond_2

    const-string v3, " "

    invoke-direct {p0, v1, v3}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->replace(ILjava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :goto_1
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    const/16 v3, 0x3f

    if-ne v4, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    :goto_3
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v4, v4

    if-ne v1, v4, :cond_5

    const/4 v1, 0x0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private isBadChar(C)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    const v0, 0xd7ff

    if-le p1, v0, :cond_3

    :cond_0
    const v0, 0xe000

    if-lt p1, v0, :cond_1

    const v0, 0xfffd

    if-le p1, v0, :cond_3

    :cond_1
    const/high16 v0, 0x10000

    if-lt p1, v0, :cond_2

    const v0, 0x10ffff

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isEscapedChar(C)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_replaceChar:Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;->containsChar(C)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private preEmit(I)Z
    .locals 11

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const-string v1, " _free:"

    const-string v2, " _out:"

    const-string v3, " _in:"

    const-string v4, "_buf.length:"

    if-nez v0, :cond_6

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    if-eqz v5, :cond_6

    iget v6, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    iget v7, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    if-ge v6, v7, :cond_2

    iget v8, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    array-length v9, v5

    sub-int v10, v7, v6

    sub-int/2addr v9, v10

    if-eq v8, v9, :cond_6

    :cond_2
    if-le v6, v7, :cond_3

    iget v8, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    sub-int v9, v6, v7

    if-eq v8, v9, :cond_6

    :cond_3
    if-ne v6, v7, :cond_4

    iget v8, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    array-length v5, v5

    if-eq v8, v5, :cond_6

    :cond_4
    if-ne v6, v7, :cond_5

    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_6
    :goto_1
    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitCch:I

    if-nez p1, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-gt v5, p1, :cond_8

    const/4 v5, -0x1

    invoke-direct {p0, p1, v5}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->resize(II)I

    :cond_8
    if-nez v0, :cond_a

    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-gt p1, v5, :cond_9

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->getAvailable()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_f

    if-nez v0, :cond_c

    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    iget v7, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    if-ne v5, v7, :cond_b

    goto :goto_3

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_c
    :goto_3
    if-nez v0, :cond_e

    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    iget-object v7, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v7, v7

    if-ne v5, v7, :cond_d

    goto :goto_4

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    :goto_4
    iput v6, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    iput v6, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    :cond_f
    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    iput v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_lastEmitIn:I

    iget v7, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    sub-int/2addr v7, p1

    iput v7, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-nez v0, :cond_11

    if-ltz v7, :cond_10

    goto :goto_5

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_11
    :goto_5
    if-nez v0, :cond_14

    iget-object v8, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    if-eqz v8, :cond_14

    iget v9, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    if-lt v5, v9, :cond_12

    array-length v8, v8

    sub-int v9, v5, v9

    sub-int/2addr v8, v9

    goto :goto_6

    :cond_12
    sub-int v8, v9, v5

    :goto_6
    sub-int/2addr v8, p1

    if-ne v7, v8, :cond_13

    goto :goto_7

    :cond_13
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_14
    :goto_7
    if-nez v0, :cond_19

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    if-eqz v0, :cond_19

    iget v8, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    if-ge v8, v5, :cond_15

    array-length v9, v0

    sub-int v10, v5, v8

    sub-int/2addr v9, v10

    sub-int/2addr v9, p1

    if-eq v7, v9, :cond_19

    :cond_15
    if-le v8, v5, :cond_16

    sub-int v9, v8, v5

    sub-int/2addr v9, p1

    if-eq v7, v9, :cond_19

    :cond_16
    if-ne v8, v5, :cond_17

    array-length v0, v0

    sub-int/2addr v0, p1

    if-eq v7, v0, :cond_19

    :cond_17
    if-ne v8, v5, :cond_18

    if-nez v7, :cond_18

    goto :goto_8

    :cond_18
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_19
    :goto_8
    return v6
.end method

.method private replace(ILjava/lang/String;)I
    .locals 9

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    aput-char p2, v0, p1

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_2
    if-nez v0, :cond_4

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-ltz v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-le v2, v4, :cond_5

    invoke-direct {p0, v2, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->resize(II)I

    move-result p1

    :cond_5
    if-nez v0, :cond_7

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-ltz v4, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_2
    if-nez v0, :cond_9

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-lt v4, v2, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_3
    if-nez v0, :cond_b

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->getAvailable()I

    move-result v4

    if-lez v4, :cond_a

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_4
    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    if-le v4, v5, :cond_c

    if-lt p1, v4, :cond_c

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    sub-int v6, v4, v2

    sub-int v7, p1, v4

    invoke-static {v5, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    sub-int/2addr v4, v2

    iput v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    sub-int/2addr p1, v2

    goto :goto_6

    :cond_c
    if-nez v0, :cond_e

    if-ge p1, v5, :cond_d

    goto :goto_5

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    :goto_5
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v6, v4

    sub-int/2addr v6, v5

    if-gt v2, v6, :cond_f

    add-int v6, p1, v2

    sub-int/2addr v5, p1

    invoke-static {v4, p1, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    add-int/2addr v4, v2

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v5, v5

    rem-int/2addr v4, v5

    iput v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    goto :goto_6

    :cond_f
    add-int v7, v6, v5

    sub-int/2addr v7, p1

    add-int/lit8 v7, v7, -0x1

    if-gt v2, v7, :cond_10

    sub-int v6, v2, v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    add-int/lit8 v5, p1, 0x1

    add-int v7, v5, v2

    iget v8, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    sub-int/2addr v8, p1

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v6

    invoke-static {v4, v5, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v6, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    goto :goto_6

    :cond_10
    sub-int v7, v5, p1

    add-int/lit8 v7, v7, -0x1

    add-int/2addr v6, v5

    sub-int/2addr v6, p1

    sub-int/2addr v5, v7

    sub-int v8, v2, v6

    add-int/lit8 v8, v8, 0x1

    invoke-static {v4, v5, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    invoke-virtual {p2, v6, v1, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v7, v2

    sub-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    move v1, v6

    :goto_6
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    invoke-virtual {p2, v3, v1, v4, p1}, Ljava/lang/String;->getChars(II[CI)V

    iget p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    sub-int/2addr p2, v2

    iput p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-nez v0, :cond_12

    if-ltz p2, :cond_11

    goto :goto_7

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_12
    :goto_7
    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    if-eqz v0, :cond_17

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    if-ge v1, v3, :cond_13

    array-length v4, v0

    sub-int v5, v3, v1

    sub-int/2addr v4, v5

    if-eq p2, v4, :cond_17

    :cond_13
    if-le v1, v3, :cond_14

    sub-int v4, v1, v3

    if-eq p2, v4, :cond_17

    :cond_14
    if-ne v1, v3, :cond_15

    array-length v0, v0

    if-eq p2, v0, :cond_17

    :cond_15
    if-ne v1, v3, :cond_16

    if-nez p2, :cond_16

    goto :goto_8

    :cond_16
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "_buf.length:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " _in:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " _out:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " _free:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_17
    :goto_8
    add-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length p2, p2

    rem-int/2addr p1, p2

    return p1
.end method

.method private resize(II)I
    .locals 11

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-lt p1, v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    const-string v1, " _free:"

    const-string v2, " _out:"

    const-string v3, " _in:"

    const-string v4, "_buf.length:"

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    if-eqz v0, :cond_a

    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    iget v6, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    if-ge v5, v6, :cond_6

    iget v7, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    array-length v8, v0

    sub-int v9, v6, v5

    sub-int/2addr v8, v9

    if-eq v7, v8, :cond_a

    :cond_6
    if-le v5, v6, :cond_7

    iget v7, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    sub-int v8, v5, v6

    if-eq v7, v8, :cond_a

    :cond_7
    if-ne v5, v6, :cond_8

    iget v7, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    array-length v0, v0

    if-eq v7, v0, :cond_a

    :cond_8
    if-ne v5, v6, :cond_9

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_a
    :goto_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    if-nez v0, :cond_b

    const/16 v0, 0x1000

    goto :goto_4

    :cond_b
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    :goto_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->getAvailable()I

    move-result v5

    :goto_5
    sub-int v6, v0, v5

    if-ge v6, p1, :cond_c

    mul-int/lit8 v0, v0, 0x2

    goto :goto_5

    :cond_c
    new-array p1, v0, [C

    const/4 v6, -0x1

    if-lez v5, :cond_13

    iget v7, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    iget v8, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    const/4 v9, 0x0

    sget-boolean v10, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    if-le v7, v8, :cond_f

    if-nez v10, :cond_e

    if-eq p2, v6, :cond_e

    if-lt p2, v8, :cond_d

    if-ge p2, v7, :cond_d

    goto :goto_6

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    :goto_6
    iget-object v6, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    invoke-static {v6, v8, p1, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    :goto_7
    sub-int/2addr p2, v6

    goto :goto_9

    :cond_f
    if-nez v10, :cond_11

    if-eq p2, v6, :cond_11

    if-ge p2, v8, :cond_11

    if-ge p2, v7, :cond_10

    goto :goto_8

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_11
    :goto_8
    iget-object v6, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    sub-int v7, v5, v7

    invoke-static {v6, v8, p1, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    iget v7, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    sub-int v8, v5, v7

    invoke-static {v6, v9, p1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    if-lt p2, v6, :cond_12

    goto :goto_7

    :cond_12
    add-int/2addr p2, v6

    :goto_9
    iput v9, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    iput v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    iget-object v6, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v6, v6

    sub-int/2addr v0, v6

    add-int/2addr v0, v5

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    goto :goto_b

    :cond_13
    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    if-nez v0, :cond_15

    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    if-nez v5, :cond_14

    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    if-nez v5, :cond_14

    goto :goto_a

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_15
    :goto_a
    if-nez v0, :cond_17

    if-ne p2, v6, :cond_16

    goto :goto_b

    :cond_16
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_17
    :goto_b
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    if-nez v0, :cond_19

    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-ltz v5, :cond_18

    goto :goto_c

    :cond_18
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_19
    :goto_c
    if-nez v0, :cond_1e

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    if-ge v0, v5, :cond_1a

    iget v6, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    array-length v7, p1

    sub-int v8, v5, v0

    sub-int/2addr v7, v8

    if-eq v6, v7, :cond_1e

    :cond_1a
    if-le v0, v5, :cond_1b

    iget v6, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    sub-int v7, v0, v5

    if-eq v6, v7, :cond_1e

    :cond_1b
    if-ne v0, v5, :cond_1c

    iget v6, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    array-length p1, p1

    if-eq v6, p1, :cond_1e

    :cond_1c
    if-ne v0, v5, :cond_1d

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-nez p1, :cond_1d

    goto :goto_d

    :cond_1d
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1e
    :goto_d
    return p2
.end method


# virtual methods
.method public emitComment(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isComment()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const-string v0, "<!--"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->push()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->next()Z

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->pop()V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->entitizeComment()V

    const-string p1, "-->"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public emitDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const-string v0, "<!DOCTYPE "

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    const-string p1, " SYSTEM "

    :goto_1
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emitLiteral(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    const-string p1, " PUBLIC "

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emitLiteral(Ljava/lang/String;)V

    const-string p1, " "

    goto :goto_1

    :cond_3
    :goto_2
    const-string p1, ">"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    sget-object p1, Lorg/apache/xmlbeans/impl/store/Saver;->_newLine:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public emitElement(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isElem()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emitName(Lorg/apache/poi/javax/xml/namespace/QName;Z)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->saveNamespacesFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emitNamespacesHelper()V

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emitAttrHelper(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->saveNamespacesFirst()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emitNamespacesHelper()V

    :cond_4
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->hasChildren()Z

    move-result p2

    const/16 p3, 0x3e

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->hasText()Z

    move-result p1

    if-nez p1, :cond_5

    const/16 p1, 0x2f

    invoke-direct {p0, p1, p3}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(CC)V

    const/4 p1, 0x1

    return p1

    :cond_5
    invoke-direct {p0, p3}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    return v1
.end method

.method public emitEndDoc(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 0

    return-void
.end method

.method public emitFinish(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 2

    const/16 v0, 0x3c

    const/16 v1, 0x2f

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(CC)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emitName(Lorg/apache/poi/javax/xml/namespace/QName;Z)V

    const/16 p1, 0x3e

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    return-void
.end method

.method public emitProcinst(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isProcinst()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const-string v0, "<?"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->push()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->next()Z

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isText()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " "

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->entitizeProcinst()V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->pop()V

    const-string p1, "?>"

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public emitStartDoc(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 0

    return-void
.end method

.method public emitText(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isText()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_useCDataBookmarks:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isTextCData()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->entitizeContent(Z)V

    return-void
.end method

.method public emitXmlns(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    const-string v0, "xmlns"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    :cond_4
    const/16 p1, 0x3d

    const/16 v0, 0x22

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(CC)V

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->entitizeAttrValue(Z)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->emit(C)V

    return-void
.end method

.method public getAvailable()I
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public read()I
    .locals 7

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->ensure(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    sget-boolean v1, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->getAvailable()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    aget-char v4, v2, v3

    add-int/2addr v3, v0

    array-length v5, v2

    rem-int/2addr v3, v5

    iput v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    add-int/2addr v5, v0

    iput v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-nez v1, :cond_7

    if-eqz v2, :cond_7

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    if-ge v3, v0, :cond_3

    array-length v1, v2

    sub-int v6, v0, v3

    sub-int/2addr v1, v6

    if-eq v5, v1, :cond_7

    :cond_3
    if-le v3, v0, :cond_4

    sub-int v1, v3, v0

    if-eq v5, v1, :cond_7

    :cond_4
    if-ne v3, v0, :cond_5

    array-length v1, v2

    if-eq v5, v1, :cond_7

    :cond_5
    if-ne v3, v0, :cond_6

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "_buf.length:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " _in:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " _out:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " _free:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_7
    :goto_1
    return v4
.end method

.method public read([CII)I
    .locals 5

    .line 2
    invoke-direct {p0, p3}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->ensure(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    if-gtz p3, :cond_1

    goto/16 :goto_3

    :cond_1
    if-ge v0, p3, :cond_2

    move p3, v0

    :cond_2
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    if-ge v0, v2, :cond_3

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v3, v2

    sub-int/2addr v3, v0

    if-lt v3, p3, :cond_4

    invoke-static {v2, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_4
    invoke-static {v2, v0, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    add-int/2addr p2, v3

    sub-int v2, p3, v3

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    add-int/2addr p1, p3

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v0, p2

    rem-int/2addr p1, v0

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    sget-boolean v1, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    if-nez v1, :cond_9

    if-eqz p2, :cond_9

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    if-ge p1, v2, :cond_5

    array-length v3, p2

    sub-int v4, v2, p1

    sub-int/2addr v3, v4

    if-eq v0, v3, :cond_9

    :cond_5
    if-le p1, v2, :cond_6

    sub-int v3, p1, v2

    if-eq v0, v3, :cond_9

    :cond_6
    if-ne p1, v2, :cond_7

    array-length p2, p2

    if-eq v0, p2, :cond_9

    :cond_7
    if-ne p1, v2, :cond_8

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p3, "_buf.length:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p3, " _in:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p3, " _out:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p3, " _free:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_9
    :goto_1
    if-nez v1, :cond_b

    if-ltz v0, :cond_a

    goto :goto_2

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_2
    return p3

    :cond_c
    :goto_3
    return v1
.end method

.method public saveToString()Ljava/lang/String;
    .locals 4

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->process()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->getAvailable()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ""

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method public write(Ljava/io/Writer;I)I
    .locals 5

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->getAvailable()I

    move-result v0

    if-ge v0, p2, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->process()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->getAvailable()I

    move-result p2

    if-lez p2, :cond_a

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    if-nez v0, :cond_5

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    if-lt v1, v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "_in:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " < _out:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_5
    :goto_1
    if-nez v0, :cond_7

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v2, v2

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_2
    :try_start_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Ljava/io/Writer;->write([CII)V

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-nez v0, :cond_9

    if-ltz p1, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_3
    iput v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    goto :goto_4

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_a
    :goto_4
    sget-boolean p1, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->$assertionsDisabled:Z

    if-nez p1, :cond_f

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    if-eqz p1, :cond_f

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    if-ge v0, v1, :cond_b

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    array-length v3, p1

    sub-int v4, v1, v0

    sub-int/2addr v3, v4

    if-eq v2, v3, :cond_f

    :cond_b
    if-le v0, v1, :cond_c

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    sub-int v3, v0, v1

    if-eq v2, v3, :cond_f

    :cond_c
    if-ne v0, v1, :cond_d

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    array-length p1, p1

    if-eq v2, p1, :cond_f

    :cond_d
    if-ne v0, v1, :cond_e

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    if-nez p1, :cond_e

    goto :goto_5

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "_buf.length:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_buf:[C

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " _in:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_in:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " _out:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_out:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " _free:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->_free:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_f
    :goto_5
    return p2
.end method
