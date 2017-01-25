.class public Lorg/apache/ignite/internal/util/portscanner/GridJmxPortFinder;
.super Ljava/lang/Object;
.source "GridJmxPortFinder.java"


# static fields
.field public static final IGNITE_JMX_PORT:Ljava/lang/String; = "IGNITE_JMX_PORT"

.field private static final MAX_PORT:I = 0xffff

.field private static final MIN_PORT:I = 0xbfd8


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private static findPort(I)I
    .locals 2
    .param p0, "startPort"    # I

    .prologue
    .line 139
    move v0, p0

    .local v0, "port":I
    :goto_0
    const v1, 0xffff

    if-gt v0, v1, :cond_1

    .line 140
    invoke-static {v0}, Lorg/apache/ignite/internal/util/portscanner/GridJmxPortFinder;->isAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    .end local v0    # "port":I
    :goto_1
    return v0

    .line 139
    .restart local v0    # "port":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static isAvailable(I)Z
    .locals 5
    .param p0, "port"    # I

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 157
    .local v1, "sock":Ljava/net/ServerSocket;
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2, p0}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local v1    # "sock":Ljava/net/ServerSocket;
    .local v2, "sock":Ljava/net/ServerSocket;
    const/4 v3, 0x1

    .line 165
    if-eqz v2, :cond_0

    .line 167
    :try_start_1
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    move-object v1, v2

    .line 172
    .end local v2    # "sock":Ljava/net/ServerSocket;
    .restart local v1    # "sock":Ljava/net/ServerSocket;
    :cond_1
    :goto_1
    return v3

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "ignored":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 165
    if-eqz v1, :cond_1

    .line 167
    :try_start_2
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 169
    :catch_1
    move-exception v4

    goto :goto_1

    .line 165
    .end local v0    # "ignored":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 167
    :try_start_3
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 172
    :cond_2
    :goto_2
    throw v3

    .line 169
    .end local v1    # "sock":Ljava/net/ServerSocket;
    .restart local v2    # "sock":Ljava/net/ServerSocket;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v2    # "sock":Ljava/net/ServerSocket;
    .restart local v1    # "sock":Ljava/net/ServerSocket;
    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    .line 54
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const-string v9, "IGNITE_JMX_PORT"

    invoke-static {v9, v10}, Lorg/apache/ignite/IgniteSystemProperties;->getInteger(Ljava/lang/String;I)I

    move-result v2

    .line 64
    .local v2, "jmxPort":I
    if-eq v2, v10, :cond_1

    .line 65
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v2}, Ljava/io/PrintStream;->println(I)V

    .line 130
    .end local v2    # "jmxPort":I
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v1

    .line 59
    .local v1, "ignored":Ljava/net/UnknownHostException;
    goto :goto_0

    .line 70
    .end local v1    # "ignored":Ljava/net/UnknownHostException;
    .restart local v2    # "jmxPort":I
    :cond_1
    const/4 v5, 0x0

    .line 71
    .local v5, "ra":Ljava/io/RandomAccessFile;
    const/4 v3, 0x0

    .line 74
    .local v3, "lock":Ljava/nio/channels/FileLock;
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v9, "java.io.tmpdir"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "ignite.lastport.tmp"

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .local v0, "file":Ljava/io/File;
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    .line 77
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ljava/io/File;->setWritable(ZZ)Z

    .line 79
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v9, "rw"

    invoke-direct {v6, v0, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .end local v5    # "ra":Ljava/io/RandomAccessFile;
    .local v6, "ra":Ljava/io/RandomAccessFile;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3

    .line 83
    const-wide/16 v10, 0x0

    invoke-virtual {v6, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 85
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, "startPortStr":Ljava/lang/String;
    const v7, 0xbfd8

    .line 89
    .local v7, "startPort":I
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v9

    if-nez v9, :cond_3

    .line 91
    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v9

    add-int/lit8 v7, v9, 0x1

    .line 93
    const v9, 0xbfd8

    if-lt v7, v9, :cond_2

    const v9, 0xffff

    if-le v7, v9, :cond_3

    .line 94
    :cond_2
    const v7, 0xbfd8

    .line 101
    :cond_3
    :goto_1
    :try_start_4
    invoke-static {v7}, Lorg/apache/ignite/internal/util/portscanner/GridJmxPortFinder;->findPort(I)I

    move-result v4

    .line 103
    .local v4, "port":I
    const-wide/16 v10, 0x0

    invoke-virtual {v6, v10, v11}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 105
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 108
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v4}, Ljava/io/PrintStream;->println(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 114
    if-eqz v3, :cond_4

    .line 116
    :try_start_5
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 122
    :cond_4
    :goto_2
    if-eqz v6, :cond_8

    .line 124
    :try_start_6
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-object v5, v6

    .line 128
    .end local v6    # "ra":Ljava/io/RandomAccessFile;
    .restart local v5    # "ra":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 126
    .end local v5    # "ra":Ljava/io/RandomAccessFile;
    .restart local v6    # "ra":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v9

    move-object v5, v6

    .line 128
    .end local v6    # "ra":Ljava/io/RandomAccessFile;
    .restart local v5    # "ra":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 110
    .end local v0    # "file":Ljava/io/File;
    .end local v4    # "port":I
    .end local v7    # "startPort":I
    .end local v8    # "startPortStr":Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 114
    :goto_3
    if-eqz v3, :cond_5

    .line 116
    :try_start_7
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 122
    :cond_5
    :goto_4
    if-eqz v5, :cond_0

    .line 124
    :try_start_8
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 126
    :catch_3
    move-exception v9

    goto/16 :goto_0

    .line 114
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v3, :cond_6

    .line 116
    :try_start_9
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 122
    :cond_6
    :goto_6
    if-eqz v5, :cond_7

    .line 124
    :try_start_a
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 128
    :cond_7
    :goto_7
    throw v9

    .line 118
    .end local v5    # "ra":Ljava/io/RandomAccessFile;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v4    # "port":I
    .restart local v6    # "ra":Ljava/io/RandomAccessFile;
    .restart local v7    # "startPort":I
    .restart local v8    # "startPortStr":Ljava/lang/String;
    :catch_4
    move-exception v9

    goto :goto_2

    .end local v0    # "file":Ljava/io/File;
    .end local v4    # "port":I
    .end local v6    # "ra":Ljava/io/RandomAccessFile;
    .end local v7    # "startPort":I
    .end local v8    # "startPortStr":Ljava/lang/String;
    .restart local v5    # "ra":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v9

    goto :goto_4

    :catch_6
    move-exception v10

    goto :goto_6

    .line 126
    :catch_7
    move-exception v10

    goto :goto_7

    .line 114
    .end local v5    # "ra":Ljava/io/RandomAccessFile;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v6    # "ra":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "ra":Ljava/io/RandomAccessFile;
    .restart local v5    # "ra":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 110
    .end local v5    # "ra":Ljava/io/RandomAccessFile;
    .restart local v6    # "ra":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v9

    move-object v5, v6

    .end local v6    # "ra":Ljava/io/RandomAccessFile;
    .restart local v5    # "ra":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 96
    .end local v5    # "ra":Ljava/io/RandomAccessFile;
    .restart local v6    # "ra":Ljava/io/RandomAccessFile;
    .restart local v7    # "startPort":I
    .restart local v8    # "startPortStr":Ljava/lang/String;
    :catch_9
    move-exception v9

    goto :goto_1

    .restart local v4    # "port":I
    :cond_8
    move-object v5, v6

    .end local v6    # "ra":Ljava/io/RandomAccessFile;
    .restart local v5    # "ra":Ljava/io/RandomAccessFile;
    goto/16 :goto_0
.end method
