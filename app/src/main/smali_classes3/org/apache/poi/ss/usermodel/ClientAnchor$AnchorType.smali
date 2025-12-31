.class public final enum Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/ClientAnchor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnchorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

.field public static final enum DONT_MOVE_AND_RESIZE:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

.field public static final enum DONT_MOVE_DO_RESIZE:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

.field public static final enum MOVE_AND_RESIZE:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

.field public static final enum MOVE_DONT_RESIZE:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;


# instance fields
.field public final value:S


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    const-string v1, "MOVE_AND_RESIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->MOVE_AND_RESIZE:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    new-instance v1, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    const-string v3, "DONT_MOVE_DO_RESIZE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->DONT_MOVE_DO_RESIZE:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    new-instance v3, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    const-string v5, "MOVE_DONT_RESIZE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->MOVE_DONT_RESIZE:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    new-instance v5, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    const-string v7, "DONT_MOVE_AND_RESIZE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->DONT_MOVE_AND_RESIZE:Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->$VALUES:[Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-short p1, p3

    iput-short p1, p0, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->value:S

    return-void
.end method

.method public static byId(I)Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-static {}, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->values()[Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->$VALUES:[Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/ClientAnchor$AnchorType;

    return-object v0
.end method
