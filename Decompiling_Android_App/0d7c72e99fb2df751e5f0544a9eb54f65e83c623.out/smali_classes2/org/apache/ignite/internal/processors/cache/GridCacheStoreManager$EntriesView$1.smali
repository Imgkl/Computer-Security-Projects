.class Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;
.super Ljava/lang/Object;
.source "GridCacheStoreManager.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljavax/cache/Cache$Entry",
        "<**>;>;"
    }
.end annotation


# instance fields
.field private cur:Ljavax/cache/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/Cache$Entry",
            "<**>;"
        }
    .end annotation
.end field

.field private next:Ljavax/cache/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/Cache$Entry",
            "<**>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;

.field final synthetic val$it0:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 1016
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->val$it0:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1027
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->checkNext()V

    .line 1028
    return-void
.end method

.method private checkNext()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1034
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->val$it0:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1035
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->val$it0:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1037
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<*Lorg/apache/ignite/lang/IgniteBiTuple<*Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1039
    .local v1, "k":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->rmvd:Ljava/util/Set;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->access$1000(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->rmvd:Ljava/util/Set;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->access$1000(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1042
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->locStore:Z
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1044
    .local v2, "v":Ljava/lang/Object;
    :goto_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->convertPortable:Z
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->access$1100(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1045
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3, v1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    .line 1046
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3, v2, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1049
    :cond_2
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;

    invoke-direct {v3, v1, v2}, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->next:Ljavax/cache/Cache$Entry;

    .line 1053
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<*Lorg/apache/ignite/lang/IgniteBiTuple<*Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    .end local v1    # "k":Ljava/lang/Object;
    .end local v2    # "v":Ljava/lang/Object;
    :cond_3
    return-void

    .line 1042
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<*Lorg/apache/ignite/lang/IgniteBiTuple<*Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    .restart local v1    # "k":Ljava/lang/Object;
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->next:Ljavax/cache/Cache$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1016
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->next()Ljavax/cache/Cache$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/cache/Cache$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/Cache$Entry",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 1060
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->next:Ljavax/cache/Cache$Entry;

    if-nez v0, :cond_0

    .line 1061
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1063
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->next:Ljavax/cache/Cache$Entry;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->cur:Ljavax/cache/Cache$Entry;

    .line 1065
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->next:Ljavax/cache/Cache$Entry;

    .line 1067
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->checkNext()V

    .line 1069
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->cur:Ljavax/cache/Cache$Entry;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1073
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->cur:Ljavax/cache/Cache$Entry;

    if-nez v0, :cond_0

    .line 1074
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1076
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->cur:Ljavax/cache/Cache$Entry;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->addRemoved(Ljavax/cache/Cache$Entry;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;->access$1200(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView;Ljavax/cache/Cache$Entry;)V

    .line 1078
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager$EntriesView$1;->cur:Ljavax/cache/Cache$Entry;

    .line 1079
    return-void
.end method
