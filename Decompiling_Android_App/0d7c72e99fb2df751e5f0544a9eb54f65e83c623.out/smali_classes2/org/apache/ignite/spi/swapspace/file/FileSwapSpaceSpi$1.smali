.class Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$1;
.super Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;
.source "FileSwapSpaceSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->keyIterator(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapContext;)Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

.field final synthetic val$iter:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$1;->this$0:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    iput-object p2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$1;->val$iter:Ljava/util/Iterator;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected onHasNext()Z
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method protected onNext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 492
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/swapspace/SwapKey;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/swapspace/SwapKey;->key()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onRemove()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 497
    return-void
.end method
