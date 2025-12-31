.class public Lcom/scand/svg/parser/TextSpan;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public parent:Lcom/scand/svg/parser/TextSpan;

.field public props:Lcom/scand/svg/parser/TextProperties;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/scand/svg/parser/TextProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/parser/TextSpan;->props:Lcom/scand/svg/parser/TextProperties;

    return-void
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/scand/svg/parser/TextSpan;->props:Lcom/scand/svg/parser/TextProperties;

    iget-object v1, v1, Lcom/scand/svg/parser/TextProperties;->x:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/scand/svg/parser/TextSpan;->props:Lcom/scand/svg/parser/TextProperties;

    iget-object v1, v1, Lcom/scand/svg/parser/TextProperties;->y:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/scand/svg/parser/TextSpan;->props:Lcom/scand/svg/parser/TextProperties;

    iget-object v1, v1, Lcom/scand/svg/parser/TextProperties;->fillColor:Lcom/scand/svg/parser/support/ColorSVG;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/scand/svg/parser/TextSpan;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    const-string v0, "\\s+"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(\\s)\\1"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/scand/svg/parser/TextSpan;->text:Ljava/lang/String;

    return-void
.end method
