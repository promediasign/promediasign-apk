.class Lio/milton/http/http11/SimpleContentGenerator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/Response$Entity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/milton/http/http11/SimpleContentGenerator;->generate(Lio/milton/resource/Resource;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/Response$Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/milton/http/http11/SimpleContentGenerator;

.field final synthetic val$finalTemplate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/milton/http/http11/SimpleContentGenerator;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/http11/SimpleContentGenerator$1;->this$0:Lio/milton/http/http11/SimpleContentGenerator;

    iput-object p2, p0, Lio/milton/http/http11/SimpleContentGenerator$1;->val$finalTemplate:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lio/milton/http/Response;Ljava/io/OutputStream;)V
    .locals 1

    iget-object p1, p0, Lio/milton/http/http11/SimpleContentGenerator$1;->val$finalTemplate:Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
