.class public Lsk/mimac/slideshow/utils/Shell$Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/utils/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field private final result:I

.field private final stderr:Ljava/lang/String;

.field private final stdout:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsk/mimac/slideshow/utils/Shell$Response;->stdout:Ljava/lang/String;

    iput-object p3, p0, Lsk/mimac/slideshow/utils/Shell$Response;->stderr:Ljava/lang/String;

    iput p1, p0, Lsk/mimac/slideshow/utils/Shell$Response;->result:I

    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/utils/Shell$Response;->result:I

    return v0
.end method

.method public getStderr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/utils/Shell$Response;->stderr:Ljava/lang/String;

    return-object v0
.end method

.method public getStdout()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/utils/Shell$Response;->stdout:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{stdout="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lsk/mimac/slideshow/utils/Shell$Response;->stdout:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "<br>"

    .line 11
    .line 12
    const-string v3, " "

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", stderr="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lsk/mimac/slideshow/utils/Shell$Response;->stderr:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", result="

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v1, p0, Lsk/mimac/slideshow/utils/Shell$Response;->result:I

    .line 41
    .line 42
    const/16 v2, 0x7d

    .line 43
    .line 44
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->r(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method
