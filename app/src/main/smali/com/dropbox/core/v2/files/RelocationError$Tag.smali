.class public final enum Lcom/dropbox/core/v2/files/RelocationError$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/files/RelocationError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum CANT_MOVE_INTO_VAULT:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum CANT_MOVE_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum INTERNAL_ERROR:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum TO:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string v1, "FROM_LOOKUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    new-instance v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string v3, "FROM_WRITE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    new-instance v3, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string v5, "TO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    new-instance v5, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string v7, "CANT_COPY_SHARED_FOLDER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    new-instance v7, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string v9, "CANT_NEST_SHARED_FOLDER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    new-instance v9, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string v11, "CANT_MOVE_FOLDER_INTO_ITSELF"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    new-instance v11, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string v13, "TOO_MANY_FILES"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    new-instance v13, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string v15, "DUPLICATED_OR_NESTED_PATHS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/dropbox/core/v2/files/RelocationError$Tag;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    new-instance v15, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string v14, "CANT_TRANSFER_OWNERSHIP"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    new-instance v14, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string v12, "INSUFFICIENT_QUOTA"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/dropbox/core/v2/files/RelocationError$Tag;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    new-instance v12, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string v10, "INTERNAL_ERROR"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/dropbox/core/v2/files/RelocationError$Tag;->INTERNAL_ERROR:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    new-instance v10, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string v8, "CANT_MOVE_SHARED_FOLDER"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_MOVE_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    new-instance v8, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string v6, "CANT_MOVE_INTO_VAULT"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_MOVE_INTO_VAULT:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    new-instance v6, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string v4, "OTHER"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dropbox/core/v2/files/RelocationError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    sput-object v4, Lcom/dropbox/core/v2/files/RelocationError$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/RelocationError$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationError$Tag;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/files/RelocationError$Tag;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/files/RelocationError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/files/RelocationError$Tag;

    return-object v0
.end method
