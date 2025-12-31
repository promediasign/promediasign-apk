.class public Lorg/apache/ftpserver/ftplet/DefaultFtpReply;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/FtpReply;


# static fields
.field private static final CRLF:Ljava/lang/String; = "\r\n"


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->code:I

    iput-object p2, p0, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->code:I

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->message:Ljava/lang/String;

    return-void
.end method

.method private isDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->message:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->getCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->getMessage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, ""

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    move-object v1, v2

    .line 14
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v4, "\r"

    .line 20
    .line 21
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "\n"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x1

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    invoke-static {v1, v6, v5}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    array-length v4, v2

    .line 44
    const-string v7, "\r\n"

    .line 45
    .line 46
    const-string v8, " "

    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    if-ne v4, v6, :cond_2

    .line 52
    .line 53
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const-string v1, "-"

    .line 64
    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    :goto_0
    array-length v4, v2

    .line 70
    if-ge v1, v4, :cond_5

    .line 71
    .line 72
    aget-object v4, v2, v1

    .line 73
    .line 74
    add-int/lit8 v9, v1, 0x1

    .line 75
    .line 76
    array-length v10, v2

    .line 77
    if-ne v9, v10, :cond_3

    .line 78
    .line 79
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    .line 84
    .line 85
    :cond_3
    if-lez v1, :cond_4

    .line 86
    .line 87
    array-length v1, v2

    .line 88
    if-ge v9, v1, :cond_4

    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const/4 v10, 0x2

    .line 95
    if-le v1, v10, :cond_4

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->isDigit(C)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->isDigit(C)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_4

    .line 116
    .line 117
    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;->isDigit(C)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_4

    .line 126
    .line 127
    const-string v1, "  "

    .line 128
    .line 129
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    .line 131
    .line 132
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    .line 137
    .line 138
    move v1, v9

    .line 139
    goto :goto_0

    .line 140
    :cond_5
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    return-object v0
.end method
