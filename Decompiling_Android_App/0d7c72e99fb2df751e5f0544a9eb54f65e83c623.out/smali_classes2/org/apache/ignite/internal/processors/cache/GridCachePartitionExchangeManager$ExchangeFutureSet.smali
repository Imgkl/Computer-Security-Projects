.class Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;
.super Lorg/apache/ignite/internal/util/GridListSet;
.source "GridCachePartitionExchangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExchangeFutureSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridListSet",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1051
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet$1;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/GridListSet;-><init>(Ljava/util/Comparator;Z)V

    .line 1066
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;

    .prologue
    .line 1043
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addx(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1043
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;->addx(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized addx(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    .locals 3
    .param p1, "fut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    .prologue
    .line 1074
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/util/GridListSet;->addx(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    .line 1076
    .local v0, "cur":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    .line 1077
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;->removeLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1074
    .end local v0    # "cur":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1080
    .restart local v0    # "cur":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    :cond_0
    if-nez v0, :cond_1

    .end local p1    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    :goto_1
    monitor-exit p0

    return-object p1

    .restart local p1    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    :cond_1
    move-object p1, v0

    goto :goto_1
.end method

.method public bridge synthetic removex(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1043
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;->removex(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized removex(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    .locals 1
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1087
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/util/GridListSet;->removex(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1099
    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;

    invoke-super {p0}, Lorg/apache/ignite/internal/util/GridListSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
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

.method public declared-synchronized values()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1094
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/ignite/internal/util/GridListSet;->values()Ljava/util/List;
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
