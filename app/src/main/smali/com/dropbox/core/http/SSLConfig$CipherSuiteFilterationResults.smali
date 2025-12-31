.class final Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/SSLConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CipherSuiteFilterationResults"
.end annotation


# instance fields
.field private final available:[Ljava/lang/String;

.field private final filtered:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;->available:[Ljava/lang/String;

    iput-object p2, p0, Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;->filtered:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;->available:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;->filtered:[Ljava/lang/String;

    return-object p0
.end method
