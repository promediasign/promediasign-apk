.class Lsk/mimac/slideshow/http/Authenticator$Session;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/http/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Session"
.end annotation


# instance fields
.field private final accessUser:Lsk/mimac/slideshow/database/entity/AccessUser;

.field private final maxAge:J

.field private timestamp:J


# direct methods
.method private constructor <init>(Lsk/mimac/slideshow/database/entity/AccessUser;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/http/Authenticator$Session;->accessUser:Lsk/mimac/slideshow/database/entity/AccessUser;

    iput-wide p2, p0, Lsk/mimac/slideshow/http/Authenticator$Session;->timestamp:J

    iput-wide p4, p0, Lsk/mimac/slideshow/http/Authenticator$Session;->maxAge:J

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/database/entity/AccessUser;JJLsk/mimac/slideshow/http/Authenticator$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lsk/mimac/slideshow/http/Authenticator$Session;-><init>(Lsk/mimac/slideshow/database/entity/AccessUser;JJ)V

    return-void
.end method

.method public static synthetic access$100(Lsk/mimac/slideshow/http/Authenticator$Session;)J
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/http/Authenticator$Session;->timestamp:J

    return-wide v0
.end method

.method public static synthetic access$102(Lsk/mimac/slideshow/http/Authenticator$Session;J)J
    .locals 0

    iput-wide p1, p0, Lsk/mimac/slideshow/http/Authenticator$Session;->timestamp:J

    return-wide p1
.end method

.method public static synthetic access$200(Lsk/mimac/slideshow/http/Authenticator$Session;)J
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/http/Authenticator$Session;->maxAge:J

    return-wide v0
.end method

.method public static synthetic access$300(Lsk/mimac/slideshow/http/Authenticator$Session;)Lsk/mimac/slideshow/database/entity/AccessUser;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/http/Authenticator$Session;->accessUser:Lsk/mimac/slideshow/database/entity/AccessUser;

    return-object p0
.end method
