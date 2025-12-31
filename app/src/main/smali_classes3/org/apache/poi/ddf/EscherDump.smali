.class public final Lorg/apache/poi/ddf/EscherDump;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dec1616(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    shr-int/lit8 v1, p1, 0x10

    .line 9
    .line 10
    int-to-short v1, v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v0, 0x2e

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const v1, 0xffff

    .line 40
    .line 41
    .line 42
    and-int/2addr p1, v1

    .line 43
    int-to-short p1, p1

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method private static getBlipType(B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getBlipType(B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lorg/apache/poi/ddf/EscherDump;->main([Ljava/lang/String;Ljava/io/PrintStream;)V

    return-void
.end method

.method public static main([Ljava/lang/String;Ljava/io/PrintStream;)V
    .locals 3

    .line 2
    const-string p0, "0F 00 00 F0 89 07 00 00 00 00 06 F0 18 00 00 00 05 04 00 00 02 00 00 00 05 00 00 00 01 00 00 00 01 00 00 00 05 00 00 00 4F 00 01 F0 2F 07 00 00 42 00 07 F0 B7 01 00 00 03 04 3F 14 AE 6B 0F 65 B0 48 BF 5E 94 63 80 E8 91 73 FF 00 93 01 00 00 01 00 00 00 00 00 00 00 00 00 FF FF 20 54 1C F0 8B 01 00 00 3F 14 AE 6B 0F 65 B0 48 BF 5E 94 63 80 E8 91 73 92 0E 00 00 00 00 00 00 00 00 00 00 D1 07 00 00 DD 05 00 00 4A AD 6F 00 8A C5 53 00 59 01 00 00 00 FE 78 9C E3 9B C4 00 04 AC 77 D9 2F 32 08 32 FD E7 61 F8 FF 0F C8 FD 05 C5 30 19 10 90 63 90 FA 0F 06 0C 8C 0C 5C 70 19 43 30 EB 0E FB 05 86 85 0C DB 18 58 80 72 8C 70 16 0B 83 05 56 51 29 88 C9 60 D9 69 0C 6C 20 26 23 03 C8 74 B0 A8 0E 03 07 FB 45 56 C7 A2 CC C4 1C 06 66 A0 0D 2C 40 39 5E 86 4C 06 3D A0 4E 10 D0 60 D9 C8 58 CC E8 CF B0 80 61 3A 8A 7E 0D C6 23 AC 4F E0 E2 98 B6 12 2B 06 73 9D 12 E3 52 56 59 F6 08 8A CC 52 66 A3 50 FF 96 2B 94 E9 DF 4C A1 FE 2D 3A 03 AB 9F 81 C2 F0 A3 54 BF 0F 85 EE A7 54 FF 40 FB 7F A0 E3 9F D2 F4 4F 71 FE 19 58 FF 2B 31 7F 67 36 3B 25 4F 99 1B 4E 53 A6 5F 89 25 95 E9 C4 00 C7 83 12 F3 1F 26 35 4A D3 D2 47 0E 0A C3 41 8E C9 8A 52 37 DC 15 A1 D0 0D BC 4C 06 0C 2B 28 2C 13 28 D4 EF 43 61 5A A0 58 3F 85 71 E0 4B 69 9E 64 65 FE 39 C0 E5 22 30 1D 30 27 0E 74 3A 18 60 FD 4A CC B1 2C 13 7D 07 36 2D 2A 31 85 B2 6A 0D 74 1D 1D 22 4D 99 FE 60 0A F5 9B EC 1C 58 FD 67 06 56 3F 38 0D 84 3C A5 30 0E 28 D3 AF C4 A4 CA FA 44 7A 0D 65 6E 60 7F 4D A1 1B 24 58 F7 49 AF A5 CC 0D CC DF 19 FE 03 00 F0 B1 25 4D 42 00 07 F0 E1 01 00 00 03 04 39 50 BE 98 B0 6F 57 24 31 70 5D 23 2F 9F 10 66 FF 00 BD 01 00 00 01 00 00 00 00 00 00 00 00 00 FF FF 20 54 1C F0 B5 01 00 00 39 50 BE 98 B0 6F 57 24 31 70 5D 23 2F 9F 10 66 DA 03 00 00 00 00 00 00 00 00 00 00 D1 07 00 00 DD 05 00 00 4A AD 6F 00 8A C5 53 00 83 01 00 00 00 FE 78 9C A5 52 BF 4B 42 51 14 3E F7 DC 77 7A 16 45 48 8B 3C 48 A8 16 15 0D 6C 88 D0 04 C3 40 A3 32 1C 84 96 08 21 04 A1 C5 5C A2 35 82 C0 35 6A AB 1C 6A 6B A8 24 5A 83 68 08 84 84 96 A2 86 A0 7F C2 86 5E E7 5E F5 41 E4 10 BC 03 1F E7 FB F1 CE B9 F7 F1 9E 7C 05 2E 7A 37 9B E0 45 7B 10 EC 6F 96 5F 1D 74 13 55 7E B0 6C 5D 20 60 C0 49 A2 9A BD 99 4F 50 83 1B 30 38 13 0E 33 60 A6 A7 6B B5 37 EB F4 10 FA 14 15 A0 B6 6B 37 0C 1E B3 49 73 5B A5 C2 26 48 3E C1 E0 6C 08 4A 30 C9 93 AA 02 B8 20 13 62 05 4E E1 E8 D7 7C C0 B8 14 95 5E BE B8 A7 CF 1E BE 55 2C 56 B9 78 DF 08 7E 88 4C 27 FF 7B DB FF 7A DD B7 1A 17 67 34 6A AE BA DA 35 D1 E7 72 BE FE EC 6E FE DA E5 7C 3D EC 7A DE 03 FD 50 06 0B 23 F2 0E F3 B2 A5 11 91 0D 4C B5 B5 F3 BF 94 C1 8F 24 F7 D9 6F 60 94 3B C9 9A F3 1C 6B E7 BB F0 2E 49 B2 25 2B C6 B1 EE 69 EE 15 63 4F 71 7D CE 85 CC C8 35 B9 C3 28 28 CE D0 5C 67 79 F2 4A A2 14 23 A4 38 43 73 9D 2D 69 2F C1 08 31 9F C5 5C 9B EB 7B C5 69 19 B3 B4 81 F3 DC E3 B4 8E 8B CC B3 94 53 5A E7 41 2A 63 9A AA 38 C5 3D 48 BB EC 57 59 6F 2B AD 73 1F 1D 60 92 AE 70 8C BB 8F CE 31 C1 3C 49 27 4A EB DC A4 5B 8C D1 0B 0E 73 37 E9 11 A7 99 C7 E8 41 69 B0 7F 00 96 F2 A7 E8 42 00 07 F0 B4 01 00 00 03 04 1A BA F9 D6 A9 B9 3A 03 08 61 E9 90 FF 7B 9E E6 FF 00 90 01 00 00 01 00 00 00 00 00 00 00 00 00 FF FF 20 54 1C F0 88 01 00 00 1A BA F9 D6 A9 B9 3A 03 08 61 E9 90 FF 7B 9E E6 12 0E 00 00 00 00 00 00 00 00 00 00 D1 07 00 00 DD 05 00 00 4A AD 6F 00 8A C5 53 00 56 01 00 00 00 FE 78 9C E3 13 62 00 02 D6 BB EC 17 19 04 99 FE F3 30 FC FF 07 E4 FE 82 62 98 0C 08 C8 31 48 FD 07 03 06 46 06 2E B8 8C 21 98 75 87 FD 02 C3 42 86 6D 0C 2C 40 39 46 38 8B 85 C1 02 AB A8 14 C4 64 B0 EC 34 06 36 10 93 91 01 64 3A 58 54 87 81 83 FD 22 AB 63 51 66 62 0E 03 33 D0 06 16 A0 1C 2F 43 26 83 1E 50 27 08 68 B0 6C 64 2C 66 F4 67 58 C0 30 1D 45 BF 06 E3 11 D6 27 70 71 4C 5B 89 15 83 B9 4E 89 71 29 AB 2C 7B 04 45 66 29 B3 51 A8 7F CB 15 CA F4 6F A6 50 FF 16 9D 81 D5 CF 40 61 F8 51 AA DF 87 42 F7 53 AA 7F A0 FD 3F D0 F1 4F 69 FA A7 38 FF 0C AC FF 95 98 BF 33 9B 9D 92 A7 CC 0D A7 29 D3 AF C4 92 CA 74 62 80 E3 41 89 F9 0F 93 1A A5 69 E9 23 07 85 E1 20 C7 64 45 A9 1B EE 8A 50 E8 06 5E 26 03 86 15 14 96 09 14 EA F7 A1 30 2D 50 AC 9F C2 38 F0 A5 34 4F B2 32 FF 1C E0 72 11 98 0E 98 13 07 38 1D 28 31 C7 B2 4C F4 1D D8 B4 A0 C4 14 CA AA 35 D0 75 64 88 34 65 FA 83 29 D4 6F B2 73 60 F5 9F A1 54 FF 0E CA D3 40 C8 53 0A E3 E0 09 85 6E 50 65 7D 22 BD 86 32 37 B0 BF A6 D0 0D 12 AC FB A4 D7 52 E6 06 E6 EF 0C FF 01 97 1D 12 C7 42 00 07 F0 C3 01 00 00 03 04 BA 4C B6 23 BA 8B 27 BE C8 55 59 86 24 9F 89 D4 FF 00 9F 01 00 00 01 00 00 00 00 00 00 00 00 00 FF FF 20 54 1C F0 97 01 00 00 BA 4C B6 23 BA 8B 27 BE C8 55 59 86 24 9F 89 D4 AE 0E 00 00 00 00 00 00 00 00 00 00 D1 07 00 00 DD 05 00 00 4A AD 6F 00 8A C5 53 00 65 01 00 00 00 FE 78 9C E3 5B C7 00 04 AC 77 D9 2F 32 08 32 FD E7 61 F8 FF 0F C8 FD 05 C5 30 19 10 90 63 90 FA 0F 06 0C 8C 0C 5C 70 19 43 30 EB 0E FB 05 86 85 0C DB 18 58 80 72 8C 70 16 0B 83 05 56 51 29 88 C9 60 D9 69 0C 6C 20 26 23 03 C8 74 B0 A8 0E 03 07 FB 45 56 C7 A2 CC C4 1C 06 66 A0 0D 2C 40 39 5E 86 4C 06 3D A0 4E 10 D0 60 99 C6 B8 98 D1 9F 61 01 C3 74 14 FD 1A 8C 2B D8 84 B1 88 4B A5 A5 75 03 01 50 DF 59 46 77 46 0F A8 3C A6 AB 88 15 83 B9 5E 89 B1 8B D5 97 2D 82 22 B3 94 29 D5 BF E5 CA C0 EA DF AC 43 A1 FD 14 EA 67 A0 30 FC 28 D5 EF 43 A1 FB 7D 87 B8 FF 07 3A FE 07 3A FD 53 EA 7E 0A C3 4F 89 F9 0E 73 EA 69 79 CA DC 70 8A 32 FD 4A 2C 5E 4C DF 87 7A 3C BC E0 A5 30 1E 3E 31 C5 33 AC A0 30 2F 52 A8 DF 87 C2 30 A4 54 3F A5 65 19 85 65 A9 12 D3 2B 16 0D 8A CB 13 4A F3 E3 27 E6 09 03 9D 0E 06 58 BF 12 B3 13 CB C1 01 4E 8B 4A 4C 56 AC 91 03 5D 37 86 48 53 A6 3F 98 42 FD 26 3B 07 56 FF 99 1D 14 EA A7 CC 7E 70 1A 08 79 42 61 1C 3C A5 D0 0D 9C 6C C2 32 6B 29 73 03 DB 6B CA DC C0 F8 97 F5 AD CC 1A CA DC C0 F4 83 32 37 B0 A4 30 CE FC C7 48 99 1B FE 33 32 FC 07 00 6C CC 2E 23 33 00 0B F0 12 00 00 00 BF 00 08 00 08 00 81 01 09 00 00 08 C0 01 40 00 00 08 40 00 1E F1 10 00 00 00 0D 00 00 08 0C 00 00 08 17 00 00 08 F7 00 00 10                                              "

    invoke-static {p0}, Lorg/apache/poi/util/HexRead;->readFromString(Ljava/lang/String;)[B

    move-result-object p0

    new-instance v0, Lorg/apache/poi/ddf/EscherDump;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherDump;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1, p1}, Lorg/apache/poi/ddf/EscherDump;->dump([BIILjava/io/PrintStream;)V

    return-void
.end method

.method private outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p3, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unable to output variable of that width"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p2}, Lorg/apache/poi/util/LittleEndian;->readShort(Ljava/io/InputStream;)S

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method private propName(S)Ljava/lang/String;
    .locals 277

    move-object/from16 v0, p0

    new-instance v1, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/4 v2, 0x4

    const-string v3, "transform.rotation"

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v3, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x77

    const-string v5, "protection.lockrotation"

    invoke-direct {v3, v0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v5, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x78

    const-string v7, "protection.lockaspectratio"

    invoke-direct {v5, v0, v6, v7}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v7, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v8, 0x79

    const-string v9, "protection.lockposition"

    invoke-direct {v7, v0, v8, v9}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v9, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v10, 0x7a

    const-string v11, "protection.lockagainstselect"

    invoke-direct {v9, v0, v10, v11}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v11, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v12, 0x7b

    const-string v13, "protection.lockcropping"

    invoke-direct {v11, v0, v12, v13}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v13, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x7c

    const-string v15, "protection.lockvertices"

    invoke-direct {v13, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v15, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x7d

    const-string v12, "protection.locktext"

    invoke-direct {v15, v0, v14, v12}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v12, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x7e

    const-string v10, "protection.lockadjusthandles"

    invoke-direct {v12, v0, v14, v10}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v10, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x7f

    const-string v8, "protection.lockagainstgrouping"

    invoke-direct {v10, v0, v14, v8}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v8, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x80

    const-string v6, "text.textid"

    invoke-direct {v8, v0, v14, v6}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v6, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x81

    const-string v4, "text.textleft"

    invoke-direct {v6, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x82

    const-string v2, "text.texttop"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x83

    move-object/from16 v16, v4

    const-string v4, "text.textright"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x84

    move-object/from16 v17, v2

    const-string v2, "text.textbottom"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x85

    move-object/from16 v18, v4

    const-string v4, "text.wraptext"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x86

    move-object/from16 v19, v2

    const-string v2, "text.scaletext"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x87

    move-object/from16 v20, v4

    const-string v4, "text.anchortext"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x88

    move-object/from16 v21, v2

    const-string v2, "text.textflow"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x89

    move-object/from16 v22, v4

    const-string v4, "text.fontrotation"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x8a

    move-object/from16 v23, v2

    const-string v2, "text.idofnextshape"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x8b

    move-object/from16 v24, v4

    const-string v4, "text.bidir"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xbb

    move-object/from16 v25, v2

    const-string v2, "text.singleclickselects"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xbc

    move-object/from16 v26, v4

    const-string v4, "text.usehostmargins"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xbd

    move-object/from16 v27, v2

    const-string v2, "text.rotatetextwithshape"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xbe

    move-object/from16 v28, v4

    const-string v4, "text.sizeshapetofittext"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xbf

    move-object/from16 v29, v2

    const-string v2, "text.sizetexttofitshape"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xc0

    move-object/from16 v30, v4

    const-string v4, "geotext.unicode"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xc1

    move-object/from16 v31, v2

    const-string v2, "geotext.rtftext"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xc2

    move-object/from16 v32, v4

    const-string v4, "geotext.alignmentoncurve"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xc3

    move-object/from16 v33, v2

    const-string v2, "geotext.defaultpointsize"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xc4

    move-object/from16 v34, v4

    const-string v4, "geotext.textspacing"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xc5

    move-object/from16 v35, v2

    const-string v2, "geotext.fontfamilyname"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xf0

    move-object/from16 v36, v4

    const-string v4, "geotext.reverseroworder"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xf1

    move-object/from16 v37, v2

    const-string v2, "geotext.hastexteffect"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xf2

    move-object/from16 v38, v4

    const-string v4, "geotext.rotatecharacters"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xf3

    move-object/from16 v39, v2

    const-string v2, "geotext.kerncharacters"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xf4

    move-object/from16 v40, v4

    const-string v4, "geotext.tightortrack"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xf5

    move-object/from16 v41, v2

    const-string v2, "geotext.stretchtofitshape"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xf6

    move-object/from16 v42, v4

    const-string v4, "geotext.charboundingbox"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xf7

    move-object/from16 v43, v2

    const-string v2, "geotext.scaletextonpath"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xf8

    move-object/from16 v44, v4

    const-string v4, "geotext.stretchcharheight"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xf9

    move-object/from16 v45, v2

    const-string v2, "geotext.nomeasurealongpath"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xfa

    move-object/from16 v46, v4

    const-string v4, "geotext.boldfont"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xfb

    move-object/from16 v47, v2

    const-string v2, "geotext.italicfont"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xfc

    move-object/from16 v48, v4

    const-string v4, "geotext.underlinefont"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xfd

    move-object/from16 v49, v2

    const-string v2, "geotext.shadowfont"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xfe

    move-object/from16 v50, v4

    const-string v4, "geotext.smallcapsfont"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xff

    move-object/from16 v51, v2

    const-string v2, "geotext.strikethroughfont"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x100

    move-object/from16 v52, v4

    const-string v4, "blip.cropfromtop"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x101

    move-object/from16 v53, v2

    const-string v2, "blip.cropfrombottom"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x102

    move-object/from16 v54, v4

    const-string v4, "blip.cropfromleft"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x103

    move-object/from16 v55, v2

    const-string v2, "blip.cropfromright"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x104

    move-object/from16 v56, v4

    const-string v4, "blip.bliptodisplay"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x105

    move-object/from16 v57, v2

    const-string v2, "blip.blipfilename"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x106

    move-object/from16 v58, v4

    const-string v4, "blip.blipflags"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x107

    move-object/from16 v59, v2

    const-string v2, "blip.transparentcolor"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x108

    move-object/from16 v60, v4

    const-string v4, "blip.contrastsetting"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x109

    move-object/from16 v61, v2

    const-string v2, "blip.brightnesssetting"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x10a

    move-object/from16 v62, v4

    const-string v4, "blip.gamma"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x10b

    move-object/from16 v63, v2

    const-string v2, "blip.pictureid"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x10c

    move-object/from16 v64, v4

    const-string v4, "blip.doublemod"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x10d

    move-object/from16 v65, v2

    const-string v2, "blip.picturefillmod"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x10e

    move-object/from16 v66, v4

    const-string v4, "blip.pictureline"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x10f

    move-object/from16 v67, v2

    const-string v2, "blip.printblip"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x110

    move-object/from16 v68, v4

    const-string v4, "blip.printblipfilename"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x111

    move-object/from16 v69, v2

    const-string v2, "blip.printflags"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x13c

    move-object/from16 v70, v4

    const-string v4, "blip.nohittestpicture"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x13d

    move-object/from16 v71, v2

    const-string v2, "blip.picturegray"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x13e

    move-object/from16 v72, v4

    const-string v4, "blip.picturebilevel"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x13f

    move-object/from16 v73, v2

    const-string v2, "blip.pictureactive"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x140

    move-object/from16 v74, v4

    const-string v4, "geometry.left"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x141

    move-object/from16 v75, v2

    const-string v2, "geometry.top"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x142

    move-object/from16 v76, v4

    const-string v4, "geometry.right"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x143

    move-object/from16 v77, v2

    const-string v2, "geometry.bottom"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x144

    move-object/from16 v78, v4

    const-string v4, "geometry.shapepath"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x145

    move-object/from16 v79, v2

    const-string v2, "geometry.vertices"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x146

    move-object/from16 v80, v4

    const-string v4, "geometry.segmentinfo"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x147

    move-object/from16 v81, v2

    const-string v2, "geometry.adjustvalue"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x148

    move-object/from16 v82, v4

    const-string v4, "geometry.adjust2value"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x149

    move-object/from16 v83, v2

    const-string v2, "geometry.adjust3value"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x14a

    move-object/from16 v84, v4

    const-string v4, "geometry.adjust4value"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x14b

    move-object/from16 v85, v2

    const-string v2, "geometry.adjust5value"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x14c

    move-object/from16 v86, v4

    const-string v4, "geometry.adjust6value"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x14d

    move-object/from16 v87, v2

    const-string v2, "geometry.adjust7value"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x14e

    move-object/from16 v88, v4

    const-string v4, "geometry.adjust8value"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x14f

    move-object/from16 v89, v2

    const-string v2, "geometry.adjust9value"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x150

    move-object/from16 v90, v4

    const-string v4, "geometry.adjust10value"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x17a

    move-object/from16 v91, v2

    const-string v2, "geometry.shadowOK"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x17b

    move-object/from16 v92, v4

    const-string v4, "geometry.3dok"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x17c

    move-object/from16 v93, v2

    const-string v2, "geometry.lineok"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x17d

    move-object/from16 v94, v4

    const-string v4, "geometry.geotextok"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x17e

    move-object/from16 v95, v2

    const-string v2, "geometry.fillshadeshapeok"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x17f

    move-object/from16 v96, v4

    const-string v4, "geometry.fillok"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x180

    move-object/from16 v97, v2

    const-string v2, "fill.filltype"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x181

    move-object/from16 v98, v4

    const-string v4, "fill.fillcolor"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x182

    move-object/from16 v99, v2

    const-string v2, "fill.fillopacity"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x183

    move-object/from16 v100, v4

    const-string v4, "fill.fillbackcolor"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x184

    move-object/from16 v101, v2

    const-string v2, "fill.backopacity"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x185

    move-object/from16 v102, v4

    const-string v4, "fill.crmod"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x186

    move-object/from16 v103, v2

    const-string v2, "fill.patterntexture"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x187

    move-object/from16 v104, v4

    const-string v4, "fill.blipfilename"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x188

    move-object/from16 v105, v2

    const-string v2, "fill.blipflags"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x189

    move-object/from16 v106, v4

    const-string v4, "fill.width"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x18a

    move-object/from16 v107, v2

    const-string v2, "fill.height"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x18b

    move-object/from16 v108, v4

    const-string v4, "fill.angle"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x18c

    move-object/from16 v109, v2

    const-string v2, "fill.focus"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x18d

    move-object/from16 v110, v4

    const-string v4, "fill.toleft"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x18e

    move-object/from16 v111, v2

    const-string v2, "fill.totop"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x18f

    move-object/from16 v112, v4

    const-string v4, "fill.toright"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x190

    move-object/from16 v113, v2

    const-string v2, "fill.tobottom"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x191

    move-object/from16 v114, v4

    const-string v4, "fill.rectleft"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x192

    move-object/from16 v115, v2

    const-string v2, "fill.recttop"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x193

    move-object/from16 v116, v4

    const-string v4, "fill.rectright"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x194

    move-object/from16 v117, v2

    const-string v2, "fill.rectbottom"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x195

    move-object/from16 v118, v4

    const-string v4, "fill.dztype"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x196

    move-object/from16 v119, v2

    const-string v2, "fill.shadepreset"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x197

    move-object/from16 v120, v4

    const-string v4, "fill.shadecolors"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x198

    move-object/from16 v121, v2

    const-string v2, "fill.originx"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x199

    move-object/from16 v122, v4

    const-string v4, "fill.originy"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x19a

    move-object/from16 v123, v2

    const-string v2, "fill.shapeoriginx"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x19b

    move-object/from16 v124, v4

    const-string v4, "fill.shapeoriginy"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x19c

    move-object/from16 v125, v2

    const-string v2, "fill.shadetype"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1bb

    move-object/from16 v126, v4

    const-string v4, "fill.filled"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1bc

    move-object/from16 v127, v2

    const-string v2, "fill.hittestfill"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1bd

    move-object/from16 v128, v4

    const-string v4, "fill.shape"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1be

    move-object/from16 v129, v2

    const-string v2, "fill.userect"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1bf

    move-object/from16 v130, v4

    const-string v4, "fill.nofillhittest"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1c0

    move-object/from16 v131, v2

    const-string v2, "linestyle.color"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1c1

    move-object/from16 v132, v4

    const-string v4, "linestyle.opacity"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1c2

    move-object/from16 v133, v2

    const-string v2, "linestyle.backcolor"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1c3

    move-object/from16 v134, v4

    const-string v4, "linestyle.crmod"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1c4

    move-object/from16 v135, v2

    const-string v2, "linestyle.linetype"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1c5

    move-object/from16 v136, v4

    const-string v4, "linestyle.fillblip"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1c6

    move-object/from16 v137, v2

    const-string v2, "linestyle.fillblipname"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1c7

    move-object/from16 v138, v4

    const-string v4, "linestyle.fillblipflags"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1c8

    move-object/from16 v139, v2

    const-string v2, "linestyle.fillwidth"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1c9

    move-object/from16 v140, v4

    const-string v4, "linestyle.fillheight"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1ca

    move-object/from16 v141, v2

    const-string v2, "linestyle.filldztype"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1cb

    move-object/from16 v142, v4

    const-string v4, "linestyle.linewidth"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1cc

    move-object/from16 v143, v2

    const-string v2, "linestyle.linemiterlimit"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1cd

    move-object/from16 v144, v4

    const-string v4, "linestyle.linestyle"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1ce

    move-object/from16 v145, v2

    const-string v2, "linestyle.linedashing"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1cf

    move-object/from16 v146, v4

    const-string v4, "linestyle.linedashstyle"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1d0

    move-object/from16 v147, v2

    const-string v2, "linestyle.linestartarrowhead"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1d1

    move-object/from16 v148, v4

    const-string v4, "linestyle.lineendarrowhead"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1d2

    move-object/from16 v149, v2

    const-string v2, "linestyle.linestartarrowwidth"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1d3

    move-object/from16 v150, v4

    const-string v4, "linestyle.lineestartarrowlength"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1d4

    move-object/from16 v151, v2

    const-string v2, "linestyle.lineendarrowwidth"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1d5

    move-object/from16 v152, v4

    const-string v4, "linestyle.lineendarrowlength"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1d6

    move-object/from16 v153, v2

    const-string v2, "linestyle.linejoinstyle"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1d7

    move-object/from16 v154, v4

    const-string v4, "linestyle.lineendcapstyle"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1fb

    move-object/from16 v155, v2

    const-string v2, "linestyle.arrowheadsok"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1fc

    move-object/from16 v156, v4

    const-string v4, "linestyle.anyline"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1fd

    move-object/from16 v157, v2

    const-string v2, "linestyle.hitlinetest"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1fe

    move-object/from16 v158, v4

    const-string v4, "linestyle.linefillshape"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x1ff

    move-object/from16 v159, v2

    const-string v2, "linestyle.nolinedrawdash"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x200

    move-object/from16 v160, v4

    const-string v4, "shadowstyle.type"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x201

    move-object/from16 v161, v2

    const-string v2, "shadowstyle.color"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x202

    move-object/from16 v162, v4

    const-string v4, "shadowstyle.highlight"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x203

    move-object/from16 v163, v2

    const-string v2, "shadowstyle.crmod"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x204

    move-object/from16 v164, v4

    const-string v4, "shadowstyle.opacity"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x205

    move-object/from16 v165, v2

    const-string v2, "shadowstyle.offsetx"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x206

    move-object/from16 v166, v4

    const-string v4, "shadowstyle.offsety"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x207

    move-object/from16 v167, v2

    const-string v2, "shadowstyle.secondoffsetx"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x208

    move-object/from16 v168, v4

    const-string v4, "shadowstyle.secondoffsety"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x209

    move-object/from16 v169, v2

    const-string v2, "shadowstyle.scalextox"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x20a

    move-object/from16 v170, v4

    const-string v4, "shadowstyle.scaleytox"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x20b

    move-object/from16 v171, v2

    const-string v2, "shadowstyle.scalextoy"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x20c

    move-object/from16 v172, v4

    const-string v4, "shadowstyle.scaleytoy"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x20d

    move-object/from16 v173, v2

    const-string v2, "shadowstyle.perspectivex"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x20e

    move-object/from16 v174, v4

    const-string v4, "shadowstyle.perspectivey"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x20f

    move-object/from16 v175, v2

    const-string v2, "shadowstyle.weight"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x210

    move-object/from16 v176, v4

    const-string v4, "shadowstyle.originx"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x211

    move-object/from16 v177, v2

    const-string v2, "shadowstyle.originy"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x23e

    move-object/from16 v178, v4

    const-string v4, "shadowstyle.shadow"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x23f

    move-object/from16 v179, v2

    const-string v2, "shadowstyle.shadowobsured"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x240

    move-object/from16 v180, v4

    const-string v4, "perspective.type"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x241

    move-object/from16 v181, v2

    const-string v2, "perspective.offsetx"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x242

    move-object/from16 v182, v4

    const-string v4, "perspective.offsety"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x243

    move-object/from16 v183, v2

    const-string v2, "perspective.scalextox"

    invoke-direct {v4, v0, v14, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x244

    move-object/from16 v184, v4

    const-string v4, "perspective.scaleytox"

    invoke-direct {v2, v0, v14, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v14, Lorg/apache/poi/ddf/EscherDump$1PropName;

    move-object/from16 v185, v2

    const/16 v2, 0x245

    move-object/from16 v186, v6

    const-string v6, "perspective.scalextoy"

    invoke-direct {v14, v0, v2, v6}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x246

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x247

    move-object/from16 v187, v2

    const-string v2, "perspective.perspectivex"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x248

    move-object/from16 v188, v4

    const-string v4, "perspective.perspectivey"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x249

    move-object/from16 v189, v2

    const-string v2, "perspective.weight"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x24a

    move-object/from16 v190, v4

    const-string v4, "perspective.originx"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x24b

    move-object/from16 v191, v2

    const-string v2, "perspective.originy"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x27f

    move-object/from16 v192, v4

    const-string v4, "perspective.perspectiveon"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x280

    move-object/from16 v193, v2

    const-string v2, "3d.specularamount"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x295

    move-object/from16 v194, v4

    const-string v4, "3d.diffuseamount"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x296

    move-object/from16 v195, v2

    const-string v2, "3d.shininess"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x297

    move-object/from16 v196, v4

    const-string v4, "3d.edgethickness"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x298

    move-object/from16 v197, v2

    const-string v2, "3d.extrudeforward"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x299

    move-object/from16 v198, v4

    const-string v4, "3d.extrudebackward"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x29a

    move-object/from16 v199, v2

    const-string v2, "3d.extrudeplane"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x29b

    move-object/from16 v200, v4

    const-string v4, "3d.extrusioncolor"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x288

    move-object/from16 v201, v2

    const-string v2, "3d.crmod"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2bc

    move-object/from16 v202, v4

    const-string v4, "3d.3deffect"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2bd

    move-object/from16 v203, v2

    const-string v2, "3d.metallic"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2be

    move-object/from16 v204, v4

    const-string v4, "3d.useextrusioncolor"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2bf

    move-object/from16 v205, v2

    const-string v2, "3d.lightface"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2c0

    move-object/from16 v206, v4

    const-string v4, "3dstyle.yrotationangle"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2c1

    move-object/from16 v207, v2

    const-string v2, "3dstyle.xrotationangle"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2c2

    move-object/from16 v208, v4

    const-string v4, "3dstyle.rotationaxisx"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2c3

    move-object/from16 v209, v2

    const-string v2, "3dstyle.rotationaxisy"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2c4

    move-object/from16 v210, v4

    const-string v4, "3dstyle.rotationaxisz"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2c5

    move-object/from16 v211, v2

    const-string v2, "3dstyle.rotationangle"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2c6

    move-object/from16 v212, v4

    const-string v4, "3dstyle.rotationcenterx"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2c7

    move-object/from16 v213, v2

    const-string v2, "3dstyle.rotationcentery"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2c8

    move-object/from16 v214, v4

    const-string v4, "3dstyle.rotationcenterz"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2c9

    move-object/from16 v215, v2

    const-string v2, "3dstyle.rendermode"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2ca

    move-object/from16 v216, v4

    const-string v4, "3dstyle.tolerance"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2cb

    move-object/from16 v217, v2

    const-string v2, "3dstyle.xviewpoint"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2cc

    move-object/from16 v218, v4

    const-string v4, "3dstyle.yviewpoint"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2cd

    move-object/from16 v219, v2

    const-string v2, "3dstyle.zviewpoint"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2ce

    move-object/from16 v220, v4

    const-string v4, "3dstyle.originx"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2cf

    move-object/from16 v221, v2

    const-string v2, "3dstyle.originy"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2d0

    move-object/from16 v222, v4

    const-string v4, "3dstyle.skewangle"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2d1

    move-object/from16 v223, v2

    const-string v2, "3dstyle.skewamount"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2d2

    move-object/from16 v224, v4

    const-string v4, "3dstyle.ambientintensity"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2d3

    move-object/from16 v225, v2

    const-string v2, "3dstyle.keyx"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2d4

    move-object/from16 v226, v4

    const-string v4, "3dstyle.keyy"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2d5

    move-object/from16 v227, v2

    const-string v2, "3dstyle.keyz"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2d6

    move-object/from16 v228, v4

    const-string v4, "3dstyle.keyintensity"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2d7

    move-object/from16 v229, v2

    const-string v2, "3dstyle.fillx"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2d8

    move-object/from16 v230, v4

    const-string v4, "3dstyle.filly"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2d9

    move-object/from16 v231, v2

    const-string v2, "3dstyle.fillz"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2da

    move-object/from16 v232, v4

    const-string v4, "3dstyle.fillintensity"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2fb

    move-object/from16 v233, v2

    const-string v2, "3dstyle.constrainrotation"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2fc

    move-object/from16 v234, v4

    const-string v4, "3dstyle.rotationcenterauto"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2fd

    move-object/from16 v235, v2

    const-string v2, "3dstyle.parallel"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2fe

    move-object/from16 v236, v4

    const-string v4, "3dstyle.keyharsh"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x2ff

    move-object/from16 v237, v2

    const-string v2, "3dstyle.fillharsh"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x301

    move-object/from16 v238, v4

    const-string v4, "shape.master"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x303

    move-object/from16 v239, v2

    const-string v2, "shape.connectorstyle"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x304

    move-object/from16 v240, v4

    const-string v4, "shape.blackandwhitesettings"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x305

    move-object/from16 v241, v2

    const-string v2, "shape.wmodepurebw"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x306

    move-object/from16 v242, v4

    const-string v4, "shape.wmodebw"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x33a

    move-object/from16 v243, v2

    const-string v2, "shape.oleicon"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x33b

    move-object/from16 v244, v4

    const-string v4, "shape.preferrelativeresize"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x33c

    move-object/from16 v245, v2

    const-string v2, "shape.lockshapetype"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x33e

    move-object/from16 v246, v4

    const-string v4, "shape.deleteattachedobject"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x33f

    move-object/from16 v247, v2

    const-string v2, "shape.backgroundshape"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x340

    move-object/from16 v248, v4

    const-string v4, "callout.callouttype"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x341

    move-object/from16 v249, v2

    const-string v2, "callout.xycalloutgap"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x342

    move-object/from16 v250, v4

    const-string v4, "callout.calloutangle"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x343

    move-object/from16 v251, v2

    const-string v2, "callout.calloutdroptype"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x344

    move-object/from16 v252, v4

    const-string v4, "callout.calloutdropspecified"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x345

    move-object/from16 v253, v2

    const-string v2, "callout.calloutlengthspecified"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x379

    move-object/from16 v254, v4

    const-string v4, "callout.iscallout"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x37a

    move-object/from16 v255, v2

    const-string v2, "callout.calloutaccentbar"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x37b

    move-object/16 v256, v4

    const-string v4, "callout.callouttextborder"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x37c

    move-object/16 v257, v2

    const-string v2, "callout.calloutminusx"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x37d

    move-object/16 v258, v4

    const-string v4, "callout.calloutminusy"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x37e

    move-object/16 v259, v2

    const-string v2, "callout.dropauto"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x37f

    move-object/16 v260, v4

    const-string v4, "callout.lengthspecified"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x380

    move-object/16 v261, v2

    const-string v2, "groupshape.shapename"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x381

    move-object/16 v262, v4

    const-string v4, "groupshape.description"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x382

    move-object/16 v263, v2

    const-string v2, "groupshape.hyperlink"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x383

    move-object/16 v264, v4

    const-string v4, "groupshape.wrappolygonvertices"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x384

    move-object/16 v265, v2

    const-string v2, "groupshape.wrapdistleft"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x385

    move-object/16 v266, v4

    const-string v4, "groupshape.wrapdisttop"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x386

    move-object/16 v267, v2

    const-string v2, "groupshape.wrapdistright"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x387

    move-object/16 v268, v4

    const-string v4, "groupshape.wrapdistbottom"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x388

    move-object/16 v269, v2

    const-string v2, "groupshape.regroupid"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x3b9

    move-object/16 v270, v4

    const-string v4, "groupshape.editedwrap"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x3ba

    move-object/16 v271, v2

    const-string v2, "groupshape.behinddocument"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x3bb

    move-object/16 v272, v4

    const-string v4, "groupshape.ondblclicknotify"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x3bc

    move-object/16 v273, v2

    const-string v2, "groupshape.isbutton"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x3bd

    move-object/16 v274, v4

    const-string v4, "groupshape.1dadjustment"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v4, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x3be

    move-object/16 v275, v2

    const-string v2, "groupshape.hidden"

    invoke-direct {v4, v0, v6, v2}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x3bf

    move-object/16 v276, v4

    const-string v4, "groupshape.print"

    invoke-direct {v2, v0, v6, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v4, 0x112

    new-array v4, v4, [Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/4 v6, 0x0

    aput-object v1, v4, v6

    const/4 v1, 0x1

    aput-object v3, v4, v1

    const/4 v1, 0x2

    aput-object v5, v4, v1

    const/4 v1, 0x3

    aput-object v7, v4, v1

    const/4 v1, 0x4

    aput-object v9, v4, v1

    const/4 v1, 0x5

    aput-object v11, v4, v1

    const/4 v1, 0x6

    aput-object v13, v4, v1

    const/4 v1, 0x7

    aput-object v15, v4, v1

    const/16 v1, 0x8

    aput-object v12, v4, v1

    const/16 v1, 0x9

    aput-object v10, v4, v1

    const/16 v1, 0xa

    aput-object v8, v4, v1

    const/16 v1, 0xb

    aput-object v186, v4, v1

    const/16 v1, 0xc

    aput-object v16, v4, v1

    const/16 v1, 0xd

    aput-object v17, v4, v1

    const/16 v1, 0xe

    aput-object v18, v4, v1

    const/16 v1, 0xf

    aput-object v19, v4, v1

    const/16 v1, 0x10

    aput-object v20, v4, v1

    const/16 v1, 0x11

    aput-object v21, v4, v1

    const/16 v1, 0x12

    aput-object v22, v4, v1

    const/16 v1, 0x13

    aput-object v23, v4, v1

    const/16 v1, 0x14

    aput-object v24, v4, v1

    const/16 v1, 0x15

    aput-object v25, v4, v1

    const/16 v1, 0x16

    aput-object v26, v4, v1

    const/16 v1, 0x17

    aput-object v27, v4, v1

    const/16 v1, 0x18

    aput-object v28, v4, v1

    const/16 v1, 0x19

    aput-object v29, v4, v1

    const/16 v1, 0x1a

    aput-object v30, v4, v1

    const/16 v1, 0x1b

    aput-object v31, v4, v1

    const/16 v1, 0x1c

    aput-object v32, v4, v1

    const/16 v1, 0x1d

    aput-object v33, v4, v1

    const/16 v1, 0x1e

    aput-object v34, v4, v1

    const/16 v1, 0x1f

    aput-object v35, v4, v1

    const/16 v1, 0x20

    aput-object v36, v4, v1

    const/16 v1, 0x21

    aput-object v37, v4, v1

    const/16 v1, 0x22

    aput-object v38, v4, v1

    const/16 v1, 0x23

    aput-object v39, v4, v1

    const/16 v1, 0x24

    aput-object v40, v4, v1

    const/16 v1, 0x25

    aput-object v41, v4, v1

    const/16 v1, 0x26

    aput-object v42, v4, v1

    const/16 v1, 0x27

    aput-object v43, v4, v1

    const/16 v1, 0x28

    aput-object v44, v4, v1

    const/16 v1, 0x29

    aput-object v45, v4, v1

    const/16 v1, 0x2a

    aput-object v46, v4, v1

    const/16 v1, 0x2b

    aput-object v47, v4, v1

    const/16 v1, 0x2c

    aput-object v48, v4, v1

    const/16 v1, 0x2d

    aput-object v49, v4, v1

    const/16 v1, 0x2e

    aput-object v50, v4, v1

    const/16 v1, 0x2f

    aput-object v51, v4, v1

    const/16 v1, 0x30

    aput-object v52, v4, v1

    const/16 v1, 0x31

    aput-object v53, v4, v1

    const/16 v1, 0x32

    aput-object v54, v4, v1

    const/16 v1, 0x33

    aput-object v55, v4, v1

    const/16 v1, 0x34

    aput-object v56, v4, v1

    const/16 v1, 0x35

    aput-object v57, v4, v1

    const/16 v1, 0x36

    aput-object v58, v4, v1

    const/16 v1, 0x37

    aput-object v59, v4, v1

    const/16 v1, 0x38

    aput-object v60, v4, v1

    const/16 v1, 0x39

    aput-object v61, v4, v1

    const/16 v1, 0x3a

    aput-object v62, v4, v1

    const/16 v1, 0x3b

    aput-object v63, v4, v1

    const/16 v1, 0x3c

    aput-object v64, v4, v1

    const/16 v1, 0x3d

    aput-object v65, v4, v1

    const/16 v1, 0x3e

    aput-object v66, v4, v1

    const/16 v1, 0x3f

    aput-object v67, v4, v1

    const/16 v1, 0x40

    aput-object v68, v4, v1

    const/16 v1, 0x41

    aput-object v69, v4, v1

    const/16 v1, 0x42

    aput-object v70, v4, v1

    const/16 v1, 0x43

    aput-object v71, v4, v1

    const/16 v1, 0x44

    aput-object v72, v4, v1

    const/16 v1, 0x45

    aput-object v73, v4, v1

    const/16 v1, 0x46

    aput-object v74, v4, v1

    const/16 v1, 0x47

    aput-object v75, v4, v1

    const/16 v1, 0x48

    aput-object v76, v4, v1

    const/16 v1, 0x49

    aput-object v77, v4, v1

    const/16 v1, 0x4a

    aput-object v78, v4, v1

    const/16 v1, 0x4b

    aput-object v79, v4, v1

    const/16 v1, 0x4c

    aput-object v80, v4, v1

    const/16 v1, 0x4d

    aput-object v81, v4, v1

    const/16 v1, 0x4e

    aput-object v82, v4, v1

    const/16 v1, 0x4f

    aput-object v83, v4, v1

    const/16 v1, 0x50

    aput-object v84, v4, v1

    const/16 v1, 0x51

    aput-object v85, v4, v1

    const/16 v1, 0x52

    aput-object v86, v4, v1

    const/16 v1, 0x53

    aput-object v87, v4, v1

    const/16 v1, 0x54

    aput-object v88, v4, v1

    const/16 v1, 0x55

    aput-object v89, v4, v1

    const/16 v1, 0x56

    aput-object v90, v4, v1

    const/16 v1, 0x57

    aput-object v91, v4, v1

    const/16 v1, 0x58

    aput-object v92, v4, v1

    const/16 v1, 0x59

    aput-object v93, v4, v1

    const/16 v1, 0x5a

    aput-object v94, v4, v1

    const/16 v1, 0x5b

    aput-object v95, v4, v1

    const/16 v1, 0x5c

    aput-object v96, v4, v1

    const/16 v1, 0x5d

    aput-object v97, v4, v1

    const/16 v1, 0x5e

    aput-object v98, v4, v1

    const/16 v1, 0x5f

    aput-object v99, v4, v1

    const/16 v1, 0x60

    aput-object v100, v4, v1

    const/16 v1, 0x61

    aput-object v101, v4, v1

    const/16 v1, 0x62

    aput-object v102, v4, v1

    const/16 v1, 0x63

    aput-object v103, v4, v1

    const/16 v1, 0x64

    aput-object v104, v4, v1

    const/16 v1, 0x65

    aput-object v105, v4, v1

    const/16 v1, 0x66

    aput-object v106, v4, v1

    const/16 v1, 0x67

    aput-object v107, v4, v1

    const/16 v1, 0x68

    aput-object v108, v4, v1

    const/16 v1, 0x69

    aput-object v109, v4, v1

    const/16 v1, 0x6a

    aput-object v110, v4, v1

    const/16 v1, 0x6b

    aput-object v111, v4, v1

    const/16 v1, 0x6c

    aput-object v112, v4, v1

    const/16 v1, 0x6d

    aput-object v113, v4, v1

    const/16 v1, 0x6e

    aput-object v114, v4, v1

    const/16 v1, 0x6f

    aput-object v115, v4, v1

    const/16 v1, 0x70

    aput-object v116, v4, v1

    const/16 v1, 0x71

    aput-object v117, v4, v1

    const/16 v1, 0x72

    aput-object v118, v4, v1

    const/16 v1, 0x73

    aput-object v119, v4, v1

    const/16 v1, 0x74

    aput-object v120, v4, v1

    const/16 v1, 0x75

    aput-object v121, v4, v1

    const/16 v1, 0x76

    aput-object v122, v4, v1

    const/16 v1, 0x77

    aput-object v123, v4, v1

    const/16 v1, 0x78

    aput-object v124, v4, v1

    const/16 v1, 0x79

    aput-object v125, v4, v1

    const/16 v1, 0x7a

    aput-object v126, v4, v1

    const/16 v1, 0x7b

    aput-object v127, v4, v1

    const/16 v1, 0x7c

    aput-object v128, v4, v1

    const/16 v1, 0x7d

    aput-object v129, v4, v1

    const/16 v1, 0x7e

    aput-object v130, v4, v1

    const/16 v1, 0x7f

    aput-object v131, v4, v1

    const/16 v1, 0x80

    aput-object v132, v4, v1

    const/16 v1, 0x81

    aput-object v133, v4, v1

    const/16 v1, 0x82

    aput-object v134, v4, v1

    const/16 v1, 0x83

    aput-object v135, v4, v1

    const/16 v1, 0x84

    aput-object v136, v4, v1

    const/16 v1, 0x85

    aput-object v137, v4, v1

    const/16 v1, 0x86

    aput-object v138, v4, v1

    const/16 v1, 0x87

    aput-object v139, v4, v1

    const/16 v1, 0x88

    aput-object v140, v4, v1

    const/16 v1, 0x89

    aput-object v141, v4, v1

    const/16 v1, 0x8a

    aput-object v142, v4, v1

    const/16 v1, 0x8b

    aput-object v143, v4, v1

    const/16 v1, 0x8c

    aput-object v144, v4, v1

    const/16 v1, 0x8d

    aput-object v145, v4, v1

    const/16 v1, 0x8e

    aput-object v146, v4, v1

    const/16 v1, 0x8f

    aput-object v147, v4, v1

    const/16 v1, 0x90

    aput-object v148, v4, v1

    const/16 v1, 0x91

    aput-object v149, v4, v1

    const/16 v1, 0x92

    aput-object v150, v4, v1

    const/16 v1, 0x93

    aput-object v151, v4, v1

    const/16 v1, 0x94

    aput-object v152, v4, v1

    const/16 v1, 0x95

    aput-object v153, v4, v1

    const/16 v1, 0x96

    aput-object v154, v4, v1

    const/16 v1, 0x97

    aput-object v155, v4, v1

    const/16 v1, 0x98

    aput-object v156, v4, v1

    const/16 v1, 0x99

    aput-object v157, v4, v1

    const/16 v1, 0x9a

    aput-object v158, v4, v1

    const/16 v1, 0x9b

    aput-object v159, v4, v1

    const/16 v1, 0x9c

    aput-object v160, v4, v1

    const/16 v1, 0x9d

    aput-object v161, v4, v1

    const/16 v1, 0x9e

    aput-object v162, v4, v1

    const/16 v1, 0x9f

    aput-object v163, v4, v1

    const/16 v1, 0xa0

    aput-object v164, v4, v1

    const/16 v1, 0xa1

    aput-object v165, v4, v1

    const/16 v1, 0xa2

    aput-object v166, v4, v1

    const/16 v1, 0xa3

    aput-object v167, v4, v1

    const/16 v1, 0xa4

    aput-object v168, v4, v1

    const/16 v1, 0xa5

    aput-object v169, v4, v1

    const/16 v1, 0xa6

    aput-object v170, v4, v1

    const/16 v1, 0xa7

    aput-object v171, v4, v1

    const/16 v1, 0xa8

    aput-object v172, v4, v1

    const/16 v1, 0xa9

    aput-object v173, v4, v1

    const/16 v1, 0xaa

    aput-object v174, v4, v1

    const/16 v1, 0xab

    aput-object v175, v4, v1

    const/16 v1, 0xac

    aput-object v176, v4, v1

    const/16 v1, 0xad

    aput-object v177, v4, v1

    const/16 v1, 0xae

    aput-object v178, v4, v1

    const/16 v1, 0xaf

    aput-object v179, v4, v1

    const/16 v1, 0xb0

    aput-object v180, v4, v1

    const/16 v1, 0xb1

    aput-object v181, v4, v1

    const/16 v1, 0xb2

    aput-object v182, v4, v1

    const/16 v1, 0xb3

    aput-object v183, v4, v1

    const/16 v1, 0xb4

    aput-object v184, v4, v1

    const/16 v1, 0xb5

    aput-object v185, v4, v1

    const/16 v1, 0xb6

    aput-object v14, v4, v1

    const/16 v1, 0xb7

    aput-object v187, v4, v1

    const/16 v1, 0xb8

    aput-object v188, v4, v1

    const/16 v1, 0xb9

    aput-object v189, v4, v1

    const/16 v1, 0xba

    aput-object v190, v4, v1

    const/16 v1, 0xbb

    aput-object v191, v4, v1

    const/16 v1, 0xbc

    aput-object v192, v4, v1

    const/16 v1, 0xbd

    aput-object v193, v4, v1

    const/16 v1, 0xbe

    aput-object v194, v4, v1

    const/16 v1, 0xbf

    aput-object v195, v4, v1

    const/16 v1, 0xc0

    aput-object v196, v4, v1

    const/16 v1, 0xc1

    aput-object v197, v4, v1

    const/16 v1, 0xc2

    aput-object v198, v4, v1

    const/16 v1, 0xc3

    aput-object v199, v4, v1

    const/16 v1, 0xc4

    aput-object v200, v4, v1

    const/16 v1, 0xc5

    aput-object v201, v4, v1

    const/16 v1, 0xc6

    aput-object v202, v4, v1

    const/16 v1, 0xc7

    aput-object v203, v4, v1

    const/16 v1, 0xc8

    aput-object v204, v4, v1

    const/16 v1, 0xc9

    aput-object v205, v4, v1

    const/16 v1, 0xca

    aput-object v206, v4, v1

    const/16 v1, 0xcb

    aput-object v207, v4, v1

    const/16 v1, 0xcc

    aput-object v208, v4, v1

    const/16 v1, 0xcd

    aput-object v209, v4, v1

    const/16 v1, 0xce

    aput-object v210, v4, v1

    const/16 v1, 0xcf

    aput-object v211, v4, v1

    const/16 v1, 0xd0

    aput-object v212, v4, v1

    const/16 v1, 0xd1

    aput-object v213, v4, v1

    const/16 v1, 0xd2

    aput-object v214, v4, v1

    const/16 v1, 0xd3

    aput-object v215, v4, v1

    const/16 v1, 0xd4

    aput-object v216, v4, v1

    const/16 v1, 0xd5

    aput-object v217, v4, v1

    const/16 v1, 0xd6

    aput-object v218, v4, v1

    const/16 v1, 0xd7

    aput-object v219, v4, v1

    const/16 v1, 0xd8

    aput-object v220, v4, v1

    const/16 v1, 0xd9

    aput-object v221, v4, v1

    const/16 v1, 0xda

    aput-object v222, v4, v1

    const/16 v1, 0xdb

    aput-object v223, v4, v1

    const/16 v1, 0xdc

    aput-object v224, v4, v1

    const/16 v1, 0xdd

    aput-object v225, v4, v1

    const/16 v1, 0xde

    aput-object v226, v4, v1

    const/16 v1, 0xdf

    aput-object v227, v4, v1

    const/16 v1, 0xe0

    aput-object v228, v4, v1

    const/16 v1, 0xe1

    aput-object v229, v4, v1

    const/16 v1, 0xe2

    aput-object v230, v4, v1

    const/16 v1, 0xe3

    aput-object v231, v4, v1

    const/16 v1, 0xe4

    move-object/from16 v3, v232

    aput-object v3, v4, v1

    const/16 v1, 0xe5

    move-object/from16 v3, v233

    aput-object v3, v4, v1

    const/16 v1, 0xe6

    move-object/from16 v3, v234

    aput-object v3, v4, v1

    const/16 v1, 0xe7

    move-object/from16 v3, v235

    aput-object v3, v4, v1

    const/16 v1, 0xe8

    move-object/from16 v3, v236

    aput-object v3, v4, v1

    const/16 v1, 0xe9

    move-object/from16 v3, v237

    aput-object v3, v4, v1

    const/16 v1, 0xea

    move-object/from16 v3, v238

    aput-object v3, v4, v1

    const/16 v1, 0xeb

    move-object/from16 v3, v239

    aput-object v3, v4, v1

    const/16 v1, 0xec

    move-object/from16 v3, v240

    aput-object v3, v4, v1

    const/16 v1, 0xed

    move-object/from16 v3, v241

    aput-object v3, v4, v1

    const/16 v1, 0xee

    move-object/from16 v3, v242

    aput-object v3, v4, v1

    const/16 v1, 0xef

    move-object/from16 v3, v243

    aput-object v3, v4, v1

    const/16 v1, 0xf0

    move-object/from16 v3, v244

    aput-object v3, v4, v1

    const/16 v1, 0xf1

    move-object/from16 v3, v245

    aput-object v3, v4, v1

    const/16 v1, 0xf2

    move-object/from16 v3, v246

    aput-object v3, v4, v1

    const/16 v1, 0xf3

    move-object/from16 v3, v247

    aput-object v3, v4, v1

    const/16 v1, 0xf4

    move-object/from16 v3, v248

    aput-object v3, v4, v1

    const/16 v1, 0xf5

    move-object/from16 v3, v249

    aput-object v3, v4, v1

    const/16 v1, 0xf6

    move-object/from16 v3, v250

    aput-object v3, v4, v1

    const/16 v1, 0xf7

    move-object/from16 v3, v251

    aput-object v3, v4, v1

    const/16 v1, 0xf8

    move-object/from16 v3, v252

    aput-object v3, v4, v1

    const/16 v1, 0xf9

    move-object/from16 v3, v253

    aput-object v3, v4, v1

    const/16 v1, 0xfa

    move-object/from16 v3, v254

    aput-object v3, v4, v1

    const/16 v1, 0xfb

    move-object/from16 v3, v255

    aput-object v3, v4, v1

    const/16 v1, 0xfc

    move-object/from16 v3, v256

    aput-object v3, v4, v1

    const/16 v1, 0xfd

    move-object/from16 v3, v257

    aput-object v3, v4, v1

    const/16 v1, 0xfe

    move-object/from16 v3, v258

    aput-object v3, v4, v1

    const/16 v1, 0xff

    move-object/from16 v3, v259

    aput-object v3, v4, v1

    const/16 v1, 0x100

    move-object/from16 v3, v260

    aput-object v3, v4, v1

    const/16 v1, 0x101

    move-object/from16 v3, v261

    aput-object v3, v4, v1

    const/16 v1, 0x102

    move-object/from16 v3, v262

    aput-object v3, v4, v1

    const/16 v1, 0x103

    move-object/from16 v3, v263

    aput-object v3, v4, v1

    const/16 v1, 0x104

    move-object/from16 v3, v264

    aput-object v3, v4, v1

    const/16 v1, 0x105

    move-object/from16 v3, v265

    aput-object v3, v4, v1

    const/16 v1, 0x106

    move-object/from16 v3, v266

    aput-object v3, v4, v1

    const/16 v1, 0x107

    move-object/from16 v3, v267

    aput-object v3, v4, v1

    const/16 v1, 0x108

    move-object/from16 v3, v268

    aput-object v3, v4, v1

    const/16 v1, 0x109

    move-object/from16 v3, v269

    aput-object v3, v4, v1

    const/16 v1, 0x10a

    move-object/from16 v3, v270

    aput-object v3, v4, v1

    const/16 v1, 0x10b

    move-object/from16 v3, v271

    aput-object v3, v4, v1

    const/16 v1, 0x10c

    move-object/from16 v3, v272

    aput-object v3, v4, v1

    const/16 v1, 0x10d

    move-object/from16 v3, v273

    aput-object v3, v4, v1

    const/16 v1, 0x10e

    move-object/from16 v3, v274

    aput-object v3, v4, v1

    const/16 v1, 0x10f

    move-object/from16 v3, v275

    aput-object v3, v4, v1

    const/16 v1, 0x110

    move-object/from16 v3, v276

    aput-object v3, v4, v1

    const/16 v1, 0x111

    aput-object v2, v4, v1

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x112

    if-ge v1, v2, :cond_1

    aget-object v2, v4, v1

    iget v3, v2, Lorg/apache/poi/ddf/EscherDump$1PropName;->_id:I

    move/from16 v5, p1

    if-ne v3, v5, :cond_0

    iget-object v1, v2, Lorg/apache/poi/ddf/EscherDump$1PropName;->_name:Ljava/lang/String;

    return-object v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "unknown property"

    return-object v1
.end method


# virtual methods
.method public dump(I[BLjava/io/PrintStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1, p3}, Lorg/apache/poi/ddf/EscherDump;->dump([BIILjava/io/PrintStream;)V

    return-void
.end method

.method public dump([BIILjava/io/PrintStream;)V
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;

    invoke-direct {v0}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    move v1, p2

    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_0

    invoke-interface {v0, p1, v1}, Lorg/apache/poi/ddf/EscherRecordFactory;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v0}, Lorg/apache/poi/ddf/EscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    move-result v3

    invoke-virtual {p4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dumpOld(JLjava/io/InputStream;Ljava/io/PrintStream;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-wide/from16 v3, p1

    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_15

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readShort(Ljava/io/InputStream;)S

    move-result v7

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readShort(Ljava/io/InputStream;)S

    move-result v8

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v9

    const-wide/16 v10, 0x8

    sub-long v10, v3, v10

    const/16 v12, -0xee9

    const/16 v13, -0xfe8

    const/16 v14, -0xede

    const/16 v15, 0xf

    if-eq v8, v14, :cond_2

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    packed-switch v8, :pswitch_data_2

    if-lt v8, v13, :cond_0

    if-gt v8, v12, :cond_0

    const-string v16, "MsofbtBLIP"

    :goto_1
    move-object/from16 v5, v16

    goto/16 :goto_2

    :cond_0
    and-int/lit8 v5, v7, 0xf

    if-ne v5, v15, :cond_1

    const-string v16, "UNKNOWN container"

    goto :goto_1

    :cond_1
    const-string v16, "UNKNOWN ID"

    goto :goto_1

    :pswitch_0
    const-string v16, "MsofbtColorScheme"

    goto :goto_1

    :pswitch_1
    const-string v16, "MsofbtOleObject"

    goto :goto_1

    :pswitch_2
    const-string v16, "MsofbtSplitMenuColors"

    goto :goto_1

    :pswitch_3
    const-string v16, "MsofbtDeletedPspl"

    goto :goto_1

    :pswitch_4
    const-string v16, "MsofbtColorMRU"

    goto :goto_1

    :pswitch_5
    const-string v16, "MsofbtSelection"

    goto :goto_1

    :pswitch_6
    const-string v16, "MsofbtRegroupItem"

    goto :goto_1

    :pswitch_7
    const-string v16, "MsofbtCalloutRule"

    goto :goto_1

    :pswitch_8
    const-string v16, "MsofbtCLSID"

    goto :goto_1

    :pswitch_9
    const-string v16, "MsofbtClientRule"

    goto :goto_1

    :pswitch_a
    const-string v16, "MsofbtArcRule"

    goto :goto_1

    :pswitch_b
    const-string v16, "MsofbtAlignRule"

    goto :goto_1

    :pswitch_c
    const-string v16, "MsofbtConnectorRule"

    goto :goto_1

    :pswitch_d
    const-string v16, "MsofbtClientData"

    goto :goto_1

    :pswitch_e
    const-string v16, "MsofbtClientAnchor"

    goto :goto_1

    :pswitch_f
    const-string v16, "MsofbtChildAnchor"

    goto :goto_1

    :pswitch_10
    const-string v16, "MsofbtAnchor"

    goto :goto_1

    :pswitch_11
    const-string v16, "MsofbtClientTextbox"

    goto :goto_1

    :pswitch_12
    const-string v16, "MsofbtTextbox"

    goto :goto_1

    :pswitch_13
    const-string v16, "MsofbtOPT"

    goto :goto_1

    :pswitch_14
    const-string v16, "MsofbtSp"

    goto :goto_1

    :pswitch_15
    const-string v16, "MsofbtSpgr"

    goto :goto_1

    :pswitch_16
    const-string v16, "MsofbtDg"

    goto :goto_1

    :pswitch_17
    const-string v16, "MsofbtBSE"

    goto :goto_1

    :pswitch_18
    const-string v16, "MsofbtDgg"

    goto :goto_1

    :pswitch_19
    const-string v16, "MsofbtSolverContainer"

    goto :goto_1

    :pswitch_1a
    const-string v16, "MsofbtSpContainer"

    goto :goto_1

    :pswitch_1b
    const-string v16, "MsofbtSpgrContainer"

    goto :goto_1

    :pswitch_1c
    const-string v16, "MsofbtDgContainer"

    goto :goto_1

    :pswitch_1d
    const-string v16, "MsofbtBstoreContainer"

    goto :goto_1

    :pswitch_1e
    const-string v16, "MsofbtDggContainer"

    goto :goto_1

    :cond_2
    const-string v16, "MsofbtUDefProp"

    goto :goto_1

    :goto_2
    const-string v6, "  "

    .line 1
    invoke-static {v6}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2
    invoke-static {v8}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]  instance: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v5, v7, 0x4

    int-to-short v5, v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v6, -0xff9

    const/16 v12, 0x10

    const/4 v13, 0x2

    if-ne v8, v6, :cond_3

    const-wide/16 v17, 0x24

    cmp-long v6, v17, v10

    if-gtz v6, :cond_3

    const/16 v6, 0x24

    if-gt v6, v9, :cond_3

    const-string v6, "    btWin32: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v6

    int-to-byte v6, v6

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lorg/apache/poi/ddf/EscherDump;->getBlipType(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  btMacOS: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v6

    int-to-byte v6, v6

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lorg/apache/poi/ddf/EscherDump;->getBlipType(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const-string v6, "    rgbUid:"

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1, v2, v5, v12}, Lorg/apache/poi/util/HexDump;->dump(Ljava/io/InputStream;Ljava/io/PrintStream;II)V

    const-string v6, "    tag: "

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {v0, v13, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    const-string v6, "    size: "

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v6, 0x4

    invoke-direct {v0, v6, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    const-string v8, "    cRef: "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {v0, v6, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    const-string v8, "    offs: "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {v0, v6, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    const-string v6, "    usage: "

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-direct {v0, v6, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    const-string v8, "    cbName: "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {v0, v6, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    const-string v8, "    unused2: "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {v0, v6, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    const-string v8, "    unused3: "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {v0, v6, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    const-wide/16 v8, 0x2c

    sub-long v10, v3, v8

    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_3
    const/16 v6, -0xff0

    if-ne v8, v6, :cond_4

    const-wide/16 v17, 0x12

    cmp-long v6, v17, v10

    if-gtz v6, :cond_4

    const/16 v6, 0x12

    if-gt v6, v9, :cond_4

    const-string v6, "    Flag: "

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {v0, v13, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    const-string v6, "    Col1: "

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {v0, v13, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    const-string v6, "    dX1: "

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {v0, v13, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    const-string v6, "    Row1: "

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {v0, v13, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    const-string v6, "    dY1: "

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {v0, v13, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    const-string v6, "    Col2: "

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {v0, v13, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    const-string v6, "    dX2: "

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {v0, v13, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    const-string v6, "    Row2: "

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {v0, v13, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    const-string v6, "    dY2: "

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {v0, v13, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    const-wide/16 v10, 0x1a

    sub-long v10, v3, v10

    add-int/lit8 v9, v9, -0x12

    goto/16 :goto_a

    :cond_4
    const/16 v6, -0xff5

    if-eq v8, v6, :cond_9

    if-ne v8, v14, :cond_5

    goto/16 :goto_6

    :cond_5
    const/16 v6, -0xfee

    if-ne v8, v6, :cond_6

    const-string v6, "    Connector rule: "

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(I)V

    const-string v6, "    ShapeID A: "

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(I)V

    const-string v6, "   ShapeID B: "

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(I)V

    const-string v6, "    ShapeID connector: "

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(I)V

    const-string v6, "   Connect pt A: "

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(I)V

    const-string v6, "   Connect pt B: "

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(I)V

    add-int/lit8 v9, v9, -0x18

    const-wide/16 v10, 0x20

    :goto_3
    sub-long v10, v3, v10

    goto/16 :goto_a

    :cond_6
    const/16 v6, -0xfe8

    if-lt v8, v6, :cond_f

    const/16 v6, -0xee9

    if-ge v8, v6, :cond_f

    const-string v6, "    Secondary UID: "

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1, v2, v5, v12}, Lorg/apache/poi/util/HexDump;->dump(Ljava/io/InputStream;Ljava/io/PrintStream;II)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "    Cache of size: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v8

    invoke-static {v8}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "    Boundary top: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v8

    invoke-static {v8}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "    Boundary left: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v8

    invoke-static {v8}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "    Boundary width: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v8

    invoke-static {v8}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "    Boundary height: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v8

    invoke-static {v8}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "    X: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v8

    invoke-static {v8}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "    Y: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v8

    invoke-static {v8}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "    Cache of saved size: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v8

    invoke-static {v8}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "    Compression Flag: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v8

    int-to-byte v8, v8

    invoke-static {v8}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "    Filter: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v8

    int-to-byte v8, v8

    invoke-static {v8}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v6, "    Data (after decompression): "

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v9, v9, -0x32

    const-wide/16 v10, 0x3a

    sub-long/2addr v3, v10

    long-to-int v6, v3

    if-le v9, v6, :cond_7

    int-to-short v6, v6

    goto :goto_4

    :cond_7
    int-to-short v6, v9

    :goto_4
    new-array v8, v6, [B

    invoke-virtual {v1, v8}, Ljava/io/InputStream;->read([B)I

    move-result v10

    :goto_5
    const/4 v11, -0x1

    if-eq v10, v11, :cond_8

    if-ge v10, v6, :cond_8

    invoke-virtual {v1, v8, v10, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_5

    :cond_8
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v8, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v8, v10}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v8, v2, v5, v11}, Lorg/apache/poi/util/HexDump;->dump(Ljava/io/InputStream;Ljava/io/PrintStream;II)V

    sub-int/2addr v9, v6

    int-to-long v10, v6

    goto/16 :goto_3

    :cond_9
    :goto_6
    const-string v3, "    PROPID        VALUE"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_7
    add-int/lit8 v4, v3, 0x6

    if-lt v9, v4, :cond_d

    int-to-long v12, v4

    cmp-long v4, v10, v12

    if-ltz v4, :cond_d

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readShort(Ljava/io/InputStream;)S

    move-result v4

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v6

    add-int/lit8 v9, v9, -0x6

    const-wide/16 v12, 0x6

    sub-long/2addr v10, v12

    const-string v8, "    "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v8, " ("

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    and-int/lit16 v12, v4, 0x3fff

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    and-int/lit16 v13, v4, -0x8000

    const-string v14, "}"

    const-string v15, " {"

    if-nez v13, :cond_c

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_a

    const-string v13, ", fBlipID"

    invoke-virtual {v2, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_a
    const-string v13, ")  "

    invoke-virtual {v2, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-nez v4, :cond_b

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {v0, v6}, Lorg/apache/poi/ddf/EscherDump;->dec1616(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(C)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-short v6, v12

    invoke-direct {v0, v6}, Lorg/apache/poi/ddf/EscherDump;->propName(S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_b
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    goto/16 :goto_7

    :cond_c
    const-string v4, ", fComplex)  "

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v4, " - Complex prop len"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-short v8, v12

    invoke-direct {v0, v8}, Lorg/apache/poi/ddf/EscherDump;->propName(S)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/2addr v3, v6

    goto/16 :goto_7

    :cond_d
    :goto_8
    int-to-long v12, v3

    and-long/2addr v12, v10

    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-lez v4, :cond_f

    long-to-int v4, v10

    if-le v3, v4, :cond_e

    int-to-short v4, v4

    goto :goto_9

    :cond_e
    int-to-short v4, v3

    :goto_9
    invoke-static {v1, v2, v5, v4}, Lorg/apache/poi/util/HexDump;->dump(Ljava/io/InputStream;Ljava/io/PrintStream;II)V

    sub-int/2addr v3, v4

    sub-int/2addr v9, v4

    int-to-long v12, v4

    sub-long/2addr v10, v12

    goto :goto_8

    :cond_f
    :goto_a
    and-int/lit8 v3, v7, 0xf

    const/16 v4, 0xf

    if-ne v3, v4, :cond_11

    const-wide/16 v3, 0x0

    cmp-long v6, v10, v3

    if-ltz v6, :cond_11

    long-to-int v3, v10

    if-gt v9, v3, :cond_10

    const-string v3, "            completed within"

    :goto_b
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_d

    :cond_10
    const-string v3, "            continued elsewhere"

    goto :goto_b

    :cond_11
    const-wide/16 v3, 0x0

    cmp-long v6, v10, v3

    if-ltz v6, :cond_14

    long-to-int v3, v10

    if-le v9, v3, :cond_12

    int-to-short v3, v3

    goto :goto_c

    :cond_12
    int-to-short v3, v9

    :goto_c
    if-eqz v3, :cond_13

    invoke-static {v1, v2, v5, v3}, Lorg/apache/poi/util/HexDump;->dump(Ljava/io/InputStream;Ljava/io/PrintStream;II)V

    int-to-long v3, v3

    sub-long/2addr v10, v3

    :cond_13
    :goto_d
    move-wide v3, v10

    goto/16 :goto_0

    :cond_14
    const-string v3, " >> OVERRUN <<"

    goto :goto_b

    :cond_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1000
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0xee8
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0xee3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
