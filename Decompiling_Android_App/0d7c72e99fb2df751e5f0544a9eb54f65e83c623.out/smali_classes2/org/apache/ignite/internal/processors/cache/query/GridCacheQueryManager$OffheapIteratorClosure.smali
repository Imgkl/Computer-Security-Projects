.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;
.super Lorg/apache/ignite/internal/util/typedef/CX2;
.source "GridCacheQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffheapIteratorClosure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/typedef/CX2",
        "<",
        "Lorg/apache/ignite/internal/util/typedef/T2",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        ">;",
        "Lorg/apache/ignite/internal/util/typedef/T2",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        ">;",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x66d6302c12550538L


# instance fields
.field private filter:Lorg/apache/ignite/lang/IgniteBiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private keepPortable:Z

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2434
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/lang/IgniteBiPredicate;Z)V
    .locals 1
    .param p1    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "keepPortable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .line 2451
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.OffheapIteratorClosure;"
    .local p2, "filter":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CX2;-><init>()V

    .line 2452
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2454
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;->filter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    .line 2455
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;->keepPortable:Z

    .line 2456
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/lang/IgniteBiPredicate;ZLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    .param p2, "x1"    # Lorg/apache/ignite/lang/IgniteBiPredicate;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;

    .prologue
    .line 2434
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.OffheapIteratorClosure;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/lang/IgniteBiPredicate;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2434
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.OffheapIteratorClosure;"
    check-cast p1, Lorg/apache/ignite/internal/util/typedef/T2;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/util/typedef/T2;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;->applyx(Lorg/apache/ignite/internal/util/typedef/T2;Lorg/apache/ignite/internal/util/typedef/T2;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method public applyx(Lorg/apache/ignite/internal/util/typedef/T2;Lorg/apache/ignite/internal/util/typedef/T2;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.OffheapIteratorClosure;"
    .local p1, "keyPtr":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .local p2, "valPtr":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 2462
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    invoke-direct {v0, v4, p1, p2, v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/util/typedef/T2;Lorg/apache/ignite/internal/util/typedef/T2;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;)V

    .line 2464
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.LazyOffheapEntry;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$3000(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;->key()Ljava/lang/Object;

    move-result-object v5

    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;->keepPortable:Z

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    .line 2465
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$3100(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;->value()Ljava/lang/Object;

    move-result-object v5

    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;->keepPortable:Z

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    .line 2467
    .local v2, "val":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;->filter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-interface {v4, v1, v2}, Lorg/apache/ignite/lang/IgniteBiPredicate;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2470
    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;->key()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$OffheapIteratorClosure;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$3200(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazyOffheapEntry;->value()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
