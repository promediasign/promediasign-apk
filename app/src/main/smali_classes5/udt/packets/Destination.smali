.class public Ludt/packets/Destination;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final address:Ljava/net/InetAddress;

.field private final port:I

.field private socketID:J


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ludt/packets/Destination;->address:Ljava/net/InetAddress;

    iput p2, p0, Ludt/packets/Destination;->port:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Ludt/packets/Destination;

    iget-object v2, p0, Ludt/packets/Destination;->address:Ljava/net/InetAddress;

    if-nez v2, :cond_3

    iget-object v2, p1, Ludt/packets/Destination;->address:Ljava/net/InetAddress;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v3, p1, Ludt/packets/Destination;->address:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget v2, p0, Ludt/packets/Destination;->port:I

    iget v3, p1, Ludt/packets/Destination;->port:I

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, Ludt/packets/Destination;->socketID:J

    iget-wide v4, p1, Ludt/packets/Destination;->socketID:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Ludt/packets/Destination;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Ludt/packets/Destination;->port:I

    return v0
.end method

.method public getSocketID()J
    .locals 2

    iget-wide v0, p0, Ludt/packets/Destination;->socketID:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Ludt/packets/Destination;->address:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Ludt/packets/Destination;->port:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Ludt/packets/Destination;->socketID:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public setSocketID(J)V
    .locals 0

    iput-wide p1, p0, Ludt/packets/Destination;->socketID:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Destination ["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ludt/packets/Destination;->address:Ljava/net/InetAddress;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " port="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Ludt/packets/Destination;->port:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " socketID="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-wide v1, p0, Ludt/packets/Destination;->socketID:J

    .line 33
    .line 34
    const-string v3, "]"

    .line 35
    .line 36
    invoke-static {v0, v1, v2, v3}, LA/g;->l(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
