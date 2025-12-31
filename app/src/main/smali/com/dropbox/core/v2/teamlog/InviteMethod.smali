.class public final enum Lcom/dropbox/core/v2/teamlog/InviteMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamlog/InviteMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamlog/InviteMethod;

.field public static final enum AUTO_APPROVE:Lcom/dropbox/core/v2/teamlog/InviteMethod;

.field public static final enum INVITE_LINK:Lcom/dropbox/core/v2/teamlog/InviteMethod;

.field public static final enum MOVED_FROM_ANOTHER_TEAM:Lcom/dropbox/core/v2/teamlog/InviteMethod;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/InviteMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/dropbox/core/v2/teamlog/InviteMethod;

    const-string v1, "INVITE_LINK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/InviteMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/InviteMethod;->INVITE_LINK:Lcom/dropbox/core/v2/teamlog/InviteMethod;

    new-instance v1, Lcom/dropbox/core/v2/teamlog/InviteMethod;

    const-string v3, "AUTO_APPROVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/teamlog/InviteMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/teamlog/InviteMethod;->AUTO_APPROVE:Lcom/dropbox/core/v2/teamlog/InviteMethod;

    new-instance v3, Lcom/dropbox/core/v2/teamlog/InviteMethod;

    const-string v5, "MOVED_FROM_ANOTHER_TEAM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dropbox/core/v2/teamlog/InviteMethod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/teamlog/InviteMethod;->MOVED_FROM_ANOTHER_TEAM:Lcom/dropbox/core/v2/teamlog/InviteMethod;

    new-instance v5, Lcom/dropbox/core/v2/teamlog/InviteMethod;

    const-string v7, "OTHER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dropbox/core/v2/teamlog/InviteMethod;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/teamlog/InviteMethod;->OTHER:Lcom/dropbox/core/v2/teamlog/InviteMethod;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/dropbox/core/v2/teamlog/InviteMethod;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/dropbox/core/v2/teamlog/InviteMethod;->$VALUES:[Lcom/dropbox/core/v2/teamlog/InviteMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/InviteMethod;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/teamlog/InviteMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamlog/InviteMethod;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/InviteMethod;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/teamlog/InviteMethod;->$VALUES:[Lcom/dropbox/core/v2/teamlog/InviteMethod;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/InviteMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/InviteMethod;

    return-object v0
.end method
