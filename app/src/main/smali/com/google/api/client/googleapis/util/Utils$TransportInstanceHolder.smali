.class abstract Lcom/google/api/client/googleapis/util/Utils$TransportInstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransportInstanceHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/api/client/http/javanet/NetHttpTransport;

    invoke-direct {v0}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    sput-object v0, Lcom/google/api/client/googleapis/util/Utils$TransportInstanceHolder;->INSTANCE:Lcom/google/api/client/http/HttpTransport;

    return-void
.end method
