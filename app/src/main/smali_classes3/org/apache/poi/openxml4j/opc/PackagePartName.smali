.class public final Lorg/apache/poi/openxml4j/opc/PackagePartName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/openxml4j/opc/PackagePartName;",
        ">;"
    }
.end annotation


# static fields
.field private static RFC3986_PCHAR_AUTHORIZED_SUP:[Ljava/lang/String;

.field private static RFC3986_PCHAR_SUB_DELIMS:[Ljava/lang/String;

.field private static RFC3986_PCHAR_UNRESERVED_SUP:[Ljava/lang/String;


# instance fields
.field private isRelationship:Z

.field private partNameURI:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v9, ";"

    const-string v10, "="

    const-string v0, "!"

    const-string v1, "$"

    const-string v2, "&"

    const-string v3, "\'"

    const-string v4, "("

    const-string v5, ")"

    const-string v6, "*"

    const-string v7, "+"

    const-string v8, ","

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->RFC3986_PCHAR_SUB_DELIMS:[Ljava/lang/String;

    const-string v0, "_"

    const-string v1, "~"

    const-string v2, "-"

    const-string v3, "."

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->RFC3986_PCHAR_UNRESERVED_SUP:[Ljava/lang/String;

    const-string v0, ":"

    const-string v1, "@"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->RFC3986_PCHAR_AUTHORIZED_SUP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfInvalidPartUri(Ljava/net/URI;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_ROOT_URI:Ljava/net/URI;

    invoke-virtual {p2, p1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationshipPartURI(Ljava/net/URI;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationship:Z

    return-void

    :cond_1
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;

    const-string p2, "OCP conformance must be check for ALL part name except special cases : [\'/\']"

    invoke-direct {p1, p2}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static checkPCharCompliance(Ljava/lang/String;)V
    .locals 15

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_15

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/16 v4, 0x39

    .line 14
    .line 15
    const/16 v5, 0x30

    .line 16
    .line 17
    const/16 v6, 0x7a

    .line 18
    .line 19
    const/16 v7, 0x61

    .line 20
    .line 21
    const/16 v8, 0x5a

    .line 22
    .line 23
    const/16 v9, 0x41

    .line 24
    .line 25
    const/4 v10, 0x1

    .line 26
    if-lt v3, v9, :cond_0

    .line 27
    .line 28
    if-le v3, v8, :cond_2

    .line 29
    .line 30
    :cond_0
    if-lt v3, v7, :cond_1

    .line 31
    .line 32
    if-le v3, v6, :cond_2

    .line 33
    .line 34
    :cond_1
    if-lt v3, v5, :cond_3

    .line 35
    .line 36
    if-gt v3, v4, :cond_3

    .line 37
    .line 38
    :cond_2
    const/4 v11, 0x0

    .line 39
    goto :goto_5

    .line 40
    :cond_3
    const/4 v11, 0x0

    .line 41
    :goto_1
    sget-object v12, Lorg/apache/poi/openxml4j/opc/PackagePartName;->RFC3986_PCHAR_UNRESERVED_SUP:[Ljava/lang/String;

    .line 42
    .line 43
    array-length v13, v12

    .line 44
    if-ge v11, v13, :cond_5

    .line 45
    .line 46
    aget-object v12, v12, v11

    .line 47
    .line 48
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    .line 49
    .line 50
    .line 51
    move-result v12

    .line 52
    if-ne v3, v12, :cond_4

    .line 53
    .line 54
    const/4 v11, 0x0

    .line 55
    goto :goto_2

    .line 56
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_5
    const/4 v11, 0x1

    .line 60
    :goto_2
    const/4 v12, 0x0

    .line 61
    :goto_3
    if-eqz v11, :cond_7

    .line 62
    .line 63
    sget-object v13, Lorg/apache/poi/openxml4j/opc/PackagePartName;->RFC3986_PCHAR_AUTHORIZED_SUP:[Ljava/lang/String;

    .line 64
    .line 65
    array-length v14, v13

    .line 66
    if-ge v12, v14, :cond_7

    .line 67
    .line 68
    aget-object v13, v13, v12

    .line 69
    .line 70
    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    if-ne v3, v13, :cond_6

    .line 75
    .line 76
    const/4 v11, 0x0

    .line 77
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_7
    const/4 v12, 0x0

    .line 81
    :goto_4
    if-eqz v11, :cond_9

    .line 82
    .line 83
    sget-object v13, Lorg/apache/poi/openxml4j/opc/PackagePartName;->RFC3986_PCHAR_SUB_DELIMS:[Ljava/lang/String;

    .line 84
    .line 85
    array-length v14, v13

    .line 86
    if-ge v12, v14, :cond_9

    .line 87
    .line 88
    aget-object v13, v13, v12

    .line 89
    .line 90
    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    .line 91
    .line 92
    .line 93
    move-result v13

    .line 94
    if-ne v3, v13, :cond_8

    .line 95
    .line 96
    const/4 v11, 0x0

    .line 97
    :cond_8
    add-int/lit8 v12, v12, 0x1

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_9
    :goto_5
    if-eqz v11, :cond_13

    .line 101
    .line 102
    const/16 v12, 0x25

    .line 103
    .line 104
    if-ne v3, v12, :cond_13

    .line 105
    .line 106
    sub-int v11, v0, v2

    .line 107
    .line 108
    const/4 v12, 0x2

    .line 109
    if-lt v11, v12, :cond_12

    .line 110
    .line 111
    add-int/lit8 v11, v2, 0x1

    .line 112
    .line 113
    add-int/lit8 v12, v2, 0x3

    .line 114
    .line 115
    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    const/16 v12, 0x10

    .line 120
    .line 121
    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    int-to-char v11, v11

    .line 126
    add-int/lit8 v2, v2, 0x2

    .line 127
    .line 128
    const/16 v12, 0x2f

    .line 129
    .line 130
    if-eq v11, v12, :cond_11

    .line 131
    .line 132
    const/16 v12, 0x5c

    .line 133
    .line 134
    if-eq v11, v12, :cond_11

    .line 135
    .line 136
    if-lt v11, v9, :cond_a

    .line 137
    .line 138
    if-le v11, v8, :cond_c

    .line 139
    .line 140
    :cond_a
    if-lt v11, v7, :cond_b

    .line 141
    .line 142
    if-le v11, v6, :cond_c

    .line 143
    .line 144
    :cond_b
    if-lt v11, v5, :cond_d

    .line 145
    .line 146
    if-gt v11, v4, :cond_d

    .line 147
    .line 148
    :cond_c
    const/4 v4, 0x1

    .line 149
    goto :goto_6

    .line 150
    :cond_d
    const/4 v4, 0x0

    .line 151
    :goto_6
    const/4 v5, 0x0

    .line 152
    :goto_7
    if-nez v4, :cond_f

    .line 153
    .line 154
    sget-object v6, Lorg/apache/poi/openxml4j/opc/PackagePartName;->RFC3986_PCHAR_UNRESERVED_SUP:[Ljava/lang/String;

    .line 155
    .line 156
    array-length v7, v6

    .line 157
    if-ge v5, v7, :cond_f

    .line 158
    .line 159
    aget-object v6, v6, v5

    .line 160
    .line 161
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-ne v3, v6, :cond_e

    .line 166
    .line 167
    const/4 v11, 0x1

    .line 168
    goto :goto_8

    .line 169
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 170
    .line 171
    goto :goto_7

    .line 172
    :cond_f
    move v11, v4

    .line 173
    :goto_8
    if-nez v11, :cond_10

    .line 174
    .line 175
    goto :goto_9

    .line 176
    :cond_10
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    .line 177
    .line 178
    const-string v0, "A segment shall not contain percent-encoded unreserved characters. [M1.8]"

    .line 179
    .line 180
    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p0

    .line 184
    :cond_11
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    .line 185
    .line 186
    const-string v0, "A segment shall not contain percent-encoded forward slash (\'/\'), or backward slash (\'\') characters. [M1.7]"

    .line 187
    .line 188
    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p0

    .line 192
    :cond_12
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    .line 193
    .line 194
    const-string v1, "The segment "

    .line 195
    .line 196
    const-string v2, " contain invalid encoded character !"

    .line 197
    .line 198
    invoke-static {v1, p0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v0

    .line 206
    :cond_13
    :goto_9
    if-nez v11, :cond_14

    .line 207
    .line 208
    add-int/2addr v2, v10

    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_14
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    .line 212
    .line 213
    const-string v0, "A segment shall not hold any characters other than pchar characters. [M1.6]"

    .line 214
    .line 215
    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw p0

    .line 219
    :cond_15
    return-void
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v0, v1, :cond_7

    if-ge v3, v2, :cond_7

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_6

    :goto_2
    if-ge v4, v1, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-ge v6, v2, :cond_4

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    move v0, v4

    move v3, v6

    goto :goto_1

    :cond_6
    if-eq v5, v7, :cond_5

    sub-int/2addr v5, v7

    return v5

    :cond_7
    sub-int/2addr v1, v2

    return v1
.end method

.method public static compare(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePartName;)I
    .locals 1

    .line 2
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private isRelationshipPartURI(Ljava/net/URI;)Z
    .locals 2

    .line 2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^.*/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->RELATIONSHIP_PART_SEGMENT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.*\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->RELATIONSHIP_PART_EXTENSION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "partUri"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static throwExceptionIfAbsoluteUri(Ljava/net/URI;)V
    .locals 3

    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Absolute URI forbidden: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwExceptionIfEmptyURI(Ljava/net/URI;)V
    .locals 3

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->FORWARD_SLASH_CHAR:C

    if-eq v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A part name shall not be empty [M1.1]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "partURI"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static throwExceptionIfInvalidPartUri(Ljava/net/URI;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfEmptyURI(Ljava/net/URI;)V

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfAbsoluteUri(Ljava/net/URI;)V

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfPartNameNotStartsWithForwardSlashChar(Ljava/net/URI;)V

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfPartNameEndsWithForwardSlashChar(Ljava/net/URI;)V

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->throwExceptionIfPartNameHaveInvalidSegments(Ljava/net/URI;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "partUri"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static throwExceptionIfPartNameEndsWithForwardSlashChar(Ljava/net/URI;)V
    .locals 3

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->FORWARD_SLASH_CHAR:C

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A part name shall not have a forward slash as the last character [M1.5]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private static throwExceptionIfPartNameHaveInvalidSegments(Ljava/net/URI;)V
    .locals 6

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const-string v2, "A part name shall not have empty segments [M1.3]: "

    const/4 v3, 0x1

    if-le v1, v3, :cond_4

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    array-length v1, v0

    if-ge v3, v1, :cond_3

    aget-object v1, v0, v3

    if-eqz v1, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "\\\\."

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->checkPCharCompliance(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A segment shall include at least one non-dot character. [M1.10]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A segment shall not end with a dot (\'.\') character [M1.9]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void

    :cond_4
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "partUri"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static throwExceptionIfPartNameNotStartsWithForwardSlashChar(Ljava/net/URI;)V
    .locals 3

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->FORWARD_SLASH_CHAR:C

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A part name shall start with a forward slash (\'/\') character [M1.4]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->compareTo(Lorg/apache/poi/openxml4j/opc/PackagePartName;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/poi/openxml4j/opc/PackagePartName;)I
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->compare(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePartName;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/apache/poi/openxml4j/opc/PackagePartName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/apache/poi/openxml4j/opc/PackagePartName;

    iget-object p1, p1, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getExtension()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->partNameURI:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isRelationshipPartURI()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationship:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
