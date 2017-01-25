.class Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$2;
.super Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;
.source "FileSwapSpaceSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->rawIterator(Ljava/util/Iterator;)Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter",
        "<",
        "Ljava/util/Map$Entry",
        "<[B[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

.field final synthetic val$iter:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$2;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    iput-object p2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$2;->val$iter:Ljava/util/Iterator;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected onHasNext()Z
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

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
    .line 531
    invoke-virtual {p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$2;->onNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected onNext()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<[B[B>;"
        }
    .end annotation

    .prologue
    .line 533
    iget-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 535
    .local v0, "x":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/spi/swapspace/SwapKey;[B>;"
    new-instance v2, Lorg/apache/ignite/internal/util/typedef/T2;

    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$2;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/swapspace/SwapKey;

    invoke-static {v3, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->access$000(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;Lorg/apache/ignite/spi/swapspace/SwapKey;)[B

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/apache/ignite/internal/util/typedef/T2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method protected onRemove()V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 544
    return-void
.end method
