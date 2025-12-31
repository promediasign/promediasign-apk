.class public final enum Lio/milton/ldap/Conditions$FolderQueryTraversal;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/ldap/Conditions$FolderQueryTraversal;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/ldap/Conditions$FolderQueryTraversal;

.field public static final enum Deep:Lio/milton/ldap/Conditions$FolderQueryTraversal;

.field public static final enum Shallow:Lio/milton/ldap/Conditions$FolderQueryTraversal;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/milton/ldap/Conditions$FolderQueryTraversal;

    const-string v1, "Shallow"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/milton/ldap/Conditions$FolderQueryTraversal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/milton/ldap/Conditions$FolderQueryTraversal;->Shallow:Lio/milton/ldap/Conditions$FolderQueryTraversal;

    new-instance v1, Lio/milton/ldap/Conditions$FolderQueryTraversal;

    const-string v3, "Deep"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/milton/ldap/Conditions$FolderQueryTraversal;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/milton/ldap/Conditions$FolderQueryTraversal;->Deep:Lio/milton/ldap/Conditions$FolderQueryTraversal;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/milton/ldap/Conditions$FolderQueryTraversal;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lio/milton/ldap/Conditions$FolderQueryTraversal;->$VALUES:[Lio/milton/ldap/Conditions$FolderQueryTraversal;

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

.method public static valueOf(Ljava/lang/String;)Lio/milton/ldap/Conditions$FolderQueryTraversal;
    .locals 1

    const-class v0, Lio/milton/ldap/Conditions$FolderQueryTraversal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/ldap/Conditions$FolderQueryTraversal;

    return-object p0
.end method

.method public static values()[Lio/milton/ldap/Conditions$FolderQueryTraversal;
    .locals 1

    sget-object v0, Lio/milton/ldap/Conditions$FolderQueryTraversal;->$VALUES:[Lio/milton/ldap/Conditions$FolderQueryTraversal;

    invoke-virtual {v0}, [Lio/milton/ldap/Conditions$FolderQueryTraversal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/ldap/Conditions$FolderQueryTraversal;

    return-object v0
.end method
