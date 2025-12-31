.class public final enum Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RangeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

.field public static final enum FORMULA:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

.field public static final enum MAX:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

.field public static final enum MIN:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

.field public static final enum NUMBER:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

.field public static final enum PERCENT:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

.field public static final enum PERCENTILE:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

.field public static final enum UNALLOCATED:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;


# instance fields
.field public final id:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    const-string v1, "num"

    const-string v2, "NUMBER"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->NUMBER:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    new-instance v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    const-string v2, "min"

    const-string v5, "MIN"

    const/4 v6, 0x2

    invoke-direct {v1, v5, v4, v6, v2}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MIN:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    new-instance v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    const-string v5, "max"

    const-string v7, "MAX"

    const/4 v8, 0x3

    invoke-direct {v2, v7, v6, v8, v5}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MAX:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    new-instance v5, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    const-string v7, "percent"

    const-string v9, "PERCENT"

    const/4 v10, 0x4

    invoke-direct {v5, v9, v8, v10, v7}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->PERCENT:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    new-instance v7, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    const-string v9, "percentile"

    const-string v11, "PERCENTILE"

    const/4 v12, 0x5

    invoke-direct {v7, v11, v10, v12, v9}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->PERCENTILE:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    new-instance v9, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    const/4 v11, 0x0

    const-string v13, "UNALLOCATED"

    const/4 v14, 0x6

    invoke-direct {v9, v13, v12, v14, v11}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->UNALLOCATED:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    new-instance v11, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    const/4 v13, 0x7

    const-string v15, "formula"

    const-string v12, "FORMULA"

    invoke-direct {v11, v12, v14, v13, v15}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->FORMULA:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    new-array v12, v13, [Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    aput-object v0, v12, v3

    aput-object v1, v12, v4

    aput-object v2, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    aput-object v11, v12, v14

    sput-object v12, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->$VALUES:[Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    iput-object p4, p0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->name:Ljava/lang/String;

    return-void
.end method

.method public static byId(I)Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;
    .locals 1

    invoke-static {}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->values()[Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    move-result-object v0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static byName(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;
    .locals 5

    invoke-static {}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->values()[Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->$VALUES:[Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
