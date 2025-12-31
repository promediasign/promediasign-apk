.class Lorg/h2/server/pg/PgServerThread$Prepared;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/server/pg/PgServerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Prepared"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field paramType:[I

.field prep:Lorg/h2/jdbc/JdbcPreparedStatement;

.field sql:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
