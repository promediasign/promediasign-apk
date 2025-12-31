.class public final enum Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;

.field public static final enum LEVEL_1:Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;

.field public static final enum LEVEL_INFINITY:Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;

    const/4 v1, 0x0

    const-string v2, "1"

    const-string v3, "LEVEL_1"

    invoke-direct {v0, v3, v1, v2}, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;->LEVEL_1:Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;

    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;

    const/4 v3, 0x1

    const-string v4, "infinite"

    const-string v5, "LEVEL_INFINITY"

    invoke-direct {v2, v5, v3, v4}, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;->LEVEL_INFINITY:Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;

    aput-object v0, v4, v1

    aput-object v2, v4, v3

    sput-object v4, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;->$VALUES:[Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;
    .locals 1

    const-class v0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;

    return-object p0
.end method

.method public static values()[Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;
    .locals 1

    sget-object v0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;->$VALUES:[Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;

    invoke-virtual {v0}, [Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/report/SyncCollectionReport$SyncLevel;->value:Ljava/lang/String;

    return-object v0
.end method
