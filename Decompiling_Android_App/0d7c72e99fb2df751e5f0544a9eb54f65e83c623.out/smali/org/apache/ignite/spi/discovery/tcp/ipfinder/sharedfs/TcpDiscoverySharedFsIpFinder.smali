.class public Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;
.super Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinderAdapter;
.source "TcpDiscoverySharedFsIpFinder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DELIM:Ljava/lang/String; = "#"

.field public static final DFLT_PATH:Ljava/lang/String; = "disco/tcp"


# instance fields
.field private folder:Ljava/io/File;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final initGuard:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final initLatch:Ljava/util/concurrent/CountDownLatch;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private final warnGuard:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinderAdapter;-><init>()V

    .line 72
    const-string v0, "disco/tcp"

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->path:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->warnGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->initGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->initLatch:Ljava/util/concurrent/CountDownLatch;

    .line 94
    invoke-virtual {p0, v1}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->setShared(Z)V

    .line 95
    return-void
.end method

.method private initFolder()Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 123
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->initGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 124
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->path:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 125
    new-instance v2, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v3, "Shared file system path is null (it should be configured via setPath(..) configuration property)."

    invoke-direct {v2, v3}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->path:Ljava/lang/String;

    const-string v3, "disco/tcp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->warnGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Default local computer-only share is used by IP finder."

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 134
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, "tmp":Ljava/io/File;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 147
    new-instance v2, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to initialize shared file system path (path must point to folder): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .end local v1    # "tmp":Ljava/io/File;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v2

    .line 138
    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->path:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveWorkDirectory(Ljava/lang/String;Z)Ljava/io/File;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .restart local v1    # "tmp":Ljava/io/File;
    goto :goto_0

    .line 140
    .end local v1    # "tmp":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    new-instance v2, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to resolve directory [path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "tmp":Ljava/io/File;
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_5

    .line 151
    :cond_4
    new-instance v2, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to initialize shared file system path (path must be readable and writable): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_5
    iput-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->folder:Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 172
    .end local v1    # "tmp":Ljava/io/File;
    :cond_6
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->folder:Ljava/io/File;

    return-object v2

    .line 162
    :cond_7
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->await(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_3
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 168
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->folder:Ljava/io/File;

    if-nez v2, :cond_6

    .line 169
    new-instance v2, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v3, "Failed to initialize shared file system folder (check logs for errors)."

    invoke-direct {v2, v3}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :catch_1
    move-exception v0

    .line 165
    .local v0, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    new-instance v2, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v3, "Thread has been interrupted."

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private name(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 3
    .param p1, "addr"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 251
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 253
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    .line 255
    .local v0, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(I)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 259
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisteredAddresses()Ljava/util/Collection;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->initFolder()Ljava/io/File;

    .line 179
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 181
    .local v3, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    iget-object v12, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->folder:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/String;
    array-length v8, v4

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v6, v4, v7

    .line 182
    .local v6, "fileName":Ljava/lang/String;
    const-string v12, ".svn"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 183
    const/4 v0, 0x0

    .line 185
    .local v0, "addr":Ljava/net/InetSocketAddress;
    new-instance v11, Ljava/util/StringTokenizer;

    const-string v12, "#"

    invoke-direct {v11, v6, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .local v11, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 188
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "addrStr":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 192
    .local v10, "portStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 194
    .local v9, "port":I
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v2, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .local v1, "addr":Ljava/net/InetSocketAddress;
    move-object v0, v1

    .line 201
    .end local v1    # "addr":Ljava/net/InetSocketAddress;
    .end local v2    # "addrStr":Ljava/lang/String;
    .end local v9    # "port":I
    .end local v10    # "portStr":Ljava/lang/String;
    .restart local v0    # "addr":Ljava/net/InetSocketAddress;
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 202
    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v11    # "st":Ljava/util/StringTokenizer;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 196
    .restart local v0    # "addr":Ljava/net/InetSocketAddress;
    .restart local v2    # "addrStr":Ljava/lang/String;
    .restart local v10    # "portStr":Ljava/lang/String;
    .restart local v11    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v5

    .line 197
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    iget-object v12, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to parse file entry: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 205
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v2    # "addrStr":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v10    # "portStr":Ljava/lang/String;
    .end local v11    # "st":Ljava/util/StringTokenizer;
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v12

    return-object v12
.end method

.method public registerAddresses(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    sget-boolean v4, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 212
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->initFolder()Ljava/io/File;

    .line 215
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 216
    .local v0, "addr":Ljava/net/InetSocketAddress;
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->folder:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->name(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 218
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v5, "Failed to create file."

    invoke-direct {v4, v5, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 224
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 113
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->path:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterAddresses(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    sget-boolean v4, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 230
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->initFolder()Ljava/io/File;

    .line 233
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 234
    .local v0, "addr":Ljava/net/InetSocketAddress;
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->folder:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/sharedfs/TcpDiscoverySharedFsIpFinder;->name(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v4, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v5, "Failed to delete file."

    invoke-direct {v4, v5, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 242
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
