.class public Lcom/scand/svg/css/FontFaceRule;
.super Lcom/scand/svg/css/BaseRule;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/scand/svg/css/BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "@font-face {"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/scand/svg/css/BaseRule;->serializeProperties(Ljava/io/PrintWriter;Z)V

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
