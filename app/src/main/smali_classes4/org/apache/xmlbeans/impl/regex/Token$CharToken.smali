.class Lorg/apache/xmlbeans/impl/regex/Token$CharToken;
.super Lorg/apache/xmlbeans/impl/regex/Token;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/regex/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharToken"
.end annotation


# instance fields
.field chardata:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/regex/Token;-><init>(I)V

    iput p2, p0, Lorg/apache/xmlbeans/impl/regex/Token$CharToken;->chardata:I

    return-void
.end method


# virtual methods
.method public getChar()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$CharToken;->chardata:I

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget p1, p0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    const-string v1, "\\"

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    if-eq p1, v2, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    sget-object p1, Lorg/apache/xmlbeans/impl/regex/Token;->token_linebeginning:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 17
    .line 18
    if-eq p0, p1, :cond_2

    .line 19
    .line 20
    sget-object p1, Lorg/apache/xmlbeans/impl/regex/Token;->token_lineend:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 21
    .line 22
    if-ne p0, p1, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/StringBuffer;

    .line 26
    .line 27
    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$CharToken;->chardata:I

    .line 31
    .line 32
    int-to-char v0, v0

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuffer;

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    iget p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$CharToken;->chardata:I

    .line 49
    .line 50
    const/16 v2, 0x9

    .line 51
    .line 52
    if-eq p1, v2, :cond_a

    .line 53
    .line 54
    const/16 v2, 0xa

    .line 55
    .line 56
    if-eq p1, v2, :cond_9

    .line 57
    .line 58
    const/16 v2, 0xc

    .line 59
    .line 60
    if-eq p1, v2, :cond_8

    .line 61
    .line 62
    const/16 v2, 0xd

    .line 63
    .line 64
    if-eq p1, v2, :cond_7

    .line 65
    .line 66
    const/16 v2, 0x1b

    .line 67
    .line 68
    if-eq p1, v2, :cond_6

    .line 69
    .line 70
    const/16 v2, 0x2e

    .line 71
    .line 72
    if-eq p1, v2, :cond_5

    .line 73
    .line 74
    const/16 v2, 0x3f

    .line 75
    .line 76
    if-eq p1, v2, :cond_5

    .line 77
    .line 78
    const/16 v2, 0x5b

    .line 79
    .line 80
    if-eq p1, v2, :cond_5

    .line 81
    .line 82
    const/16 v2, 0x5c

    .line 83
    .line 84
    if-eq p1, v2, :cond_5

    .line 85
    .line 86
    const/16 v2, 0x7b

    .line 87
    .line 88
    if-eq p1, v2, :cond_5

    .line 89
    .line 90
    const/16 v2, 0x7c

    .line 91
    .line 92
    if-eq p1, v2, :cond_5

    .line 93
    .line 94
    packed-switch p1, :pswitch_data_0

    .line 95
    .line 96
    .line 97
    const/high16 v1, 0x10000

    .line 98
    .line 99
    if-lt p1, v1, :cond_4

    .line 100
    .line 101
    new-instance p1, Ljava/lang/StringBuffer;

    .line 102
    .line 103
    const-string v0, "0"

    .line 104
    .line 105
    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$CharToken;->chardata:I

    .line 109
    .line 110
    invoke-static {v0, p1}, Lorg/apache/ftpserver/main/a;->f(ILjava/lang/StringBuffer;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance v0, Ljava/lang/StringBuffer;

    .line 115
    .line 116
    const-string v1, "\\v"

    .line 117
    .line 118
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    add-int/lit8 v1, v1, -0x6

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    goto :goto_3

    .line 143
    :cond_4
    new-instance p1, Ljava/lang/StringBuffer;

    .line 144
    .line 145
    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :goto_2
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$CharToken;->chardata:I

    .line 149
    .line 150
    int-to-char v0, v0

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    goto :goto_3

    .line 159
    :cond_5
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuffer;

    .line 160
    .line 161
    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_6
    const-string p1, "\\e"

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_7
    const-string p1, "\\r"

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_8
    const-string p1, "\\f"

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_9
    const-string p1, "\\n"

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_a
    const-string p1, "\\t"

    .line 178
    .line 179
    :goto_3
    return-object p1

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
