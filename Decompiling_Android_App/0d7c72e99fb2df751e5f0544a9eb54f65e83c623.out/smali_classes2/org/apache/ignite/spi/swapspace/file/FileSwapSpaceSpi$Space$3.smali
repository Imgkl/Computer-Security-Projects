.class Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$3;
.super Ljava/lang/Object;
.source "FileSwapSpaceSpi.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->transform(Ljava/util/Iterator;)Ljava/util/Iterator;
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
        "Ljava/util/Map$Entry",
        "<",
        "Lorg/apache/ignite/spi/swapspace/SwapKey;",
        "[B>;>;"
    }
.end annotation


# instance fields
.field private last:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "[B>;"
        }
    .end annotation
.end field

.field private next:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "[B>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

.field final synthetic val$iter:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 1802
    iput-object p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$3;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    iput-object p2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$3;->val$iter:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1810
    invoke-direct {p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$3;->advance()V

    .line 1811
    return-void
.end method

.method private advance()V
    .locals 5

    .prologue
    .line 1821
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$3;->val$iter:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1822
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$3;->val$iter:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1827
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    iget-object v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$3;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->value(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;)[B
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1833
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 1834
    new-instance v3, Lorg/apache/ignite/internal/util/typedef/T2;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/T2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$3;->next:Ljava/util/Map$Entry;

    .line 1839
    .end local v0    # "bytes":[B
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    :cond_1
    return-void

    .line 1829
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;>;"
    :catch_0
    move-exception v1

    .line 1830
    .local v1, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v3, Lorg/apache/ignite/IgniteException;

    invoke-direct {v3, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1814
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$3;->next:Ljava/util/Map$Entry;

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
    .line 1802
    invoke-virtual {p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$3;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 1842
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$3;->next:Ljava/util/Map$Entry;

    .line 1844
    .local v0, "res":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/spi/swapspace/SwapKey;[B>;"
    if-nez v0, :cond_0

    .line 1845
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1847
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$3;->next:Ljava/util/Map$Entry;

    .line 1849
    invoke-direct {p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$3;->advance()V

    .line 1851
    iput-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$3;->last:Ljava/util/Map$Entry;

    .line 1853
    return-object v0
.end method

.method public remove()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1857
    iget-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$3;->last:Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    .line 1858
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 1861
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$3;->this$1:Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    iget-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$3;->last:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/swapspace/SwapKey;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->remove(Lorg/apache/ignite/spi/swapspace/SwapKey;Z)[B
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1867
    iput-object v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$3;->last:Ljava/util/Map$Entry;

    .line 1869
    return-void

    .line 1863
    :catch_0
    move-exception v0

    .line 1864
    .local v0, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    :try_start_1
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1867
    .end local v0    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space$3;->last:Ljava/util/Map$Entry;

    throw v1
.end method
