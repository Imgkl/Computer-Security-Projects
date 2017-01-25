.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;
.super Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;
.source "GridCacheQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->scanIterator(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter",
        "<",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

.field private iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation
.end field

.field private next:Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

.field final synthetic val$dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

.field final synthetic val$keyValFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;

.field final synthetic val$plc:Ljavax/cache/expiry/ExpiryPolicy;

.field final synthetic val$prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

.field final synthetic val$qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Ljavax/cache/expiry/ExpiryPolicy;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;Lorg/apache/ignite/lang/IgniteBiPredicate;)V
    .locals 2

    .prologue
    .line 763
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.5;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->val$plc:Ljavax/cache/expiry/ExpiryPolicy;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->val$qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->val$prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->val$dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    iput-object p6, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->val$keyValFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;-><init>()V

    .line 766
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$400(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->val$plc:Ljavax/cache/expiry/ExpiryPolicy;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->expiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    .line 768
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->val$qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->includeBackups()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$500(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->val$prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->iter:Ljava/util/Iterator;

    .line 772
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->advance()V

    .line 773
    return-void

    .line 768
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->val$prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->primaryKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method private advance()V
    .locals 7

    .prologue
    .line 791
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.5;"
    const/4 v2, 0x0

    .line 793
    .local v2, "next0":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;"
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->iter:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 794
    const/4 v2, 0x0

    .line 796
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->iter:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 801
    .local v1, "key":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->val$prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/CachePeekModes;->ONHEAP_ONLY:[Lorg/apache/ignite/cache/CachePeekMode;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    invoke-interface {v4, v1, v5, v6}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->localPeek(Ljava/lang/Object;[Lorg/apache/ignite/cache/CachePeekMode;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 810
    :goto_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->val$dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    const/16 v5, 0x64

    invoke-interface {v4, v5}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;->readyToFlush(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 811
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->val$dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->sendTtlUpdateRequest(Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)V

    .line 813
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$800(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->val$plc:Ljavax/cache/expiry/ExpiryPolicy;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->expiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    .line 816
    :cond_1
    if-eqz v3, :cond_0

    .line 817
    invoke-static {v1, v3}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v2

    .line 819
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->checkPredicate(Ljava/util/Map$Entry;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 826
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_2
    if-eqz v2, :cond_6

    new-instance v4, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v2}, Lorg/apache/ignite/lang/IgniteBiTuple;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/ignite/lang/IgniteBiTuple;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    iput-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->next:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 830
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->next:Lorg/apache/ignite/lang/IgniteBiTuple;

    if-nez v4, :cond_3

    .line 831
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->sendTtlUpdate()V

    .line 832
    :cond_3
    return-void

    .line 803
    .restart local v1    # "key":Ljava/lang/Object;, "TK;"
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$600(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 805
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$700(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to peek value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 807
    :cond_4
    const/4 v3, 0x0

    .local v3, "val":Ljava/lang/Object;, "TV;"
    goto :goto_1

    .line 822
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v3    # "val":Ljava/lang/Object;, "TV;"
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 826
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private checkPredicate(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 847
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.5;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->val$keyValFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    if-eqz v1, :cond_0

    .line 848
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$900(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->val$qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepPortable()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 850
    .local v0, "e0":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->val$keyValFilter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/lang/IgniteBiPredicate;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 853
    .end local v0    # "e0":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private sendTtlUpdate()V
    .locals 2

    .prologue
    .line 839
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.5;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->val$dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->val$dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->sendTtlUpdateRequest(Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)V

    .line 842
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    .line 844
    :cond_0
    return-void
.end method


# virtual methods
.method protected onClose()V
    .locals 0

    .prologue
    .line 835
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.5;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->sendTtlUpdate()V

    .line 836
    return-void
.end method

.method public onHasNext()Z
    .locals 1

    .prologue
    .line 776
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.5;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->next:Lorg/apache/ignite/lang/IgniteBiTuple;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onNext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 763
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.5;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->onNext()Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method public onNext()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 780
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.5;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->next:Lorg/apache/ignite/lang/IgniteBiTuple;

    if-nez v1, :cond_0

    .line 781
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 783
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->next:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 785
    .local v0, "next0":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$5;->advance()V

    .line 787
    return-object v0
.end method
