.class public final enum Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

.field public static final enum DISALLOWED:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    const-string v1, "DISALLOWED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;->DISALLOWED:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    new-instance v1, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    const-string v3, "OTHER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;->$VALUES:[Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;->$VALUES:[Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    return-object v0
.end method
