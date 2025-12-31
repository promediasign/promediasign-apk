.class public Lio/milton/http/XmlWriter$Element;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/XmlWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Element"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final nsPrefix:Ljava/lang/String;

.field private openEnded:Z

.field private final parent:Lio/milton/http/XmlWriter$Element;

.field final synthetic this$0:Lio/milton/http/XmlWriter;


# direct methods
.method public constructor <init>(Lio/milton/http/XmlWriter;Lio/milton/http/XmlWriter$Element;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lio/milton/http/XmlWriter$Element;-><init>(Lio/milton/http/XmlWriter;Lio/milton/http/XmlWriter$Element;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lio/milton/http/XmlWriter;Lio/milton/http/XmlWriter$Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/milton/http/XmlWriter$Element;->parent:Lio/milton/http/XmlWriter$Element;

    iput-object p4, p0, Lio/milton/http/XmlWriter$Element;->name:Ljava/lang/String;

    iput-object p3, p0, Lio/milton/http/XmlWriter$Element;->nsPrefix:Ljava/lang/String;

    const-string p2, "<"

    invoke-static {p1, p2}, Lio/milton/http/XmlWriter;->access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-static {p1, p3}, Lio/milton/http/XmlWriter;->access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V

    const-string p2, ":"

    invoke-static {p1, p2}, Lio/milton/http/XmlWriter;->access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, p4}, Lio/milton/http/XmlWriter;->access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lio/milton/http/XmlWriter;Lio/milton/http/XmlWriter$Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/milton/http/XmlWriter$Element;->parent:Lio/milton/http/XmlWriter$Element;

    iput-object p5, p0, Lio/milton/http/XmlWriter$Element;->name:Ljava/lang/String;

    iput-object p4, p0, Lio/milton/http/XmlWriter$Element;->nsPrefix:Ljava/lang/String;

    const-string p2, "<"

    invoke-static {p1, p2}, Lio/milton/http/XmlWriter;->access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-static {p1, p4}, Lio/milton/http/XmlWriter;->access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V

    const-string p2, ":"

    invoke-static {p1, p2}, Lio/milton/http/XmlWriter;->access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, p5}, Lio/milton/http/XmlWriter;->access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V

    const-string p2, " "

    invoke-static {p1, p2}, Lio/milton/http/XmlWriter;->access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "xmlns:"

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "=\""

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/milton/http/XmlWriter;->access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lio/milton/http/XmlWriter;->access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V

    const-string p2, "\""

    invoke-static {p1, p2}, Lio/milton/http/XmlWriter;->access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public begin(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lio/milton/http/XmlWriter$Element;->begin(Ljava/lang/String;Ljava/lang/String;Z)Lio/milton/http/XmlWriter$Element;

    move-result-object p1

    return-object p1
.end method

.method public begin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;
    .locals 7

    .line 2
    iget-boolean v0, p0, Lio/milton/http/XmlWriter$Element;->openEnded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/milton/http/XmlWriter$Element;->open()Lio/milton/http/XmlWriter$Element;

    :cond_0
    new-instance v0, Lio/milton/http/XmlWriter$Element;

    iget-object v2, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/milton/http/XmlWriter$Element;-><init>(Lio/milton/http/XmlWriter;Lio/milton/http/XmlWriter$Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public begin(Ljava/lang/String;Ljava/lang/String;Z)Lio/milton/http/XmlWriter$Element;
    .locals 1

    .line 3
    iget-boolean v0, p0, Lio/milton/http/XmlWriter$Element;->openEnded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lio/milton/http/XmlWriter$Element;->open(Z)Lio/milton/http/XmlWriter$Element;

    :cond_0
    new-instance p3, Lio/milton/http/XmlWriter$Element;

    iget-object v0, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    invoke-direct {p3, v0, p0, p1, p2}, Lio/milton/http/XmlWriter$Element;-><init>(Lio/milton/http/XmlWriter;Lio/milton/http/XmlWriter$Element;Ljava/lang/String;Ljava/lang/String;)V

    return-object p3
.end method

.method public close()Lio/milton/http/XmlWriter$Element;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/milton/http/XmlWriter$Element;->close(Z)Lio/milton/http/XmlWriter$Element;

    move-result-object v0

    return-object v0
.end method

.method public close(Z)Lio/milton/http/XmlWriter$Element;
    .locals 4

    .line 2
    iget-boolean v0, p0, Lio/milton/http/XmlWriter$Element;->openEnded:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/milton/http/XmlWriter$Element;->nsPrefix:Ljava/lang/String;

    const-string v1, ">"

    const-string v2, "</"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/milton/http/XmlWriter$Element;->nsPrefix:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v2, p0, Lio/milton/http/XmlWriter$Element;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/milton/http/XmlWriter;->access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    invoke-virtual {v0}, Lio/milton/http/XmlWriter;->newLine()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    invoke-virtual {p1}, Lio/milton/http/XmlWriter;->newLine()V

    :cond_1
    iget-object p1, p0, Lio/milton/http/XmlWriter$Element;->parent:Lio/milton/http/XmlWriter$Element;

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    invoke-virtual {p1}, Lio/milton/http/XmlWriter;->newLine()V

    :cond_3
    invoke-virtual {p0}, Lio/milton/http/XmlWriter$Element;->noContent()Lio/milton/http/XmlWriter$Element;

    move-result-object p1

    return-object p1
.end method

.method public noContent()Lio/milton/http/XmlWriter$Element;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    const-string v1, "/>"

    invoke-static {v0, v1}, Lio/milton/http/XmlWriter;->access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    invoke-virtual {v0}, Lio/milton/http/XmlWriter;->newLine()V

    iget-object v0, p0, Lio/milton/http/XmlWriter$Element;->parent:Lio/milton/http/XmlWriter$Element;

    return-object v0
.end method

.method public noContent(Z)Lio/milton/http/XmlWriter$Element;
    .locals 2

    .line 2
    iget-object v0, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    const-string v1, "/>"

    invoke-static {v0, v1}, Lio/milton/http/XmlWriter;->access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    invoke-virtual {p1}, Lio/milton/http/XmlWriter;->newLine()V

    :cond_0
    iget-object p1, p0, Lio/milton/http/XmlWriter$Element;->parent:Lio/milton/http/XmlWriter$Element;

    return-object p1
.end method

.method public open()Lio/milton/http/XmlWriter$Element;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/milton/http/XmlWriter$Element;->open(Z)Lio/milton/http/XmlWriter$Element;

    move-result-object v0

    return-object v0
.end method

.method public open(Z)Lio/milton/http/XmlWriter$Element;
    .locals 2

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/milton/http/XmlWriter$Element;->openEnded:Z

    iget-object v0, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    const-string v1, ">"

    invoke-static {v0, v1}, Lio/milton/http/XmlWriter;->access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    invoke-virtual {p1}, Lio/milton/http/XmlWriter;->newLine()V

    :cond_0
    return-object p0
.end method

.method public writeAtt(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;
    .locals 2

    iget-object v0, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    const-string v1, " "

    invoke-static {v0, v1}, Lio/milton/http/XmlWriter;->access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    invoke-static {v0, p1}, Lio/milton/http/XmlWriter;->access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    const-string v0, "="

    invoke-static {p1, v0}, Lio/milton/http/XmlWriter;->access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    const/16 v0, 0x22

    invoke-static {p1, v0}, Lio/milton/http/XmlWriter;->access$100(Lio/milton/http/XmlWriter;C)V

    iget-object p1, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-static {p1, p2}, Lio/milton/http/XmlWriter;->access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    invoke-static {p1, v0}, Lio/milton/http/XmlWriter;->access$100(Lio/milton/http/XmlWriter;C)V

    return-object p0
.end method

.method public writeText(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/milton/http/XmlWriter$Element;->writeText(Ljava/lang/String;Z)Lio/milton/http/XmlWriter$Element;

    move-result-object p1

    return-object p1
.end method

.method public writeText(Ljava/lang/String;Z)Lio/milton/http/XmlWriter$Element;
    .locals 1

    .line 2
    iget-boolean v0, p0, Lio/milton/http/XmlWriter$Element;->openEnded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lio/milton/http/XmlWriter$Element;->open(Z)Lio/milton/http/XmlWriter$Element;

    :cond_0
    iget-object p2, p0, Lio/milton/http/XmlWriter$Element;->this$0:Lio/milton/http/XmlWriter;

    invoke-static {p2, p1}, Lio/milton/http/XmlWriter;->access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V

    return-object p0
.end method
