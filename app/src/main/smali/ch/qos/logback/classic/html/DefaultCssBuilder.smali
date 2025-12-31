.class public Lch/qos/logback/classic/html/DefaultCssBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lch/qos/logback/core/html/CssBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCss(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    const-string v0, "<style  type=\"text/css\">"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "table { margin-left: 2em; margin-right: 2em; border-left: 2px solid #AAA; }"

    .line 9
    .line 10
    const-string v2, "TR.even { background: #FFFFFF; }"

    .line 11
    .line 12
    invoke-static {p1, v0, v1, v0, v2}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "TR.odd { background: #EAEAEA; }"

    .line 16
    .line 17
    const-string v2, "TR.warn TD.Level, TR.error TD.Level, TR.fatal TD.Level {font-weight: bold; color: #FF4040 }"

    .line 18
    .line 19
    invoke-static {p1, v0, v1, v0, v2}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "TD { padding-right: 1ex; padding-left: 1ex; border-right: 2px solid #AAA; }"

    .line 23
    .line 24
    const-string v2, "TD.Time, TD.Date { text-align: right; font-family: courier, monospace; font-size: smaller; }"

    .line 25
    .line 26
    invoke-static {p1, v0, v1, v0, v2}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "TD.Thread { text-align: left; }"

    .line 30
    .line 31
    const-string v2, "TD.Level { text-align: right; }"

    .line 32
    .line 33
    invoke-static {p1, v0, v1, v0, v2}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "TD.Logger { text-align: left; }"

    .line 37
    .line 38
    const-string v2, "TR.header { background: #596ED5; color: #FFF; font-weight: bold; font-size: larger; }"

    .line 39
    .line 40
    invoke-static {p1, v0, v1, v0, v2}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v1, "TD.Exception { background: #A2AEE8; font-family: courier, monospace;}"

    .line 44
    .line 45
    const-string v2, "</style>"

    .line 46
    .line 47
    invoke-static {p1, v0, v1, v0, v2}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    return-void
.end method
