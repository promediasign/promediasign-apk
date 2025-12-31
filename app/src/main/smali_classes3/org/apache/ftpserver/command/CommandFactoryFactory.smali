.class public Lorg/apache/ftpserver/command/CommandFactoryFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_COMMAND_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/command/Command;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private commandMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/command/Command;",
            ">;"
        }
    .end annotation
.end field

.field private useDefaultCommands:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/ABOR;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/ABOR;-><init>()V

    const-string v2, "ABOR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/ACCT;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/ACCT;-><init>()V

    const-string v2, "ACCT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/APPE;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/APPE;-><init>()V

    const-string v2, "APPE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/AUTH;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/AUTH;-><init>()V

    const-string v2, "AUTH"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/CDUP;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/CDUP;-><init>()V

    const-string v2, "CDUP"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/CWD;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/CWD;-><init>()V

    const-string v2, "CWD"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/DELE;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/DELE;-><init>()V

    const-string v2, "DELE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/EPRT;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/EPRT;-><init>()V

    const-string v2, "EPRT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/EPSV;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/EPSV;-><init>()V

    const-string v2, "EPSV"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/FEAT;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/FEAT;-><init>()V

    const-string v2, "FEAT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/HELP;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/HELP;-><init>()V

    const-string v2, "HELP"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/LANG;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/LANG;-><init>()V

    const-string v2, "LANG"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/LIST;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/LIST;-><init>()V

    const-string v2, "LIST"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/MD5;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/MD5;-><init>()V

    const-string v2, "MD5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/MFMT;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/MFMT;-><init>()V

    const-string v2, "MFMT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/MD5;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/MD5;-><init>()V

    const-string v2, "MMD5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/MDTM;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/MDTM;-><init>()V

    const-string v2, "MDTM"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/MLST;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/MLST;-><init>()V

    const-string v2, "MLST"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/MKD;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/MKD;-><init>()V

    const-string v2, "MKD"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/MLSD;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/MLSD;-><init>()V

    const-string v2, "MLSD"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/MODE;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/MODE;-><init>()V

    const-string v2, "MODE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/NLST;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/NLST;-><init>()V

    const-string v2, "NLST"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/NOOP;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/NOOP;-><init>()V

    const-string v2, "NOOP"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/OPTS;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/OPTS;-><init>()V

    const-string v2, "OPTS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/PASS;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/PASS;-><init>()V

    const-string v2, "PASS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/PASV;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/PASV;-><init>()V

    const-string v2, "PASV"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/PBSZ;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/PBSZ;-><init>()V

    const-string v2, "PBSZ"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/PORT;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/PORT;-><init>()V

    const-string v2, "PORT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/PROT;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/PROT;-><init>()V

    const-string v2, "PROT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/PWD;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/PWD;-><init>()V

    const-string v2, "PWD"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/QUIT;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/QUIT;-><init>()V

    const-string v2, "QUIT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/REIN;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/REIN;-><init>()V

    const-string v2, "REIN"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/REST;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/REST;-><init>()V

    const-string v2, "REST"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/RETR;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/RETR;-><init>()V

    const-string v2, "RETR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/RMD;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/RMD;-><init>()V

    const-string v2, "RMD"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/RNFR;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/RNFR;-><init>()V

    const-string v2, "RNFR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/RNTO;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/RNTO;-><init>()V

    const-string v2, "RNTO"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/SITE;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/SITE;-><init>()V

    const-string v2, "SITE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/SIZE;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/SIZE;-><init>()V

    const-string v2, "SIZE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/STAT;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/STAT;-><init>()V

    const-string v2, "STAT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/STOR;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/STOR;-><init>()V

    const-string v2, "STOR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/STOU;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/STOU;-><init>()V

    const-string v2, "STOU"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/STRU;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/STRU;-><init>()V

    const-string v2, "STRU"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/SYST;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/SYST;-><init>()V

    const-string v2, "SYST"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/TYPE;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/TYPE;-><init>()V

    const-string v2, "TYPE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/ftpserver/command/impl/USER;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/USER;-><init>()V

    const-string v2, "USER"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->commandMap:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->useDefaultCommands:Z

    return-void
.end method


# virtual methods
.method public addCommand(Ljava/lang/String;Lorg/apache/ftpserver/command/Command;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->commandMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "command can not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "commandName can not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createCommandFactory()Lorg/apache/ftpserver/command/CommandFactory;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-boolean v1, p0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->useDefaultCommands:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->commandMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v1, Lorg/apache/ftpserver/command/impl/DefaultCommandFactory;

    invoke-direct {v1, v0}, Lorg/apache/ftpserver/command/impl/DefaultCommandFactory;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public getCommandMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/command/Command;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->commandMap:Ljava/util/Map;

    return-object v0
.end method

.method public isUseDefaultCommands()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->useDefaultCommands:Z

    return v0
.end method

.method public setCommandMap(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/command/Command;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->commandMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->commandMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "commandMap can not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUseDefaultCommands(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->useDefaultCommands:Z

    return-void
.end method
