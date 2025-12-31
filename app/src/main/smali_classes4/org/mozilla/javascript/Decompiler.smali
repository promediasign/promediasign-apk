.class public Lorg/mozilla/javascript/Decompiler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CASE_GAP_PROP:I = 0x3

.field private static final FUNCTION_END:I = 0xa8

.field public static final INDENT_GAP_PROP:I = 0x2

.field public static final INITIAL_INDENT_PROP:I = 0x1

.field public static final ONLY_BODY_FLAG:I = 0x1

.field public static final TO_SOURCE_FLAG:I = 0x2

.field private static final printSource:Z


# instance fields
.field private sourceBuffer:[C

.field private sourceTop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    return-void
.end method

.method private append(C)V
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    iget-object v1, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->increaseSourceCapacity(I)V

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    iget v1, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    aput-char p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    return-void
.end method

.method private appendString(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x8000

    if-lt v0, v2, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iget v4, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    iget-object v3, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    array-length v3, v3

    if-le v4, v3, :cond_1

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/Decompiler;->increaseSourceCapacity(I)V

    :cond_1
    if-lt v0, v2, :cond_2

    iget-object v3, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    iget v5, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    ushr-int/lit8 v6, v0, 0x10

    or-int/2addr v2, v6

    int-to-char v2, v2

    aput-char v2, v3, v5

    add-int/2addr v5, v1

    iput v5, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    :cond_2
    iget-object v2, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    int-to-char v5, v0

    aput-char v5, v2, v3

    add-int/2addr v3, v1

    iput v3, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    iput v4, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    return-void
.end method

.method public static decompile(Ljava/lang/String;ILorg/mozilla/javascript/UintMap;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result v5

    if-ltz v5, :cond_28

    const/4 v6, 0x2

    const/4 v7, 0x4

    invoke-virtual {v1, v6, v7}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result v8

    if-ltz v8, :cond_27

    const/4 v9, 0x3

    invoke-virtual {v1, v9, v6}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result v1

    if-ltz v1, :cond_26

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v10, p1, 0x1

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    and-int/lit8 v11, p1, 0x2

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x89

    if-ne v12, v13, :cond_3

    const/4 v12, -0x1

    const/4 v13, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/4 v13, 0x0

    :goto_2
    const/16 v14, 0x28

    const/16 v15, 0xa

    const/16 v4, 0x20

    if-nez v11, :cond_4

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v5, :cond_5

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_4
    if-ne v12, v6, :cond_5

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_4
    if-ge v13, v2, :cond_23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v6, 0x27

    if-eq v14, v3, :cond_19

    if-eq v14, v7, :cond_18

    const/16 v7, 0x32

    if-eq v14, v7, :cond_17

    const/16 v7, 0x43

    if-eq v14, v7, :cond_16

    const/16 v7, 0x49

    if-eq v14, v7, :cond_15

    const/16 v7, 0xa1

    if-eq v14, v7, :cond_14

    const/16 v7, 0xa8

    if-eq v14, v7, :cond_6

    const/16 v7, 0x34

    if-eq v14, v7, :cond_13

    const/16 v7, 0x35

    if-eq v14, v7, :cond_12

    const/16 v7, 0x90

    if-eq v14, v7, :cond_11

    const/16 v7, 0x91

    if-eq v14, v7, :cond_10

    const/16 v7, 0x93

    if-eq v14, v7, :cond_f

    const/16 v7, 0x94

    if-eq v14, v7, :cond_e

    packed-switch v14, :pswitch_data_0

    packed-switch v14, :pswitch_data_1

    packed-switch v14, :pswitch_data_2

    packed-switch v14, :pswitch_data_3

    packed-switch v14, :pswitch_data_4

    packed-switch v14, :pswitch_data_5

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Token: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/Token;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const-string v6, "yield *"

    :goto_5
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_6
    const/16 v7, 0x28

    goto/16 :goto_15

    :pswitch_1
    const-string v6, " => "

    goto :goto_5

    :pswitch_2
    const-string v6, "const "

    goto :goto_5

    :pswitch_3
    const-string v6, "let "

    goto :goto_5

    :pswitch_4
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x98

    if-ne v6, v7, :cond_7

    const-string v6, "get "

    :goto_7
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_7
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x99

    if-ne v6, v7, :cond_8

    const-string v6, "set "

    goto :goto_7

    :cond_8
    :goto_8
    add-int/lit8 v13, v13, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v13, v6, v9}, Lorg/mozilla/javascript/Decompiler;->printSourceString(Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v7

    add-int/lit8 v13, v7, 0x1

    goto/16 :goto_15

    :pswitch_5
    const-string v6, "void "

    goto :goto_5

    :pswitch_6
    const-string v6, "finally "

    goto :goto_5

    :pswitch_7
    const-string v6, "catch "

    goto :goto_5

    :pswitch_8
    const-string v6, "with "

    goto :goto_5

    :pswitch_9
    const-string v6, "var "

    goto :goto_5

    :pswitch_a
    const-string v7, "continue"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2, v13}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v7

    if-ne v6, v7, :cond_6

    :goto_9
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :pswitch_b
    const-string v7, "break"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2, v13}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v7

    if-ne v6, v7, :cond_6

    goto :goto_9

    :pswitch_c
    const-string v6, "for "

    goto :goto_5

    :pswitch_d
    const-string v6, "do "

    goto :goto_5

    :pswitch_e
    const-string v6, "while "

    goto :goto_5

    :pswitch_f
    const-string v6, "default"

    goto :goto_5

    :pswitch_10
    const-string v6, "case "

    goto :goto_5

    :pswitch_11
    const-string v6, "switch "

    goto :goto_5

    :pswitch_12
    const-string v6, "else "

    goto :goto_5

    :pswitch_13
    const-string v6, "if "

    goto :goto_5

    :pswitch_14
    add-int/lit8 v13, v13, 0x1

    const-string v6, "function "

    :goto_a
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_15

    :pswitch_15
    const/16 v6, 0x2e

    :goto_b
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :pswitch_16
    const-string v6, "--"

    goto/16 :goto_5

    :pswitch_17
    const-string v6, "++"

    goto/16 :goto_5

    :pswitch_18
    const-string v6, " && "

    goto/16 :goto_5

    :pswitch_19
    const-string v6, " || "

    goto/16 :goto_5

    :pswitch_1a
    invoke-static {v0, v2, v13}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v6

    if-ne v3, v6, :cond_9

    const/16 v6, 0x3a

    goto :goto_b

    :cond_9
    const-string v6, " : "

    goto/16 :goto_5

    :pswitch_1b
    const-string v6, " ? "

    goto/16 :goto_5

    :pswitch_1c
    const-string v6, " %= "

    goto/16 :goto_5

    :pswitch_1d
    const-string v6, " /= "

    goto/16 :goto_5

    :pswitch_1e
    const-string v6, " *= "

    goto/16 :goto_5

    :pswitch_1f
    const-string v6, " -= "

    goto/16 :goto_5

    :pswitch_20
    const-string v6, " += "

    goto/16 :goto_5

    :pswitch_21
    const-string v6, " >>>= "

    goto/16 :goto_5

    :pswitch_22
    const-string v6, " >>= "

    goto/16 :goto_5

    :pswitch_23
    const-string v6, " <<= "

    goto/16 :goto_5

    :pswitch_24
    const-string v6, " &= "

    goto/16 :goto_5

    :pswitch_25
    const-string v6, " ^= "

    goto/16 :goto_5

    :pswitch_26
    const-string v6, " |= "

    goto/16 :goto_5

    :pswitch_27
    const-string v6, " = "

    goto/16 :goto_5

    :pswitch_28
    const-string v6, ", "

    goto/16 :goto_5

    :pswitch_29
    const/16 v6, 0x29

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x56

    invoke-static {v0, v2, v13}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v7

    if-ne v6, v7, :cond_6

    goto/16 :goto_9

    :pswitch_2a
    const/16 v7, 0x28

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_15

    :pswitch_2b
    const/16 v7, 0x28

    add-int/lit8 v15, v15, -0x1

    if-eqz v10, :cond_a

    if-nez v15, :cond_a

    goto/16 :goto_15

    :cond_a
    const/16 v6, 0x7d

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v2, v13}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v6

    if-eq v6, v3, :cond_c

    const/16 v14, 0x72

    if-eq v6, v14, :cond_b

    const/16 v14, 0x76

    if-eq v6, v14, :cond_b

    const/16 v14, 0xa8

    if-eq v6, v14, :cond_c

    goto/16 :goto_15

    :cond_b
    sub-int/2addr v5, v8

    :goto_c
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_15

    :cond_c
    sub-int/2addr v5, v8

    goto/16 :goto_15

    :pswitch_2c
    const/16 v7, 0x28

    add-int/lit8 v15, v15, 0x1

    invoke-static {v0, v2, v13}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v6

    if-ne v3, v6, :cond_d

    add-int/2addr v5, v8

    :cond_d
    const/16 v6, 0x7b

    :goto_d
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_15

    :pswitch_2d
    const/16 v7, 0x28

    const/16 v6, 0x5d

    goto :goto_d

    :pswitch_2e
    const/16 v7, 0x28

    const/16 v6, 0x5b

    goto :goto_d

    :pswitch_2f
    const/16 v7, 0x28

    const/16 v6, 0x3b

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v2, v13}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v6

    if-eq v3, v6, :cond_22

    :goto_e
    goto :goto_c

    :pswitch_30
    const/16 v7, 0x28

    const-string v6, "try "

    goto/16 :goto_a

    :pswitch_31
    const/16 v7, 0x28

    const-string v6, " !== "

    goto/16 :goto_a

    :pswitch_32
    const/16 v7, 0x28

    const-string v6, " === "

    goto/16 :goto_a

    :pswitch_33
    const/16 v7, 0x28

    const-string v6, "true"

    goto/16 :goto_a

    :pswitch_34
    const/16 v7, 0x28

    const-string v6, "false"

    goto/16 :goto_a

    :pswitch_35
    const/16 v7, 0x28

    const-string v6, "this"

    goto/16 :goto_a

    :pswitch_36
    const/16 v7, 0x28

    const-string v6, "null"

    goto/16 :goto_a

    :pswitch_37
    const/16 v7, 0x28

    add-int/lit8 v13, v13, 0x1

    invoke-static {v0, v13, v3, v9}, Lorg/mozilla/javascript/Decompiler;->printSourceString(Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v13

    :goto_f
    const/4 v7, 0x4

    const/16 v14, 0x28

    goto/16 :goto_4

    :pswitch_38
    const/16 v7, 0x28

    add-int/lit8 v13, v13, 0x1

    invoke-static {v0, v13, v9}, Lorg/mozilla/javascript/Decompiler;->printSourceNumber(Ljava/lang/String;ILjava/lang/StringBuilder;)I

    move-result v13

    goto :goto_f

    :pswitch_39
    const/16 v7, 0x28

    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    invoke-static {v0, v13, v6, v9}, Lorg/mozilla/javascript/Decompiler;->printSourceString(Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v13

    goto :goto_f

    :pswitch_3a
    const/16 v7, 0x28

    const-string v6, "typeof "

    goto/16 :goto_a

    :pswitch_3b
    const/16 v7, 0x28

    const-string v6, "delete "

    goto/16 :goto_a

    :pswitch_3c
    const/16 v7, 0x28

    const-string v6, "new "

    goto/16 :goto_a

    :pswitch_3d
    const/16 v7, 0x28

    const/16 v6, 0x2d

    goto :goto_d

    :pswitch_3e
    const/16 v7, 0x28

    const/16 v6, 0x2b

    goto/16 :goto_d

    :pswitch_3f
    const/16 v7, 0x28

    const/16 v6, 0x7e

    goto/16 :goto_d

    :pswitch_40
    const/16 v7, 0x28

    const/16 v6, 0x21

    goto/16 :goto_d

    :pswitch_41
    const/16 v7, 0x28

    const-string v6, " % "

    goto/16 :goto_a

    :pswitch_42
    const/16 v7, 0x28

    const-string v6, " / "

    goto/16 :goto_a

    :pswitch_43
    const/16 v7, 0x28

    const-string v6, " * "

    goto/16 :goto_a

    :pswitch_44
    const/16 v7, 0x28

    const-string v6, " - "

    goto/16 :goto_a

    :pswitch_45
    const/16 v7, 0x28

    const-string v6, " + "

    goto/16 :goto_a

    :pswitch_46
    const/16 v7, 0x28

    const-string v6, " >>> "

    goto/16 :goto_a

    :pswitch_47
    const/16 v7, 0x28

    const-string v6, " >> "

    goto/16 :goto_a

    :pswitch_48
    const/16 v7, 0x28

    const-string v6, " << "

    goto/16 :goto_a

    :pswitch_49
    const/16 v7, 0x28

    const-string v6, " >= "

    goto/16 :goto_a

    :pswitch_4a
    const/16 v7, 0x28

    const-string v6, " > "

    goto/16 :goto_a

    :pswitch_4b
    const/16 v7, 0x28

    const-string v6, " <= "

    goto/16 :goto_a

    :pswitch_4c
    const/16 v7, 0x28

    const-string v6, " < "

    goto/16 :goto_a

    :pswitch_4d
    const/16 v7, 0x28

    const-string v6, " != "

    goto/16 :goto_a

    :pswitch_4e
    const/16 v7, 0x28

    const-string v6, " == "

    goto/16 :goto_a

    :pswitch_4f
    const/16 v7, 0x28

    const-string v6, " & "

    goto/16 :goto_a

    :pswitch_50
    const/16 v7, 0x28

    const-string v6, " ^ "

    goto/16 :goto_a

    :pswitch_51
    const/16 v7, 0x28

    const-string v6, " | "

    goto/16 :goto_a

    :cond_e
    const/16 v7, 0x28

    const/16 v6, 0x40

    goto/16 :goto_d

    :cond_f
    const/16 v7, 0x28

    const-string v6, ".("

    goto/16 :goto_a

    :cond_10
    const/16 v7, 0x28

    const-string v6, "::"

    goto/16 :goto_a

    :cond_11
    const/16 v7, 0x28

    const-string v6, ".."

    goto/16 :goto_a

    :cond_12
    const/16 v7, 0x28

    const-string v6, " instanceof "

    goto/16 :goto_a

    :cond_13
    const/16 v7, 0x28

    const-string v6, " in "

    goto/16 :goto_a

    :cond_14
    const/16 v7, 0x28

    const-string v6, "debugger;\n"

    goto/16 :goto_a

    :cond_15
    const/16 v7, 0x28

    const-string v6, "yield "

    goto/16 :goto_a

    :cond_16
    const/16 v7, 0x28

    const-string v6, ": "

    goto/16 :goto_a

    :cond_17
    const/16 v7, 0x28

    const-string v6, "throw "

    goto/16 :goto_a

    :cond_18
    const/16 v7, 0x28

    const-string v6, "return"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x53

    invoke-static {v0, v2, v13}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v14

    if-eq v6, v14, :cond_22

    goto/16 :goto_e

    :cond_19
    const/16 v7, 0x28

    if-eqz v11, :cond_1a

    goto :goto_15

    :cond_1a
    const/4 v14, 0x0

    if-nez v17, :cond_1c

    if-eqz v10, :cond_1b

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    sub-int/2addr v5, v8

    const/16 v16, 0x0

    :goto_10
    const/16 v17, 0x1

    goto :goto_11

    :cond_1b
    const/16 v16, 0x1

    goto :goto_10

    :cond_1c
    const/16 v16, 0x1

    :goto_11
    if-eqz v16, :cond_1d

    const/16 v7, 0xa

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1d
    add-int/lit8 v7, v13, 0x1

    if-ge v7, v2, :cond_22

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v14, 0x74

    if-eq v7, v14, :cond_21

    const/16 v14, 0x75

    if-ne v7, v14, :cond_1e

    goto :goto_13

    :cond_1e
    const/16 v14, 0x57

    if-ne v7, v14, :cond_1f

    goto :goto_12

    :cond_1f
    if-ne v7, v6, :cond_20

    add-int/lit8 v6, v13, 0x2

    invoke-static {v0, v6}, Lorg/mozilla/javascript/Decompiler;->getSourceStringEnd(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x68

    if-ne v6, v7, :cond_20

    :goto_12
    move v6, v8

    goto :goto_14

    :cond_20
    const/4 v6, 0x0

    goto :goto_14

    :cond_21
    :goto_13
    sub-int v6, v8, v1

    :goto_14
    if-ge v6, v5, :cond_22

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_22
    :goto_15
    add-int/2addr v13, v3

    goto/16 :goto_f

    :cond_23
    if-nez v11, :cond_24

    if-nez v10, :cond_25

    const/16 v0, 0xa

    :goto_16
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_24
    const/4 v0, 0x2

    if-ne v12, v0, :cond_25

    const/16 v0, 0x29

    goto :goto_16

    :cond_25
    :goto_17
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_39
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x52
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
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
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x71
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
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x98
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xa4
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getNext(Ljava/lang/String;II)I
    .locals 0

    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getSourceStringEnd(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/javascript/Decompiler;->printSourceString(Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result p0

    return p0
.end method

.method private increaseSourceCapacity(I)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    array-length v0, v0

    if-gt p1, v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    if-ge v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    new-array p1, p1, [C

    iget v1, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    return-void
.end method

.method private static printSourceNumber(Ljava/lang/String;ILjava/lang/StringBuilder;)I
    .locals 7

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x53

    const-wide/16 v3, 0x0

    if-ne v0, v2, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    int-to-double v3, p0

    :cond_0
    add-int/lit8 p1, p1, 0x2

    goto :goto_2

    :cond_1
    const/16 v2, 0x4a

    if-eq v0, v2, :cond_3

    const/16 v5, 0x44

    if-ne v0, v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-long v3, v1

    const/16 v1, 0x30

    shl-long/2addr v3, v1

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-long v5, v1

    const/16 v1, 0x20

    shl-long/2addr v5, v1

    or-long/2addr v3, v5

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-long v5, v1

    const/16 v1, 0x10

    shl-long/2addr v5, v1

    or-long/2addr v3, v5

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    int-to-long v5, p0

    or-long/2addr v3, v5

    if-ne v0, v2, :cond_4

    long-to-double v3, v3

    goto :goto_1

    :cond_4
    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    :cond_5
    :goto_1
    add-int/lit8 p1, p1, 0x5

    :goto_2
    if-eqz p2, :cond_6

    const/16 p0, 0xa

    invoke-static {v3, v4, p0}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    return p1
.end method

.method private static printSourceString(Ljava/lang/String;IZLjava/lang/StringBuilder;)I
    .locals 3

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, p1, 0x1

    const v2, 0x8000

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    and-int/lit16 v0, v0, 0x7fff

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    :cond_0
    if-eqz p3, :cond_2

    add-int p1, v1, v0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-nez p2, :cond_1

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p1, 0x22

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method private sourceToString(I)Ljava/lang/String;
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    if-ge v0, p1, :cond_1

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method public addEOL(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xa7

    if-gt p1, v0, :cond_0

    int-to-char p1, p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public addName(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->appendString(Ljava/lang/String;)V

    return-void
.end method

.method public addNumber(D)V
    .locals 8

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    double-to-long v0, p1

    long-to-double v2, v0

    const/16 v4, 0x10

    const/16 v5, 0x20

    const/16 v6, 0x30

    cmpl-double v7, v2, p1

    if-eqz v7, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const/16 v0, 0x44

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    shr-long v0, p1, v6

    long-to-int v1, v0

    int-to-char v0, v1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    shr-long v0, p1, v5

    long-to-int v1, v0

    int-to-char v0, v1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    shr-long v0, p1, v4

    long-to-int v1, v0

    int-to-char v0, v1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    long-to-int p2, p1

    int-to-char p1, p2

    :goto_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    goto :goto_2

    :cond_0
    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_1
    const-wide/32 p1, 0xffff

    cmp-long v2, v0, p1

    if-gtz v2, :cond_2

    const/16 p1, 0x53

    :goto_1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    long-to-int p1, v0

    int-to-char p1, p1

    goto :goto_0

    :cond_2
    const/16 p1, 0x4a

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    shr-long p1, v0, v6

    long-to-int p2, p1

    int-to-char p1, p2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    shr-long p1, v0, v5

    long-to-int p2, p1

    int-to-char p1, p2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    shr-long p1, v0, v4

    long-to-int p2, p1

    int-to-char p1, p2

    goto :goto_1

    :goto_2
    return-void
.end method

.method public addRegexp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->appendString(Ljava/lang/String;)V

    return-void
.end method

.method public addString(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->appendString(Ljava/lang/String;)V

    return-void
.end method

.method public addToken(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xa7

    if-gt p1, v0, :cond_0

    int-to-char p1, p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getCurrentOffset()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    return v0
.end method

.method public getEncodedSource()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->sourceToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public markFunctionEnd(I)I
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Decompiler;->getCurrentOffset()I

    move-result p1

    const/16 v0, 0xa8

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    return p1
.end method

.method public markFunctionStart(I)I
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Decompiler;->getCurrentOffset()I

    move-result v0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x6e

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    int-to-char p1, p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    :cond_0
    return v0
.end method
