.class final Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsUtils;
.super Ljava/lang/Object;
.source "SharedFsUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method static read(Ljava/io/File;Lorg/apache/ignite/marshaller/Marshaller;Lorg/apache/ignite/IgniteLogger;)Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "m"    # Lorg/apache/ignite/marshaller/Marshaller;
    .param p2, "log"    # Lorg/apache/ignite/IgniteLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 52
    sget-boolean v1, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 53
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 54
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez p2, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 56
    :cond_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 59
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal(Ljava/io/InputStream;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-static {v0, p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0, p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    throw v1
.end method

.method static write(Ljava/io/File;Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;Lorg/apache/ignite/marshaller/Marshaller;Lorg/apache/ignite/IgniteLogger;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;
    .param p2, "m"    # Lorg/apache/ignite/marshaller/Marshaller;
    .param p3, "log"    # Lorg/apache/ignite/IgniteLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 79
    sget-boolean v2, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 80
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 81
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 82
    :cond_2
    sget-boolean v2, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    if-nez p3, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 84
    :cond_3
    const/4 v0, 0x0

    .line 87
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v0    # "out":Ljava/io/OutputStream;
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-interface {p2, p1, v1}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    invoke-static {v1, p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 94
    return-void

    .line 92
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v0    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0, p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    throw v2

    .end local v0    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v0    # "out":Ljava/io/OutputStream;
    goto :goto_0
.end method
