.class public Lcom/scand/svg/css/PageRule;
.super Lcom/scand/svg/css/BaseRule;
.source "SourceFile"


# instance fields
.field private pseudo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/scand/svg/css/BaseRule;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/css/PageRule;->pseudo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public serialize(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "@page"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/scand/svg/css/PageRule;->pseudo:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " :"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/scand/svg/css/PageRule;->pseudo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    const-string v0, " {"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/scand/svg/css/BaseRule;->serializeProperties(Ljava/io/PrintWriter;Z)V

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
