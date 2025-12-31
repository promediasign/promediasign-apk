.class Lcom/jcraft/jsch/RequestPtyReq;
.super Lcom/jcraft/jsch/Request;
.source "SourceFile"


# instance fields
.field private tcol:I

.field private terminal_mode:[B

.field private thp:I

.field private trow:I

.field private ttype:Ljava/lang/String;

.field private twp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    const-string v0, "vt100"

    iput-object v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->ttype:Ljava/lang/String;

    const/16 v0, 0x50

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->tcol:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->trow:I

    const/16 v0, 0x280

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->twp:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->thp:I

    sget-object v0, Lcom/jcraft/jsch/Util;->empty:[B

    iput-object v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->terminal_mode:[B

    return-void
.end method


# virtual methods
.method public request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    new-instance p1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {p1}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v0, Lcom/jcraft/jsch/Packet;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v1, 0x62

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const-string p2, "pty-req"

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Request;->waitForReply()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    iget-object p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->ttype:Ljava/lang/String;

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->tcol:I

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->trow:I

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->twp:I

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->thp:I

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->terminal_mode:[B

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Request;->write(Lcom/jcraft/jsch/Packet;)V

    return-void
.end method

.method public setTSize(IIII)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/RequestPtyReq;->tcol:I

    iput p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->trow:I

    iput p3, p0, Lcom/jcraft/jsch/RequestPtyReq;->twp:I

    iput p4, p0, Lcom/jcraft/jsch/RequestPtyReq;->thp:I

    return-void
.end method

.method public setTType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/RequestPtyReq;->ttype:Ljava/lang/String;

    return-void
.end method

.method public setTerminalMode([B)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/RequestPtyReq;->terminal_mode:[B

    return-void
.end method
