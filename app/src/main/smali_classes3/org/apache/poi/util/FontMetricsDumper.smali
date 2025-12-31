.class public Lorg/apache/poi/util/FontMetricsDumper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 17
    .annotation build Lorg/apache/poi/util/SuppressForbidden;
        value = "command line tool"
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Properties;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/awt/GraphicsEnvironment;->getAllFonts()[Ljava/awt/Font;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    array-length v2, v1

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v2, :cond_6

    .line 17
    .line 18
    aget-object v4, v1, v3

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/awt/Font;->getFontName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    new-instance v5, Ljava/awt/Font;

    .line 25
    .line 26
    const/16 v6, 0xa

    .line 27
    .line 28
    const/4 v7, 0x1

    .line 29
    invoke-direct {v5, v4, v7, v6}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v6, v5}, Ljava/awt/Toolkit;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v5}, Ljava/awt/FontMetrics;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    const-string v7, "font."

    .line 45
    .line 46
    const-string v8, ".height"

    .line 47
    .line 48
    invoke-static {v7, v4, v8}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    new-instance v9, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v6, ""

    .line 61
    .line 62
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v0, v8, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const/16 v8, 0x61

    .line 78
    .line 79
    const/16 v9, 0x61

    .line 80
    .line 81
    :goto_1
    const/16 v10, 0x7a

    .line 82
    .line 83
    const-string v11, ", "

    .line 84
    .line 85
    if-gt v9, v10, :cond_0

    .line 86
    .line 87
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    add-int/lit8 v9, v9, 0x1

    .line 94
    .line 95
    int-to-char v9, v9

    .line 96
    goto :goto_1

    .line 97
    :cond_0
    const/16 v12, 0x41

    .line 98
    .line 99
    :goto_2
    const/16 v13, 0x5a

    .line 100
    .line 101
    if-gt v12, v13, :cond_1

    .line 102
    .line 103
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    add-int/lit8 v12, v12, 0x1

    .line 110
    .line 111
    int-to-char v12, v12

    .line 112
    goto :goto_2

    .line 113
    :cond_1
    const/16 v12, 0x30

    .line 114
    .line 115
    const/16 v14, 0x30

    .line 116
    .line 117
    :goto_3
    const/16 v15, 0x39

    .line 118
    .line 119
    if-gt v14, v15, :cond_2

    .line 120
    .line 121
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    add-int/lit8 v14, v14, 0x1

    .line 128
    .line 129
    int-to-char v14, v14

    .line 130
    goto :goto_3

    .line 131
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    :goto_4
    if-gt v8, v10, :cond_3

    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/awt/FontMetrics;->getWidths()[I

    .line 139
    .line 140
    .line 141
    move-result-object v16

    .line 142
    aget v9, v16, v8

    .line 143
    .line 144
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    add-int/lit8 v8, v8, 0x1

    .line 151
    .line 152
    int-to-char v8, v8

    .line 153
    goto :goto_4

    .line 154
    :cond_3
    const/16 v9, 0x41

    .line 155
    .line 156
    :goto_5
    if-gt v9, v13, :cond_4

    .line 157
    .line 158
    invoke-virtual {v5}, Ljava/awt/FontMetrics;->getWidths()[I

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    aget v8, v8, v9

    .line 163
    .line 164
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    add-int/lit8 v9, v9, 0x1

    .line 171
    .line 172
    int-to-char v9, v9

    .line 173
    goto :goto_5

    .line 174
    :cond_4
    :goto_6
    if-gt v12, v15, :cond_5

    .line 175
    .line 176
    invoke-virtual {v5}, Ljava/awt/FontMetrics;->getWidths()[I

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    aget v8, v8, v12

    .line 181
    .line 182
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    add-int/lit8 v12, v12, 0x1

    .line 189
    .line 190
    int-to-char v12, v12

    .line 191
    goto :goto_6

    .line 192
    :cond_5
    const-string v5, ".characters"

    .line 193
    .line 194
    invoke-static {v7, v4, v5}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-virtual {v0, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v4, ".widths"

    .line 214
    .line 215
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    add-int/lit8 v3, v3, 0x1

    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :cond_6
    new-instance v1, Ljava/io/FileOutputStream;

    .line 234
    .line 235
    const-string v2, "font_metrics.properties"

    .line 236
    .line 237
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :try_start_0
    const-string v2, "Font Metrics"

    .line 241
    .line 242
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :catchall_0
    move-exception v0

    .line 250
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 251
    .line 252
    .line 253
    throw v0
.end method
