.class public final enum Lcom/dropbox/core/v2/team/MemberAddResult$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/MemberAddResult$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum DUPLICATE_EXTERNAL_MEMBER_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum DUPLICATE_MEMBER_PERSISTENT_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum FREE_TEAM_MEMBER_LIMIT_REACHED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum PERSISTENT_ID_DISABLED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum SUCCESS:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum USER_ALREADY_ON_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum USER_ALREADY_PAIRED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum USER_CREATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum USER_MIGRATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum USER_ON_ANOTHER_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    new-instance v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string v3, "TEAM_LICENSE_LIMIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    new-instance v3, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string v5, "FREE_TEAM_MEMBER_LIMIT_REACHED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->FREE_TEAM_MEMBER_LIMIT_REACHED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    new-instance v5, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string v7, "USER_ALREADY_ON_TEAM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_ON_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    new-instance v7, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string v9, "USER_ON_ANOTHER_TEAM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ON_ANOTHER_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    new-instance v9, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string v11, "USER_ALREADY_PAIRED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_PAIRED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    new-instance v11, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string v13, "USER_MIGRATION_FAILED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_MIGRATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    new-instance v13, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string v15, "DUPLICATE_EXTERNAL_MEMBER_ID"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_EXTERNAL_MEMBER_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    new-instance v15, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string v14, "DUPLICATE_MEMBER_PERSISTENT_ID"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_MEMBER_PERSISTENT_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    new-instance v14, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string v12, "PERSISTENT_ID_DISABLED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->PERSISTENT_ID_DISABLED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    new-instance v12, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string v10, "USER_CREATION_FAILED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_CREATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->$VALUES:[Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult$Tag;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/MemberAddResult$Tag;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->$VALUES:[Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    return-object v0
.end method
