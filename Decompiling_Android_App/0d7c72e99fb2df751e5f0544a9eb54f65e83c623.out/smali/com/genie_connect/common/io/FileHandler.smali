.class public Lcom/genie_connect/common/io/FileHandler;
.super Ljava/lang/Object;
.source "FileHandler.java"


# instance fields
.field final bufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/16 v0, 0x400

    iput v0, p0, Lcom/genie_connect/common/io/FileHandler;->bufferSize:I

    .line 58
    return-void
.end method


# virtual methods
.method public delete(Ljava/io/File;)V
    .locals 6
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 110
    .local v1, "c":Ljava/io/File;
    invoke-virtual {p0, v1}, Lcom/genie_connect/common/io/FileHandler;->delete(Ljava/io/File;)V

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "c":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    :cond_1
    :goto_1
    return-void

    .line 117
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ DSS: Could not delete file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/genie_connect/common/utils/CommonLog;->warn(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public listFiles(Ljava/io/File;)[Ljava/io/File;
    .locals 1
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 130
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public readFileAsJson(Ljava/io/File;)Lcom/google/gson/stream/JsonReader;
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public writeToFile(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "createPath"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v4, "f":Ljava/io/File;
    if-eqz p3, :cond_0

    .line 74
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 75
    new-instance v2, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v2, "d":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 80
    .end local v2    # "d":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    .line 83
    .local v0, "bout":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 84
    .local v5, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v7, 0x400

    invoke-direct {v1, v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    .end local v0    # "bout":Ljava/io/BufferedOutputStream;
    .local v1, "bout":Ljava/io/BufferedOutputStream;
    const/16 v7, 0x400

    :try_start_1
    new-array v3, v7, [B

    .line 87
    .local v3, "data":[B
    const/4 v6, 0x0

    .line 88
    .local v6, "x":I
    :goto_0
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {p1, v3, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_2

    .line 89
    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    .end local v3    # "data":[B
    .end local v6    # "x":I
    :catchall_0
    move-exception v7

    move-object v0, v1

    .end local v1    # "bout":Ljava/io/BufferedOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "bout":Ljava/io/BufferedOutputStream;
    :goto_1
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    :cond_1
    throw v7

    .line 92
    .end local v0    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v3    # "data":[B
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "x":I
    :cond_2
    if-eqz v1, :cond_3

    .line 93
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 98
    :cond_3
    return-void

    .line 92
    .end local v1    # "bout":Ljava/io/BufferedOutputStream;
    .end local v3    # "data":[B
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "x":I
    .restart local v0    # "bout":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v7

    goto :goto_1
.end method
