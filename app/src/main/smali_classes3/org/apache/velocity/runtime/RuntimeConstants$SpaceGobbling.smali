.class public final enum Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/velocity/runtime/RuntimeConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpaceGobbling"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

.field public static final enum BC:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

.field public static final enum LINES:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

.field public static final enum NONE:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

.field public static final enum STRUCTURED:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->NONE:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    new-instance v1, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    const-string v3, "BC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->BC:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    new-instance v3, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    const-string v5, "LINES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->LINES:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    new-instance v5, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    const-string v7, "STRUCTURED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->STRUCTURED:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->$VALUES:[Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;
    .locals 1

    const-class v0, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    return-object p0
.end method

.method public static values()[Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->$VALUES:[Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    invoke-virtual {v0}, [Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    return-object v0
.end method
