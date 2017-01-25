.class public Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;
.super Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinderAdapter;
.source "TcpDiscoveryVmIpFinder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private addrs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinderAdapter;-><init>()V

    .line 60
    const-string v7, "IGNITE_TCP_DISCOVERY_ADDRESSES"

    invoke-static {v7}, Lorg/apache/ignite/IgniteSystemProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "ips":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 63
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 65
    .local v0, "addrsList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v1, v3

    .line 66
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 67
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 69
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 71
    :try_start_0
    invoke-static {v6}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->address(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v7, Lorg/apache/ignite/IgniteException;

    invoke-direct {v7, v2}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 80
    .end local v2    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->addrs:Ljava/util/Collection;

    .line 91
    .end local v0    # "addrsList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :goto_1
    return-void

    .line 83
    :cond_2
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->addrs:Ljava/util/Collection;

    goto :goto_1
.end method

.method public constructor <init>(Z)V
    .locals 8
    .param p1, "shared"    # Z

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinderAdapter;-><init>()V

    .line 60
    const-string v7, "IGNITE_TCP_DISCOVERY_ADDRESSES"

    invoke-static {v7}, Lorg/apache/ignite/IgniteSystemProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "ips":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 63
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 65
    .local v0, "addrsList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v1, v3

    .line 66
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 67
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 69
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 71
    :try_start_0
    invoke-static {v6}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->address(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v7, Lorg/apache/ignite/IgniteException;

    invoke-direct {v7, v2}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 80
    .end local v2    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->addrs:Ljava/util/Collection;

    .line 100
    .end local v0    # "addrsList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->setShared(Z)V

    .line 101
    return-void

    .line 83
    :cond_2
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->addrs:Ljava/util/Collection;

    goto :goto_1
.end method

.method private static address(Ljava/lang/String;)Ljava/util/Collection;
    .locals 7
    .param p0, "ipStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse provided address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "errMsg":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 156
    .local v0, "colonCnt":I
    if-le v0, v6, :cond_3

    .line 159
    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 162
    const-string v2, "]:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    const-string v2, "\\]\\:"

    invoke-static {p0, v2, v1}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->addresses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 179
    :goto_0
    return-object v2

    .line 164
    :cond_0
    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 179
    :cond_1
    :goto_1
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p0, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    goto :goto_0

    .line 167
    :cond_2
    new-instance v2, Lorg/apache/ignite/spi/IgniteSpiException;

    invoke-direct {v2, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_3
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 174
    :cond_4
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 175
    const-string v2, "\\:"

    invoke-static {p0, v2, v1}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->addresses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    goto :goto_0
.end method

.method private static addresses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;
    .locals 12
    .param p0, "ipStr"    # Ljava/lang/String;
    .param p1, "regexDelim"    # Ljava/lang/String;
    .param p2, "errMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
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
    const/4 v11, 0x0

    .line 194
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 196
    .local v8, "tokens":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 197
    aget-object v0, v8, v11

    .line 198
    .local v0, "addrStr":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v6, v8, v9

    .line 200
    .local v6, "portStr":Ljava/lang/String;
    const-string v9, ".."

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 202
    const/4 v9, 0x0

    :try_start_0
    const-string v10, ".."

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 203
    .local v4, "port1":I
    const-string v9, ".."

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 205
    .local v5, "port2":I
    if-lt v5, v4, :cond_0

    if-eq v4, v5, :cond_0

    if-lez v4, :cond_0

    if-gtz v5, :cond_1

    .line 206
    :cond_0
    new-instance v9, Lorg/apache/ignite/spi/IgniteSpiException;

    invoke-direct {v9, p2}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v4    # "port1":I
    .end local v5    # "port2":I
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v9, Lorg/apache/ignite/spi/IgniteSpiException;

    invoke-direct {v9, p2, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 208
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "port1":I
    .restart local v5    # "port2":I
    :cond_1
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    sub-int v9, v5, v4

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 211
    .local v7, "res":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    move v2, v4

    .local v2, "i":I
    :goto_0
    if-gt v2, v5, :cond_3

    .line 212
    new-instance v9, Ljava/net/InetSocketAddress;

    invoke-direct {v9, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v2    # "i":I
    .end local v4    # "port1":I
    .end local v5    # "port2":I
    .end local v7    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :cond_2
    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 224
    .local v3, "port":I
    new-instance v9, Ljava/net/InetSocketAddress;

    invoke-direct {v9, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-static {v9}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .end local v3    # "port":I
    :cond_3
    return-object v7

    .line 226
    :catch_1
    move-exception v1

    .line 227
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v9, Lorg/apache/ignite/spi/IgniteSpiException;

    invoke-direct {v9, p2, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 232
    .end local v0    # "addrStr":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "portStr":Ljava/lang/String;
    :cond_4
    new-instance v9, Lorg/apache/ignite/spi/IgniteSpiException;

    invoke-direct {v9, p2}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v9
.end method


# virtual methods
.method public declared-synchronized getRegisteredAddresses()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->addrs:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerAddresses(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 244
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->addrs:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->addrs:Ljava/util/Collection;

    .line 246
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->addrs:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setAddresses(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 130
    .local p1, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    :goto_0
    monitor-exit p0

    return-void

    .line 133
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 135
    .local v2, "newAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    .local v1, "ipStr":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->address(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 130
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ipStr":Ljava/lang/String;
    .end local v2    # "newAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 138
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "newAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :cond_1
    :try_start_2
    iput-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->addrs:Ljava/util/Collection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 260
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinderAdapter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized unregisterAddresses(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 253
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->addrs:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->addrs:Ljava/util/Collection;

    .line 255
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;->addrs:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    monitor-exit p0

    return-void
.end method
