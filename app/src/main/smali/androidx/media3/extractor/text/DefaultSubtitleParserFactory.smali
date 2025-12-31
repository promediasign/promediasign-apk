.class public final Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleParser;
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sparse-switch v2, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :sswitch_0
    const-string v2, "application/ttml+xml"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x7

    .line 28
    goto :goto_0

    .line 29
    :sswitch_1
    const-string v2, "application/x-subrip"

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v1, 0x6

    .line 39
    goto :goto_0

    .line 40
    :sswitch_2
    const-string v2, "text/x-ssa"

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v1, 0x5

    .line 50
    goto :goto_0

    .line 51
    :sswitch_3
    const-string v2, "application/x-quicktime-tx3g"

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/4 v1, 0x4

    .line 61
    goto :goto_0

    .line 62
    :sswitch_4
    const-string v2, "text/vtt"

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    const/4 v1, 0x3

    .line 72
    goto :goto_0

    .line 73
    :sswitch_5
    const-string v2, "application/x-mp4-vtt"

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_5

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    const/4 v1, 0x2

    .line 83
    goto :goto_0

    .line 84
    :sswitch_6
    const-string v2, "application/pgs"

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_6

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_6
    const/4 v1, 0x1

    .line 94
    goto :goto_0

    .line 95
    :sswitch_7
    const-string v2, "application/dvbsubs"

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_7

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_7
    const/4 v1, 0x0

    .line 105
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :pswitch_0
    new-instance p1, Landroidx/media3/extractor/text/ttml/TtmlParser;

    .line 110
    .line 111
    invoke-direct {p1}, Landroidx/media3/extractor/text/ttml/TtmlParser;-><init>()V

    .line 112
    .line 113
    .line 114
    return-object p1

    .line 115
    :pswitch_1
    new-instance p1, Landroidx/media3/extractor/text/subrip/SubripParser;

    .line 116
    .line 117
    invoke-direct {p1}, Landroidx/media3/extractor/text/subrip/SubripParser;-><init>()V

    .line 118
    .line 119
    .line 120
    return-object p1

    .line 121
    :pswitch_2
    new-instance v0, Landroidx/media3/extractor/text/ssa/SsaParser;

    .line 122
    .line 123
    iget-object p1, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 124
    .line 125
    invoke-direct {v0, p1}, Landroidx/media3/extractor/text/ssa/SsaParser;-><init>(Ljava/util/List;)V

    .line 126
    .line 127
    .line 128
    return-object v0

    .line 129
    :pswitch_3
    new-instance v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;

    .line 130
    .line 131
    iget-object p1, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 132
    .line 133
    invoke-direct {v0, p1}, Landroidx/media3/extractor/text/tx3g/Tx3gParser;-><init>(Ljava/util/List;)V

    .line 134
    .line 135
    .line 136
    return-object v0

    .line 137
    :pswitch_4
    new-instance p1, Landroidx/media3/extractor/text/webvtt/WebvttParser;

    .line 138
    .line 139
    invoke-direct {p1}, Landroidx/media3/extractor/text/webvtt/WebvttParser;-><init>()V

    .line 140
    .line 141
    .line 142
    return-object p1

    .line 143
    :pswitch_5
    new-instance p1, Landroidx/media3/extractor/text/webvtt/Mp4WebvttParser;

    .line 144
    .line 145
    invoke-direct {p1}, Landroidx/media3/extractor/text/webvtt/Mp4WebvttParser;-><init>()V

    .line 146
    .line 147
    .line 148
    return-object p1

    .line 149
    :pswitch_6
    new-instance p1, Landroidx/media3/extractor/text/pgs/PgsParser;

    .line 150
    .line 151
    invoke-direct {p1}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>()V

    .line 152
    .line 153
    .line 154
    return-object p1

    .line 155
    :pswitch_7
    new-instance v0, Landroidx/media3/extractor/text/dvb/DvbParser;

    .line 156
    .line 157
    iget-object p1, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 158
    .line 159
    invoke-direct {v0, p1}, Landroidx/media3/extractor/text/dvb/DvbParser;-><init>(Ljava/util/List;)V

    .line 160
    .line 161
    .line 162
    return-object v0

    .line 163
    :cond_8
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 164
    .line 165
    const-string v1, "Unsupported MIME type: "

    .line 166
    .line 167
    invoke-static {v1, v0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :sswitch_data_0
    .sparse-switch
        -0x5091057c -> :sswitch_7
        -0x4a6813e3 -> :sswitch_6
        -0x3d28a9ba -> :sswitch_5
        -0x3be2f26c -> :sswitch_4
        0x2935f49f -> :sswitch_3
        0x310bebca -> :sswitch_2
        0x63771bad -> :sswitch_1
        0x64f8068a -> :sswitch_0
    .end sparse-switch

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCueReplacementBehavior(Landroidx/media3/common/Format;)I
    .locals 4

    .line 1
    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p1, :cond_8

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, -0x1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    sparse-switch v3, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :sswitch_0
    const-string v3, "application/ttml+xml"

    .line 21
    .line 22
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x7

    .line 30
    goto :goto_0

    .line 31
    :sswitch_1
    const-string v3, "application/x-subrip"

    .line 32
    .line 33
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v2, 0x6

    .line 41
    goto :goto_0

    .line 42
    :sswitch_2
    const-string v3, "text/x-ssa"

    .line 43
    .line 44
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v2, 0x5

    .line 52
    goto :goto_0

    .line 53
    :sswitch_3
    const-string v3, "application/x-quicktime-tx3g"

    .line 54
    .line 55
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const/4 v2, 0x4

    .line 63
    goto :goto_0

    .line 64
    :sswitch_4
    const-string v3, "text/vtt"

    .line 65
    .line 66
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_4

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    const/4 v2, 0x3

    .line 74
    goto :goto_0

    .line 75
    :sswitch_5
    const-string v3, "application/x-mp4-vtt"

    .line 76
    .line 77
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_5

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    const/4 v2, 0x2

    .line 85
    goto :goto_0

    .line 86
    :sswitch_6
    const-string v3, "application/pgs"

    .line 87
    .line 88
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-nez v3, :cond_6

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_6
    const/4 v2, 0x1

    .line 96
    goto :goto_0

    .line 97
    :sswitch_7
    const-string v3, "application/dvbsubs"

    .line 98
    .line 99
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-nez v3, :cond_7

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_7
    const/4 v2, 0x0

    .line 107
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :pswitch_0
    return v1

    .line 112
    :pswitch_1
    return v0

    .line 113
    :pswitch_2
    return v1

    .line 114
    :pswitch_3
    return v0

    .line 115
    :cond_8
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    const-string v1, "Unsupported MIME type: "

    .line 118
    .line 119
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :sswitch_data_0
    .sparse-switch
        -0x5091057c -> :sswitch_7
        -0x4a6813e3 -> :sswitch_6
        -0x3d28a9ba -> :sswitch_5
        -0x3be2f26c -> :sswitch_4
        0x2935f49f -> :sswitch_3
        0x310bebca -> :sswitch_2
        0x63771bad -> :sswitch_1
        0x64f8068a -> :sswitch_0
    .end sparse-switch

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)Z
    .locals 1

    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "text/x-ssa"

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "text/vtt"

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-mp4-vtt"

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-subrip"

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-quicktime-tx3g"

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/pgs"

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/dvbsubs"

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ttml+xml"

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
