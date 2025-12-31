.class public abstract Lcom/fasterxml/aalto/util/CharsetNames;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static encodingStartsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-lt v3, v0, :cond_1

    if-ge v4, v1, :cond_0

    goto :goto_1

    :cond_0
    return v5

    :cond_1
    :goto_1
    const/high16 v6, 0x10000

    if-lt v3, v0, :cond_2

    move v7, v3

    const/high16 v3, 0x10000

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_2
    if-lt v4, v1, :cond_3

    move v8, v4

    const/high16 v4, 0x10000

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_3
    if-ne v3, v4, :cond_5

    :cond_4
    move v3, v7

    move v4, v8

    goto :goto_0

    :cond_5
    :goto_4
    const/16 v9, 0x20

    if-le v3, v9, :cond_c

    const/16 v10, 0x5f

    if-eq v3, v10, :cond_c

    const/16 v11, 0x2d

    if-ne v3, v11, :cond_6

    goto :goto_7

    :cond_6
    :goto_5
    if-le v4, v9, :cond_a

    if-eq v4, v10, :cond_a

    if-ne v4, v11, :cond_7

    goto :goto_6

    :cond_7
    if-eq v3, v4, :cond_4

    if-ne v4, v6, :cond_8

    return v5

    :cond_8
    if-ne v3, v6, :cond_9

    return v2

    :cond_9
    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-eq v3, v4, :cond_4

    return v2

    :cond_a
    :goto_6
    if-lt v8, v1, :cond_b

    const/high16 v4, 0x10000

    goto :goto_5

    :cond_b
    add-int/lit8 v4, v8, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v12, v8

    move v8, v4

    move v4, v12

    goto :goto_5

    :cond_c
    :goto_7
    if-lt v7, v0, :cond_d

    const/high16 v3, 0x10000

    goto :goto_4

    :cond_d
    add-int/lit8 v3, v7, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v12, v7

    move v7, v3

    move v3, v12

    goto :goto_4
.end method

.method public static equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v3, v0, :cond_1

    if-ge v4, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_1
    const/high16 v5, 0x10000

    if-lt v3, v0, :cond_2

    move v6, v3

    const/high16 v3, 0x10000

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_2
    if-lt v4, v1, :cond_3

    move v7, v4

    const/high16 v4, 0x10000

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_3
    if-ne v3, v4, :cond_5

    :cond_4
    move v3, v6

    move v4, v7

    goto :goto_0

    :cond_5
    :goto_4
    const/16 v8, 0x20

    if-le v3, v8, :cond_c

    const/16 v9, 0x5f

    if-eq v3, v9, :cond_c

    const/16 v10, 0x2d

    if-ne v3, v10, :cond_6

    goto :goto_8

    :cond_6
    :goto_5
    if-le v4, v8, :cond_a

    if-eq v4, v9, :cond_a

    if-ne v4, v10, :cond_7

    goto :goto_7

    :cond_7
    if-eq v3, v4, :cond_4

    if-eq v3, v5, :cond_9

    if-ne v4, v5, :cond_8

    goto :goto_6

    :cond_8
    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-eq v3, v4, :cond_4

    :cond_9
    :goto_6
    return v2

    :cond_a
    :goto_7
    if-lt v7, v1, :cond_b

    const/high16 v4, 0x10000

    goto :goto_5

    :cond_b
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v11, v7

    move v7, v4

    move v4, v11

    goto :goto_5

    :cond_c
    :goto_8
    if-lt v6, v0, :cond_d

    const/high16 v3, 0x10000

    goto :goto_4

    :cond_d
    add-int/lit8 v3, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v11, v6

    move v6, v3

    move v3, v11

    goto :goto_4
.end method

.method public static findEncodingFor(Ljava/io/Writer;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->getEncoding()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/fasterxml/aalto/util/CharsetNames;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    if-eqz v0, :cond_26

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x53

    const/16 v5, 0x73

    const/4 v6, 0x1

    const/16 v7, 0x43

    const/16 v8, 0x63

    if-eq v2, v8, :cond_1

    if-ne v2, v7, :cond_3

    :cond_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v5, :cond_2

    if-ne v9, v4, :cond_3

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v1, 0x1

    :cond_3
    const/16 v9, 0x41

    const-string v10, "US-ASCII"

    if-eq v2, v9, :cond_23

    if-eq v2, v7, :cond_22

    const/16 v9, 0x45

    if-eq v2, v9, :cond_20

    const-string v9, "Shift_JIS"

    if-eq v2, v4, :cond_1f

    const/16 v11, 0x55

    const-string v12, "UCS-4"

    const-string v13, "UCS-2"

    const-string v14, "UTF-32"

    const-string v15, "ISO-8859-1"

    const-string v4, "UTF-16"

    if-eq v2, v11, :cond_e

    const/16 v11, 0x61

    if-eq v2, v11, :cond_23

    if-eq v2, v8, :cond_22

    const/16 v11, 0x65

    if-eq v2, v11, :cond_20

    if-eq v2, v5, :cond_1f

    const/16 v11, 0x75

    if-eq v2, v11, :cond_e

    const/16 v1, 0x49

    if-eq v2, v1, :cond_5

    const/16 v1, 0x4a

    if-eq v2, v1, :cond_4

    const/16 v1, 0x69

    if-eq v2, v1, :cond_5

    const/16 v1, 0x6a

    if-eq v2, v1, :cond_4

    goto/16 :goto_2

    :cond_4
    const-string v1, "JIS_Encoding"

    invoke-static {v0, v1}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    return-object v9

    :cond_5
    if-eq v0, v15, :cond_d

    invoke-static {v0, v15}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "ISO-Latin1"

    invoke-static {v0, v1}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    const-string v1, "ISO-10646"

    invoke-static {v0, v1}, Lcom/fasterxml/aalto/util/CharsetNames;->encodingStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "10646"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UCS-Basic"

    invoke-static {v1, v2}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-object v10

    :cond_7
    const-string v2, "Unicode-Latin1"

    invoke-static {v1, v2}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v15

    :cond_8
    invoke-static {v1, v13}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    return-object v4

    :cond_9
    invoke-static {v1, v12}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v14

    :cond_a
    const-string v2, "UTF-1"

    invoke-static {v1, v2}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v10

    :cond_b
    const-string v2, "J-1"

    invoke-static {v1, v2}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    return-object v10

    :cond_c
    invoke-static {v1, v10}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    return-object v10

    :cond_d
    :goto_0
    return-object v15

    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_f

    goto/16 :goto_2

    :cond_f
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v7, :cond_1d

    const/16 v3, 0x4e

    if-eq v2, v3, :cond_1a

    if-eq v2, v8, :cond_1d

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_1a

    const/16 v3, 0x53

    if-eq v2, v3, :cond_19

    const/16 v1, 0x54

    if-eq v2, v1, :cond_10

    if-eq v2, v5, :cond_19

    const/16 v1, 0x74

    if-eq v2, v1, :cond_10

    goto/16 :goto_2

    :cond_10
    const-string v1, "UTF-8"

    if-eq v0, v1, :cond_18

    invoke-static {v0, v1}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_1

    :cond_11
    const-string v1, "UTF-16BE"

    invoke-static {v0, v1}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    return-object v1

    :cond_12
    const-string v1, "UTF-16LE"

    invoke-static {v0, v1}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    return-object v1

    :cond_13
    invoke-static {v0, v4}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-object v4

    :cond_14
    const-string v1, "UTF-32BE"

    invoke-static {v0, v1}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    return-object v1

    :cond_15
    const-string v1, "UTF-32LE"

    invoke-static {v0, v1}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    return-object v1

    :cond_16
    invoke-static {v0, v14}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    return-object v14

    :cond_17
    const-string v1, "UTF"

    invoke-static {v0, v1}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    return-object v4

    :cond_18
    :goto_1
    return-object v1

    :cond_19
    invoke-static {v0, v10}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    return-object v10

    :cond_1a
    if-eqz v1, :cond_24

    const-string v1, "Unicode"

    invoke-static {v0, v1}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    return-object v4

    :cond_1b
    const-string v1, "UnicodeAscii"

    invoke-static {v0, v1}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object v15

    :cond_1c
    invoke-static {v0, v1}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    return-object v10

    :cond_1d
    invoke-static {v0, v13}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    return-object v4

    :cond_1e
    invoke-static {v0, v12}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    return-object v14

    :cond_1f
    invoke-static {v0, v9}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    return-object v9

    :cond_20
    const-string v1, "EBCDIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "ebcdic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_21
    return-object v1

    :cond_22
    const-string v1, "cs"

    invoke-static {v0, v1}, Lcom/fasterxml/aalto/util/CharsetNames;->encodingStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_23
    const-string v1, "ASCII"

    if-eq v0, v1, :cond_25

    invoke-static {v0, v1}, Lcom/fasterxml/aalto/util/CharsetNames;->equalEncodings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_3

    :cond_24
    :goto_2
    return-object v0

    :cond_25
    :goto_3
    return-object v10

    :cond_26
    :goto_4
    return-object v0
.end method
