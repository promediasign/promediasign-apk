.class public Lcom/illposed/osc/OSCMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/illposed/osc/OSCPacket;


# static fields
.field private static final ILLEGAL_ADDRESS_CHAR:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final address:Ljava/lang/String;

.field private final arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private info:Lcom/illposed/osc/OSCMessageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[ #*,?\\[\\]{}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/illposed/osc/OSCMessage;->ILLEGAL_ADDRESS_CHAR:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/illposed/osc/OSCMessageInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;",
            "Lcom/illposed/osc/OSCMessageInfo;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/illposed/osc/OSCMessage;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/illposed/osc/OSCMessageInfo;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/illposed/osc/OSCMessageInfo;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;",
            "Lcom/illposed/osc/OSCMessageInfo;",
            "Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_0

    invoke-static {p1}, Lcom/illposed/osc/OSCMessage;->checkAddress(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/illposed/osc/OSCMessage;->address:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/illposed/osc/OSCMessage;->arguments:Ljava/util/List;

    iput-object p3, p0, Lcom/illposed/osc/OSCMessage;->info:Lcom/illposed/osc/OSCMessageInfo;

    return-void
.end method

.method private static checkAddress(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/illposed/osc/OSCMessage;->isValidAddress(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v1, "Not a valid OSC address: "

    .line 11
    .line 12
    invoke-static {v1, p0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public static isValidAddress(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "#reply"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    const-string v1, "//"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/illposed/osc/OSCMessage;->ILLEGAL_ADDRESS_CHAR:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/OSCMessage;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/illposed/osc/OSCMessage;->arguments:Ljava/util/List;

    return-object v0
.end method

.method public isInfoSet()Z
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/OSCMessage;->info:Lcom/illposed/osc/OSCMessageInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setInfo(Lcom/illposed/osc/OSCMessageInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/OSCMessage;->info:Lcom/illposed/osc/OSCMessageInfo;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/illposed/osc/OSCMessage;->info:Lcom/illposed/osc/OSCMessageInfo;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The meta-info of a message may only be set once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
