.class Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$Worker;
.super Ljava/lang/Object;
.source "CacheLoadOnlyStoreAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private final args:[Ljava/lang/Object;

.field private final buf:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TI;>;"
        }
    .end annotation
.end field

.field private final c:Lorg/apache/ignite/lang/IgniteBiInClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;


# direct methods
.method constructor <init>(Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;Lorg/apache/ignite/lang/IgniteBiInClosure;Ljava/util/Collection;[Ljava/lang/Object;)V
    .locals 0
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<TI;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$Worker;, "Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter<TK;TV;TI;>.Worker;"
    .local p2, "c":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<TK;TV;>;"
    .local p3, "buf":Ljava/util/Collection;, "Ljava/util/Collection<TI;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$Worker;->this$0:Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p2, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$Worker;->c:Lorg/apache/ignite/lang/IgniteBiInClosure;

    .line 282
    iput-object p3, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$Worker;->buf:Ljava/util/Collection;

    .line 283
    iput-object p4, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$Worker;->args:[Ljava/lang/Object;

    .line 284
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 288
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$Worker;, "Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter<TK;TV;TI;>.Worker;"
    iget-object v3, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$Worker;->buf:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 289
    .local v2, "rec":Ljava/lang/Object;, "TI;"
    iget-object v3, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$Worker;->this$0:Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;

    iget-object v4, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$Worker;->args:[Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter;->parse(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    .line 291
    .local v0, "entry":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 292
    iget-object v3, p0, Lorg/apache/ignite/cache/store/CacheLoadOnlyStoreAdapter$Worker;->c:Lorg/apache/ignite/lang/IgniteBiInClosure;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/ignite/lang/IgniteBiInClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 294
    .end local v0    # "entry":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;"
    .end local v2    # "rec":Ljava/lang/Object;, "TI;"
    :cond_1
    return-void
.end method
