.class Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$13;
.super Ljava/lang/Object;
.source "GridCacheSwapManager.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->keyIterator(Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)Ljava/util/Iterator;
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
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

.field final synthetic val$iter:Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;)V
    .locals 0

    .prologue
    .line 1531
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$13;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$13;->val$iter:Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1533
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$13;->val$iter:Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1531
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$13;->next()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$13;->val$iter:Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1541
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$13;->val$iter:Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;->remove()V

    .line 1542
    return-void
.end method
