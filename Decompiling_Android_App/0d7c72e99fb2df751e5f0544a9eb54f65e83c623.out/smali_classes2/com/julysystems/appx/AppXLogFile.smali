.class Lcom/julysystems/appx/AppXLogFile;
.super Ljava/lang/Object;
.source "AppXLogFile.java"


# static fields
.field private static file:Ljava/io/File;

.field private static randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/julysystems/appx/AppXLogFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 8
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/logFile.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/julysystems/appx/AppXLogFile;->file:Ljava/io/File;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static WriteToLog(Ljava/lang/String;)V
    .locals 4
    .param p0, "logData"    # Ljava/lang/String;

    .prologue
    .line 11
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    sget-object v2, Lcom/julysystems/appx/AppXLogFile;->file:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/julysystems/appx/AppXLogFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 12
    sget-object v1, Lcom/julysystems/appx/AppXLogFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    sget-object v2, Lcom/julysystems/appx/AppXLogFile;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 13
    sget-object v1, Lcom/julysystems/appx/AppXLogFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :try_start_1
    sget-object v1, Lcom/julysystems/appx/AppXLogFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 20
    sget-object v1, Lcom/julysystems/appx/AppXLogFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 14
    :catch_0
    move-exception v0

    .line 15
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :try_start_3
    sget-object v1, Lcom/julysystems/appx/AppXLogFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 20
    sget-object v1, Lcom/julysystems/appx/AppXLogFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 21
    :catch_1
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 17
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 19
    :try_start_4
    sget-object v2, Lcom/julysystems/appx/AppXLogFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_1

    .line 20
    sget-object v2, Lcom/julysystems/appx/AppXLogFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 25
    :cond_1
    :goto_1
    throw v1

    .line 21
    :catch_2
    move-exception v0

    .line 22
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 21
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 22
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
