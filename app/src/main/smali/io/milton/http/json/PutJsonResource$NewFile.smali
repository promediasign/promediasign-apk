.class public Lio/milton/http/json/PutJsonResource$NewFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/json/PutJsonResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewFile"
.end annotation


# instance fields
.field private contentType:Ljava/lang/String;

.field private href:Ljava/lang/String;

.field private length:J

.field private originalName:Ljava/lang/String;

.field final synthetic this$0:Lio/milton/http/json/PutJsonResource;


# direct methods
.method public constructor <init>(Lio/milton/http/json/PutJsonResource;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/json/PutJsonResource$NewFile;->this$0:Lio/milton/http/json/PutJsonResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/json/PutJsonResource$NewFile;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/json/PutJsonResource$NewFile;->href:Ljava/lang/String;

    return-void
.end method

.method public setLength(J)V
    .locals 0

    iput-wide p1, p0, Lio/milton/http/json/PutJsonResource$NewFile;->length:J

    return-void
.end method

.method public setOriginalName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/json/PutJsonResource$NewFile;->originalName:Ljava/lang/String;

    return-void
.end method
