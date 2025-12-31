.class public Lorg/apache/poi/hssf/dev/ReSave;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 14

    const-string v0, "done"

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v7, p0, v4

    const-string v8, "-dg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_0
    const-string v8, "-bos"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v6, 0x1

    goto/16 :goto_4

    :cond_1
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "reading "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v11, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v11, v9}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v8, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v12

    if-ge v8, v12, :cond_3

    invoke-virtual {v11, v8}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v12

    if-eqz v5, :cond_2

    invoke-virtual {v12}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    move-object v8, v1

    goto :goto_3

    :cond_4
    const-string v8, ".xls"

    const-string v12, "-saved.xls"

    invoke-virtual {v7, v8, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "saving to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    :try_start_1
    invoke-virtual {v11, v8}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->write(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->close()V

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->close()V

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    throw p0

    :cond_5
    return-void
.end method
