.class public final Lcom/fasterxml/aalto/in/ByteBasedPNameFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/fasterxml/aalto/in/ByteBasedPNameFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fasterxml/aalto/in/ByteBasedPNameFactory;

    invoke-direct {v0}, Lcom/fasterxml/aalto/in/ByteBasedPNameFactory;-><init>()V

    sput-object v0, Lcom/fasterxml/aalto/in/ByteBasedPNameFactory;->sInstance:Lcom/fasterxml/aalto/in/ByteBasedPNameFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/fasterxml/aalto/in/ByteBasedPNameFactory;
    .locals 1

    sget-object v0, Lcom/fasterxml/aalto/in/ByteBasedPNameFactory;->sInstance:Lcom/fasterxml/aalto/in/ByteBasedPNameFactory;

    return-object v0
.end method


# virtual methods
.method public constructPName(ILjava/lang/String;I[II)Lcom/fasterxml/aalto/in/ByteBasedPName;
    .locals 13

    move-object v1, p2

    move/from16 v0, p3

    move/from16 v6, p5

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v6, v2, :cond_5

    const/4 v2, 0x2

    const/4 v5, 0x3

    if-gez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    if-ne v6, v5, :cond_0

    new-instance v6, Lcom/fasterxml/aalto/in/PName3;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, v9

    move-object v3, v9

    move v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/aalto/in/PName3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[I)V

    return-object v6

    :cond_0
    if-ne v6, v2, :cond_1

    new-instance v0, Lcom/fasterxml/aalto/in/PName2;

    aget v11, p4, v4

    aget v12, p4, v3

    const/4 v8, 0x0

    move-object v6, v0

    move-object v7, v9

    move v10, p1

    invoke-direct/range {v6 .. v12}, Lcom/fasterxml/aalto/in/PName2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/fasterxml/aalto/in/PName1;

    const/4 v8, 0x0

    aget v11, p4, v4

    move-object v6, v0

    move-object v7, v9

    move v10, p1

    invoke-direct/range {v6 .. v11}, Lcom/fasterxml/aalto/in/PName1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0

    :cond_2
    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    if-ne v6, v5, :cond_3

    new-instance v6, Lcom/fasterxml/aalto/in/PName3;

    move-object v0, v6

    move-object v1, p2

    move-object v2, v7

    move-object v3, v8

    move v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/aalto/in/PName3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[I)V

    return-object v6

    :cond_3
    if-ne v6, v2, :cond_4

    new-instance v9, Lcom/fasterxml/aalto/in/PName2;

    aget v5, p4, v4

    aget v6, p4, v3

    move-object v0, v9

    move-object v1, p2

    move-object v2, v7

    move-object v3, v8

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/aalto/in/PName2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v9

    :cond_4
    new-instance v6, Lcom/fasterxml/aalto/in/PName1;

    aget v5, p4, v4

    move-object v0, v6

    move-object v1, p2

    move-object v2, v7

    move-object v3, v8

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/aalto/in/PName1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v6

    :cond_5
    new-array v5, v6, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_6

    aget v7, p4, v2

    aput v7, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-gez v0, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/fasterxml/aalto/in/PNameN;

    const/4 v2, 0x0

    move-object v0, v7

    move-object v1, v3

    move v4, p1

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/aalto/in/PNameN;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[II)V

    return-object v7

    :cond_7
    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/fasterxml/aalto/in/PNameN;

    move-object v0, v7

    move-object v1, p2

    move v4, p1

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/aalto/in/PNameN;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[II)V

    return-object v7
.end method
