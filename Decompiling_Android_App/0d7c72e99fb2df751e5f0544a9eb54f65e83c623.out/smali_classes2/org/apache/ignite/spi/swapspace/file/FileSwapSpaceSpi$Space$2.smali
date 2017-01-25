.class Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$2;
.super Ljava/lang/Object;
.source "FileSwapSpaceSpi.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->entriesIterator()Ljava/util/Iterator;
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
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Lorg/apache/ignite/spi/swapspace/SwapKey;",
        "Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

.field final synthetic val$iter:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 1779
    iput-object p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$2;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    iput-object p2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$2;->val$iter:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1781
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1779
    invoke-virtual {p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$2;->next()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1785
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1789
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
