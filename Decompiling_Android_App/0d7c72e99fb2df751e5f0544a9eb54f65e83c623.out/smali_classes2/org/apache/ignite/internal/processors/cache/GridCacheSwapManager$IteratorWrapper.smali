.class Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$IteratorWrapper;
.super Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;
.source "GridCacheSwapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IteratorWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter",
        "<",
        "Ljava/util/Map$Entry",
        "<[B",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final iter:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<+",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1812
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$IteratorWrapper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<+",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;)V"
        }
    .end annotation

    .prologue
    .line 1822
    .local p2, "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<+Ljava/util/Map$Entry<[B[B>;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$IteratorWrapper;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;-><init>()V

    .line 1823
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$IteratorWrapper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1825
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$IteratorWrapper;->iter:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    .line 1826
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$1;

    .prologue
    .line 1812
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$IteratorWrapper;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)V

    return-void
.end method


# virtual methods
.method protected onClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1844
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$IteratorWrapper;->iter:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V

    .line 1845
    return-void
.end method

.method protected onHasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1839
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$IteratorWrapper;->iter:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic onNext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1812
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$IteratorWrapper;->onNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected onNext()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<[B",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1830
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$IteratorWrapper;->iter:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v2}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->nextX()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1832
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[B[B>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$IteratorWrapper;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->unmarshalSwapEntry([B)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    invoke-static {v3, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;[B)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v1

    .line 1834
    .local v1, "unmarshalled":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$IteratorWrapper;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    invoke-static {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v2

    return-object v2
.end method

.method protected onRemove()V
    .locals 1

    .prologue
    .line 1849
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$IteratorWrapper;->iter:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->remove()V

    .line 1850
    return-void
.end method
