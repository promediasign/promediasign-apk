.class final Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/extractor/ExcelExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommandArgs"
.end annotation


# instance fields
.field private final _evaluateFormulas:Z

.field private final _headersFooters:Z

.field private final _inputFile:Ljava/io/File;

.field private final _requestHelp:Z

.field private final _showBlankCells:Z

.field private final _showCellComments:Z

.field private final _showSheetNames:Z


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x1

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x1

    .line 14
    :goto_0
    if-ge v4, v0, :cond_b

    .line 15
    .line 16
    aget-object v10, p1, v4

    .line 17
    .line 18
    const-string v11, "-help"

    .line 19
    .line 20
    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v11

    .line 24
    if-eqz v11, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_0
    const-string v11, "-i"

    .line 30
    .line 31
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v11

    .line 35
    if-eqz v11, :cond_5

    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    if-ge v4, v0, :cond_4

    .line 40
    .line 41
    aget-object v10, p1, v4

    .line 42
    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    new-instance v1, Ljava/io/File;

    .line 46
    .line 47
    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    const-string v12, "Specified input file \'"

    .line 55
    .line 56
    if-eqz v11, :cond_2

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    if-nez v11, :cond_1

    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :cond_1
    new-instance p1, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;

    .line 67
    .line 68
    const-string v0, "\' is a directory"

    .line 69
    .line 70
    invoke-static {v12, v10, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {p1, v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :cond_2
    new-instance p1, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;

    .line 79
    .line 80
    const-string v0, "\' does not exist"

    .line 81
    .line 82
    invoke-static {v12, v10, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-direct {p1, v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_3
    new-instance p1, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;

    .line 91
    .line 92
    const-string v0, "Only one input file can be supplied"

    .line 93
    .line 94
    invoke-direct {p1, v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_4
    new-instance p1, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;

    .line 99
    .line 100
    const-string v0, "Expected filename after \'-i\'"

    .line 101
    .line 102
    invoke-direct {p1, v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :cond_5
    const-string v11, "--show-sheet-names"

    .line 107
    .line 108
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    if-eqz v11, :cond_6

    .line 113
    .line 114
    add-int/lit8 v4, v4, 0x1

    .line 115
    .line 116
    invoke-static {p1, v4}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->parseBoolArg([Ljava/lang/String;I)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    goto :goto_1

    .line 121
    :cond_6
    const-string v11, "--evaluate-formulas"

    .line 122
    .line 123
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    if-eqz v11, :cond_7

    .line 128
    .line 129
    add-int/lit8 v4, v4, 0x1

    .line 130
    .line 131
    invoke-static {p1, v4}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->parseBoolArg([Ljava/lang/String;I)Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    goto :goto_1

    .line 136
    :cond_7
    const-string v11, "--show-comments"

    .line 137
    .line 138
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    if-eqz v11, :cond_8

    .line 143
    .line 144
    add-int/lit8 v4, v4, 0x1

    .line 145
    .line 146
    invoke-static {p1, v4}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->parseBoolArg([Ljava/lang/String;I)Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    goto :goto_1

    .line 151
    :cond_8
    const-string v11, "--show-blanks"

    .line 152
    .line 153
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    if-eqz v11, :cond_9

    .line 158
    .line 159
    add-int/lit8 v4, v4, 0x1

    .line 160
    .line 161
    invoke-static {p1, v4}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->parseBoolArg([Ljava/lang/String;I)Z

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    goto :goto_1

    .line 166
    :cond_9
    const-string v9, "--headers-footers"

    .line 167
    .line 168
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    if-eqz v9, :cond_a

    .line 173
    .line 174
    add-int/lit8 v4, v4, 0x1

    .line 175
    .line 176
    invoke-static {p1, v4}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->parseBoolArg([Ljava/lang/String;I)Z

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    :goto_1
    add-int/2addr v4, v3

    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_a
    new-instance p1, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;

    .line 184
    .line 185
    const-string v0, "Invalid argument \'"

    .line 186
    .line 187
    const-string v1, "\'"

    .line 188
    .line 189
    invoke-static {v0, v10, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-direct {p1, v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p1

    .line 197
    :cond_b
    :goto_2
    iput-boolean v2, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_requestHelp:Z

    .line 198
    .line 199
    iput-object v1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_inputFile:Ljava/io/File;

    .line 200
    .line 201
    iput-boolean v5, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_showSheetNames:Z

    .line 202
    .line 203
    iput-boolean v6, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_evaluateFormulas:Z

    .line 204
    .line 205
    iput-boolean v7, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_showCellComments:Z

    .line 206
    .line 207
    iput-boolean v8, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_showBlankCells:Z

    .line 208
    .line 209
    iput-boolean v9, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_headersFooters:Z

    .line 210
    .line 211
    return-void
.end method

.method private static parseBoolArg([Ljava/lang/String;I)Z
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ge p1, v0, :cond_4

    .line 4
    .line 5
    aget-object v0, p0, p1

    .line 6
    .line 7
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "Y"

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_3

    .line 20
    .line 21
    const-string v2, "YES"

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_3

    .line 28
    .line 29
    const-string v2, "ON"

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    const-string v2, "TRUE"

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const-string v2, "N"

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    const-string v2, "NO"

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    const-string v2, "OFF"

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_2

    .line 69
    .line 70
    const-string v2, "FALSE"

    .line 71
    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    new-instance v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;

    .line 80
    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v3, "Invalid value \'"

    .line 84
    .line 85
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    aget-object v3, p0, p1

    .line 89
    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v3, "\' for \'"

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    sub-int/2addr p1, v1

    .line 99
    aget-object p0, p0, p1

    .line 100
    .line 101
    const-string p1, "\'. Expected \'Y\' or \'N\'"

    .line 102
    .line 103
    invoke-static {p0, p1, v2}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v0

    .line 111
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 112
    return p0

    .line 113
    :cond_3
    :goto_1
    return v1

    .line 114
    :cond_4
    new-instance v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;

    .line 115
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v3, "Expected value after \'"

    .line 119
    .line 120
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sub-int/2addr p1, v1

    .line 124
    aget-object p0, p0, p1

    .line 125
    .line 126
    const-string p1, "\'"

    .line 127
    .line 128
    invoke-static {p0, p1, v2}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0
.end method


# virtual methods
.method public getInputFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_inputFile:Ljava/io/File;

    return-object v0
.end method

.method public isRequestHelp()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_requestHelp:Z

    return v0
.end method

.method public shouldEvaluateFormulas()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_evaluateFormulas:Z

    return v0
.end method

.method public shouldIncludeHeadersFooters()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_headersFooters:Z

    return v0
.end method

.method public shouldShowBlankCells()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_showBlankCells:Z

    return v0
.end method

.method public shouldShowCellComments()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_showCellComments:Z

    return v0
.end method

.method public shouldShowSheetNames()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_showSheetNames:Z

    return v0
.end method
