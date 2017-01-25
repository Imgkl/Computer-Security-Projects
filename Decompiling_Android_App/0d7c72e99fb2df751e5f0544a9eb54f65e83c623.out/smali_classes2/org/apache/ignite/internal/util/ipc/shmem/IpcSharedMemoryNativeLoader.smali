.class public Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;
.super Ljava/lang/Object;
.source "IpcSharedMemoryNativeLoader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final LIB_NAME:Ljava/lang/String;

.field private static final LIB_NAME_BASE:Ljava/lang/String; = "igniteshmem"

.field private static final LOCK_FILE:Ljava/io/File;

.field private static volatile loaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->$assertionsDisabled:Z

    .line 43
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "igniteshmem.lock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->LOCK_FILE:Ljava/io/File;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "igniteshmem-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/IgniteVersionUtils;->VER_STR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->LIB_NAME:Ljava/lang/String;

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bitModel()I
    .locals 2

    .prologue
    .line 77
    const-string v1, "sun.arch.data.model"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "prop":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 80
    const-string v1, "com.ibm.vm.bitmode"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_0
    if-eqz v0, :cond_1

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 86
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static doLoad()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 110
    sget-boolean v5, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    const-class v5, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 112
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v1, "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    :try_start_0
    sget-object v5, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->LIB_NAME:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 125
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v5, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->LOCK_FILE:Ljava/io/File;

    const-string v6, "rws"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .local v3, "randomAccessFile":Ljava/io/RandomAccessFile;
    const/4 v5, 0x0

    .line 126
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    .line 125
    .local v2, "ignored":Ljava/nio/channels/FileLock;
    const/4 v6, 0x0

    .line 127
    :try_start_3
    invoke-static {}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->platformSpecificResourcePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->extractAndLoad(Ljava/util/Collection;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v8

    if-eqz v8, :cond_6

    .line 140
    if-eqz v2, :cond_2

    if-eqz v7, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    :goto_1
    if-eqz v3, :cond_1

    if-eqz v7, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_1
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 141
    .end local v2    # "ignored":Ljava/nio/channels/FileLock;
    .end local v3    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to obtain file lock: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->LOCK_FILE:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 140
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v2    # "ignored":Ljava/nio/channels/FileLock;
    .restart local v3    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 125
    .end local v2    # "ignored":Ljava/nio/channels/FileLock;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_4
    move-exception v5

    :try_start_8
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 140
    :catchall_0
    move-exception v6

    move-object v7, v5

    move-object v5, v6

    :goto_2
    if-eqz v3, :cond_3

    if-eqz v7, :cond_12

    :try_start_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_3
    :goto_3
    :try_start_a
    throw v5
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .restart local v2    # "ignored":Ljava/nio/channels/FileLock;
    :cond_4
    :try_start_b
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_1

    .end local v2    # "ignored":Ljava/nio/channels/FileLock;
    :catchall_1
    move-exception v5

    goto :goto_2

    .restart local v2    # "ignored":Ljava/nio/channels/FileLock;
    :cond_5
    :try_start_c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_0

    .line 130
    :cond_6
    :try_start_d
    invoke-static {}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->osSpecificResourcePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->extractAndLoad(Ljava/util/Collection;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-result v8

    if-eqz v8, :cond_a

    .line 140
    if-eqz v2, :cond_7

    if-eqz v7, :cond_8

    :try_start_e
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_7
    :goto_4
    if-eqz v3, :cond_1

    if-eqz v7, :cond_9

    :try_start_f
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_0

    :catch_5
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    :try_start_10
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_0

    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_6
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    :try_start_11
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_4

    :cond_9
    :try_start_12
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    goto/16 :goto_0

    .line 133
    :cond_a
    :try_start_13
    invoke-static {}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->resourcePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->extractAndLoad(Ljava/util/Collection;Ljava/lang/String;)Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    move-result v8

    if-eqz v8, :cond_e

    .line 140
    if-eqz v2, :cond_b

    if-eqz v7, :cond_c

    :try_start_14
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :cond_b
    :goto_5
    if-eqz v3, :cond_1

    if-eqz v7, :cond_d

    :try_start_15
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_2

    goto/16 :goto_0

    :catch_7
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    :try_start_16
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2

    goto/16 :goto_0

    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_8
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    :try_start_17
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_c
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_4
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto :goto_5

    :cond_d
    :try_start_18
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2

    goto/16 :goto_0

    .line 137
    :cond_e
    :try_start_19
    sget-boolean v5, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->$assertionsDisabled:Z

    if-nez v5, :cond_10

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_10

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 125
    :catch_9
    move-exception v5

    :try_start_1a
    throw v5
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 140
    :catchall_2
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_6
    if-eqz v2, :cond_f

    if-eqz v6, :cond_11

    :try_start_1b
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_a
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :cond_f
    :goto_7
    :try_start_1c
    throw v5
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 139
    :cond_10
    :try_start_1d
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load native IPC library: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_9
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    .line 140
    :catchall_3
    move-exception v5

    move-object v6, v7

    goto :goto_6

    :catch_a
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    :try_start_1e
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_11
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_4
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    goto :goto_7

    .end local v2    # "ignored":Ljava/nio/channels/FileLock;
    :catch_b
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    :try_start_1f
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_12
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_2

    goto/16 :goto_3
.end method

.method private static extract(Ljava/util/Collection;Ljava/net/URL;Ljava/io/File;)Z
    .locals 12
    .param p1, "src"    # Ljava/net/URL;
    .param p2, "target"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/net/URL;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 207
    const/4 v3, 0x0

    .line 208
    .local v3, "os":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 211
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {p2, p1}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->haveEqualMD5(Ljava/io/File;Ljava/net/URL;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 212
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 214
    if-eqz v2, :cond_2

    .line 215
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .local v4, "os":Ljava/io/FileOutputStream;
    const/16 v8, 0x1000

    :try_start_1
    new-array v0, v8, [B

    .line 221
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "read":I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_1

    .line 222
    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 234
    .end local v0    # "buf":[B
    .end local v5    # "read":I
    :catch_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :goto_1
    move-object v1, v6

    .line 235
    .local v1, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_2
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 239
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    move v6, v7

    .line 242
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_3
    return v6

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "read":I
    :cond_1
    move-object v3, v4

    .line 227
    .end local v0    # "buf":[B
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .end local v5    # "read":I
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_3
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isWindows()Z

    move-result v8

    if-nez v8, :cond_3

    .line 228
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "chmod"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "775"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    .line 230
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 238
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 239
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    .line 238
    :catchall_0
    move-exception v6

    :goto_4
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 239
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v6

    .line 234
    :catch_1
    move-exception v6

    :goto_5
    move-object v1, v6

    goto :goto_2

    :catch_2
    move-exception v6

    :goto_6
    move-object v1, v6

    goto :goto_2

    :catch_3
    move-exception v6

    :goto_7
    move-object v1, v6

    goto :goto_2

    .line 238
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 234
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v6

    move-object v3, v4

    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v6

    move-object v3, v4

    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v6

    move-object v3, v4

    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    goto :goto_7

    :catch_7
    move-exception v6

    goto :goto_1
.end method

.method private static extractAndLoad(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 5
    .param p1, "rsrcPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    const-class v2, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 187
    .local v0, "clsLdr":Ljava/lang/ClassLoader;
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 189
    .local v1, "rsrc":Ljava/net/URL;
    if-eqz v1, :cond_0

    .line 190
    new-instance v2, Ljava/io/File;

    const-string v3, "java.io.tmpdir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->LIB_NAME:Ljava/lang/String;

    invoke-static {v4}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1, v2}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->extract(Ljava/util/Collection;Ljava/net/URL;Ljava/io/File;)Z

    move-result v2

    .line 195
    :goto_0
    return v2

    .line 192
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find resource with specified class loader [rsrc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clsLdr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 195
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static haveEqualMD5(Ljava/io/File;Ljava/net/URL;)Z
    .locals 9
    .param p0, "target"    # Ljava/io/File;
    .param p1, "src"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 253
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 254
    .local v2, "targetIS":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 253
    .local v0, "srcIS":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 256
    :try_start_1
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->calculateMD5(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "targetMD5":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->calculateMD5(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "srcMD5":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result v6

    .line 260
    if-eqz v0, :cond_0

    if-eqz v7, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    if-eqz v7, :cond_4

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_1
    return v6

    :catch_0
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 253
    .end local v0    # "srcIS":Ljava/io/InputStream;
    .end local v1    # "srcMD5":Ljava/lang/String;
    .end local v3    # "targetMD5":Ljava/lang/String;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 260
    :catchall_0
    move-exception v6

    move-object v7, v5

    move-object v5, v6

    :goto_2
    if-eqz v2, :cond_2

    if-eqz v7, :cond_7

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :cond_2
    :goto_3
    throw v5

    .restart local v0    # "srcIS":Ljava/io/InputStream;
    .restart local v1    # "srcMD5":Ljava/lang/String;
    .restart local v3    # "targetMD5":Ljava/lang/String;
    :cond_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .end local v0    # "srcIS":Ljava/io/InputStream;
    .end local v1    # "srcMD5":Ljava/lang/String;
    .end local v3    # "targetMD5":Ljava/lang/String;
    :catchall_1
    move-exception v5

    goto :goto_2

    .restart local v0    # "srcIS":Ljava/io/InputStream;
    .restart local v1    # "srcMD5":Ljava/lang/String;
    .restart local v3    # "targetMD5":Ljava/lang/String;
    :catch_2
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 253
    .end local v1    # "srcMD5":Ljava/lang/String;
    .end local v3    # "targetMD5":Ljava/lang/String;
    :catch_3
    move-exception v5

    :try_start_8
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 260
    :catchall_2
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    :goto_4
    if-eqz v0, :cond_5

    if-eqz v6, :cond_6

    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_5
    :goto_5
    :try_start_a
    throw v5

    :catch_4
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    .end local v0    # "srcIS":Ljava/io/InputStream;
    :catch_5
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .restart local v0    # "srcIS":Ljava/io/InputStream;
    :catchall_3
    move-exception v5

    move-object v6, v7

    goto :goto_4
.end method

.method public static load()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 93
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->loaded:Z

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 96
    :cond_0
    const-class v1, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;

    monitor-enter v1

    .line 97
    :try_start_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->loaded:Z

    if-eqz v0, :cond_1

    .line 98
    monitor-exit v1

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 100
    :cond_1
    :try_start_1
    invoke-static {}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->doLoad()V

    .line 102
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->loaded:Z

    .line 103
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "libName":Ljava/lang/String;
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isMacOs()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ".jnilib"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "jnilib"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dylib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .end local v0    # "libName":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static os()Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "name":Ljava/lang/String;
    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IPC shared memory native loader should not be called on windows."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_0
    const-string v1, "linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    const-string v1, "linux"

    .line 63
    :goto_0
    return-object v1

    .line 60
    :cond_1
    const-string v1, "mac os x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    const-string v1, "osx"

    goto :goto_0

    .line 63
    :cond_2
    const-string v1, "\\W+"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static osSpecificResourcePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "META-INF/native/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->os()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "igniteshmem"

    invoke-static {v1}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static platform()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->os()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->bitModel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static platformSpecificResourcePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "META-INF/native/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->platform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "igniteshmem"

    invoke-static {v1}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static resourcePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "META-INF/native/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "igniteshmem"

    invoke-static {v1}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
