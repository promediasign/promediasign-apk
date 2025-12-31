.class public final enum Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/LineDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DecorationShape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

.field public static final enum ARROW:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

.field public static final enum DIAMOND:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

.field public static final enum NONE:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

.field public static final enum OVAL:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

.field public static final enum STEALTH:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

.field public static final enum TRIANGLE:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;


# instance fields
.field public final nativeId:I

.field public final ooxmlId:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->NONE:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    new-instance v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    const-string v4, "TRIANGLE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v3, v5}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->TRIANGLE:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    new-instance v4, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    const-string v6, "STEALTH"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v5, v7}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->STEALTH:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    new-instance v6, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    const-string v8, "DIAMOND"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v7, v9}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->DIAMOND:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    new-instance v8, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    const-string v10, "OVAL"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v9, v11}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->OVAL:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    new-instance v10, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    const-string v12, "ARROW"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v11, v13}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;-><init>(Ljava/lang/String;III)V

    sput-object v10, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->ARROW:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    new-array v12, v13, [Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    sput-object v12, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->$VALUES:[Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->nativeId:I

    iput p4, p0, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->ooxmlId:I

    return-void
.end method

.method public static fromNativeId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->values()[Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->nativeId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->values()[Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->ooxmlId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->$VALUES:[Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    return-object v0
.end method
