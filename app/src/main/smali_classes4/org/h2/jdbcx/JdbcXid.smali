.class public Lorg/h2/jdbcx/JdbcXid;
.super Lorg/h2/message/TraceObject;
.source "SourceFile"

# interfaces
.implements Ljavax/transaction/xa/Xid;


# static fields
.field private static final PREFIX:Ljava/lang/String; = "XID"


# instance fields
.field private final branchQualifier:[B

.field private final formatId:I

.field private final globalTransactionId:[B


# direct methods
.method public constructor <init>(Lorg/h2/jdbcx/JdbcDataSourceFactory;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    invoke-virtual {p1}, Lorg/h2/jdbcx/JdbcDataSourceFactory;->getTrace()Lorg/h2/message/Trace;

    move-result-object p1

    const/16 v0, 0xf

    invoke-virtual {p0, p1, v0, p2}, Lorg/h2/message/TraceObject;->setTrace(Lorg/h2/message/Trace;II)V

    const p1, 0x15ff5

    :try_start_0
    new-instance p2, Ljava/util/StringTokenizer;

    const-string v0, "_"

    invoke-direct {p2, p3, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/h2/jdbcx/JdbcXid;->formatId:I

    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/StringUtils;->convertHexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbcx/JdbcXid;->branchQualifier:[B

    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/util/StringUtils;->convertHexToBytes(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lorg/h2/jdbcx/JdbcXid;->globalTransactionId:[B

    return-void

    :cond_0
    invoke-static {p1, p3}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p2

    throw p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {p1, p3}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public static toString(Ljavax/transaction/xa/Xid;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XID_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljavax/transaction/xa/Xid;->getFormatId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljavax/transaction/xa/Xid;->getBranchQualifier()[B

    move-result-object v2

    invoke-static {v2}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljavax/transaction/xa/Xid;->getGlobalTransactionId()[B

    move-result-object p0

    invoke-static {p0}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBranchQualifier()[B
    .locals 1

    const-string v0, "getBranchQualifier"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbcx/JdbcXid;->branchQualifier:[B

    return-object v0
.end method

.method public getFormatId()I
    .locals 1

    const-string v0, "getFormatId"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget v0, p0, Lorg/h2/jdbcx/JdbcXid;->formatId:I

    return v0
.end method

.method public getGlobalTransactionId()[B
    .locals 1

    const-string v0, "getGlobalTransactionId"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbcx/JdbcXid;->globalTransactionId:[B

    return-object v0
.end method
