.class abstract Lkotlin/text/StringsKt__StringNumberConversionsKt;
.super Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;
.source "SourceFile"


# direct methods
.method public static toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 18

    .line 2
    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-gez v6, :cond_3

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    return-object v3

    :cond_1
    const/16 v9, 0x2d

    if-ne v5, v9, :cond_2

    const-wide/high16 v7, -0x8000000000000000L

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/16 v9, 0x2b

    if-ne v5, v9, :cond_4

    const/4 v4, 0x1

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    return-object v3

    :goto_0
    const-wide v9, -0x38e38e38e38e38eL    # -2.772000429909333E291

    const-wide/16 v11, 0x0

    move-wide v13, v9

    :goto_1
    if-ge v4, v2, :cond_9

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v1}, Lkotlin/text/CharsKt__CharJVMKt;->digitOf(CI)I

    move-result v5

    if-gez v5, :cond_5

    return-object v3

    :cond_5
    cmp-long v15, v11, v13

    if-gez v15, :cond_7

    cmp-long v15, v13, v9

    if-nez v15, :cond_6

    int-to-long v13, v1

    div-long v13, v7, v13

    cmp-long v15, v11, v13

    if-gez v15, :cond_7

    :cond_6
    return-object v3

    :cond_7
    int-to-long v9, v1

    mul-long v11, v11, v9

    int-to-long v9, v5

    add-long v16, v7, v9

    cmp-long v5, v11, v16

    if-gez v5, :cond_8

    return-object v3

    :cond_8
    sub-long/2addr v11, v9

    add-int/lit8 v4, v4, 0x1

    const-wide v9, -0x38e38e38e38e38eL    # -2.772000429909333E291

    goto :goto_1

    :cond_9
    if-eqz v6, :cond_a

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :cond_a
    neg-long v0, v11

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_2
    return-object v0
.end method
