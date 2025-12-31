.class public final enum Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

.field public static final enum FOLDER_IS_INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

.field public static final enum FOLDER_IS_LIMITED_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

.field public static final enum INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

.field public static final enum OWNER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

.field public static final enum PERMISSION_DENIED:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

.field public static final enum RESTRICTED_BY_PARENT_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

.field public static final enum RESTRICTED_BY_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

.field public static final enum TARGET_IS_INDIRECT_MEMBER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

.field public static final enum TARGET_IS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

.field public static final enum TARGET_IS_SELF:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

.field public static final enum TARGET_NOT_ACTIVE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

.field public static final enum USER_ACCOUNT_TYPE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

.field public static final enum USER_NOT_ALLOWED_BY_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

.field public static final enum USER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

.field public static final enum USER_NOT_SAME_TEAM_AS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    const-string v1, "USER_NOT_SAME_TEAM_AS_OWNER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_NOT_SAME_TEAM_AS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    new-instance v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    const-string v3, "USER_NOT_ALLOWED_BY_OWNER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_NOT_ALLOWED_BY_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    new-instance v3, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    const-string v5, "TARGET_IS_INDIRECT_MEMBER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_IS_INDIRECT_MEMBER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    new-instance v5, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    const-string v7, "TARGET_IS_OWNER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_IS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    new-instance v7, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    const-string v9, "TARGET_IS_SELF"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_IS_SELF:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    new-instance v9, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    const-string v11, "TARGET_NOT_ACTIVE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_NOT_ACTIVE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    new-instance v11, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    const-string v13, "FOLDER_IS_LIMITED_TEAM_FOLDER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->FOLDER_IS_LIMITED_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    new-instance v13, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    const-string v15, "OWNER_NOT_ON_TEAM"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->OWNER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    new-instance v15, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    const-string v14, "PERMISSION_DENIED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->PERMISSION_DENIED:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    new-instance v14, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    const-string v12, "RESTRICTED_BY_TEAM"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->RESTRICTED_BY_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    new-instance v12, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    const-string v10, "USER_ACCOUNT_TYPE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_ACCOUNT_TYPE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    new-instance v10, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    const-string v8, "USER_NOT_ON_TEAM"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    new-instance v8, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    const-string v6, "FOLDER_IS_INSIDE_SHARED_FOLDER"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->FOLDER_IS_INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    new-instance v6, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    const-string v4, "RESTRICTED_BY_PARENT_FOLDER"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->RESTRICTED_BY_PARENT_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    new-instance v4, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    const-string v2, "INSUFFICIENT_PLAN"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    new-instance v2, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    const-string v6, "OTHER"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    const/16 v6, 0x10

    new-array v6, v6, [Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    sput-object v6, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    return-object v0
.end method
