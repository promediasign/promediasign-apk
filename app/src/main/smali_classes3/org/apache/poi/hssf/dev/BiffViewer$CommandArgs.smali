.class final Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/dev/BiffViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommandArgs"
.end annotation


# instance fields
.field private final _biffhex:Z

.field private final _file:Ljava/io/File;

.field private final _noHeader:Z

.field private final _noint:Z

.field private final _out:Z

.field private final _rawhex:Z


# direct methods
.method private constructor <init>(ZZZZZLjava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_biffhex:Z

    iput-boolean p2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_noint:Z

    iput-boolean p3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_out:Z

    iput-boolean p4, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_rawhex:Z

    iput-object p6, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_file:Ljava/io/File;

    iput-boolean p5, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_noHeader:Z

    return-void
.end method

.method public static parse([Ljava/lang/String;)Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;
    .locals 11

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    move-object v8, v2

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_9

    .line 11
    .line 12
    aget-object v2, p0, v1

    .line 13
    .line 14
    const-string v9, "--"

    .line 15
    .line 16
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v9

    .line 20
    if-eqz v9, :cond_6

    .line 21
    .line 22
    const-string v9, "--biffhex"

    .line 23
    .line 24
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    const/4 v10, 0x1

    .line 29
    if-eqz v9, :cond_0

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const-string v9, "--noint"

    .line 34
    .line 35
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    if-eqz v9, :cond_1

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string v9, "--out"

    .line 44
    .line 45
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    if-eqz v9, :cond_2

    .line 50
    .line 51
    const/4 v5, 0x1

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const-string v9, "--escher"

    .line 54
    .line 55
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-eqz v9, :cond_3

    .line 60
    .line 61
    const-string v2, "poi.deserialize.escher"

    .line 62
    .line 63
    const-string v9, "true"

    .line 64
    .line 65
    invoke-static {v2, v9}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const-string v9, "--rawhex"

    .line 70
    .line 71
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-eqz v9, :cond_4

    .line 76
    .line 77
    const/4 v6, 0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const-string v7, "--noheader"

    .line 80
    .line 81
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_5

    .line 86
    .line 87
    const/4 v7, 0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_5
    new-instance p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;

    .line 90
    .line 91
    const-string v0, "Unexpected option \'"

    .line 92
    .line 93
    const-string v1, "\'"

    .line 94
    .line 95
    invoke-static {v0, v2, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :cond_6
    new-instance v8, Ljava/io/File;

    .line 104
    .line 105
    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    if-eqz v9, :cond_8

    .line 113
    .line 114
    add-int/lit8 v2, v1, 0x1

    .line 115
    .line 116
    if-lt v2, v0, :cond_7

    .line 117
    .line 118
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_7
    new-instance p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;

    .line 122
    .line 123
    const-string v0, "File name must be the last arg"

    .line 124
    .line 125
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_8
    new-instance p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;

    .line 130
    .line 131
    const-string v0, "Specified file \'"

    .line 132
    .line 133
    const-string v1, "\' does not exist"

    .line 134
    .line 135
    invoke-static {v0, v2, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :cond_9
    if-eqz v8, :cond_a

    .line 144
    .line 145
    new-instance p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;

    .line 146
    .line 147
    move-object v2, p0

    .line 148
    invoke-direct/range {v2 .. v8}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;-><init>(ZZZZZLjava/io/File;)V

    .line 149
    .line 150
    .line 151
    return-object p0

    .line 152
    :cond_a
    new-instance p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;

    .line 153
    .line 154
    const-string v0, "Biff viewer needs a filename"

    .line 155
    .line 156
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p0
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_file:Ljava/io/File;

    return-object v0
.end method

.method public shouldDumpBiffHex()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_biffhex:Z

    return v0
.end method

.method public shouldDumpRecordInterpretations()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_noint:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public shouldOutputRawHexOnly()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_rawhex:Z

    return v0
.end method

.method public shouldOutputToFile()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_out:Z

    return v0
.end method

.method public suppressHeader()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_noHeader:Z

    return v0
.end method
