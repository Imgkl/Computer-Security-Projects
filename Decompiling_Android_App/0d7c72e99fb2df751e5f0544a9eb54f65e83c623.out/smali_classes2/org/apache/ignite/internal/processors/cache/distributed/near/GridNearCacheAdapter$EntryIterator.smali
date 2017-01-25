.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;
.super Ljava/lang/Object;
.source "GridNearCacheAdapter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private currEntry:Ljavax/cache/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private currIter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private dhtIter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private nearIter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 681
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 698
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter<TK;TV;>.EntryIterator;"
    .local p2, "nearIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    .local p3, "dhtIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 700
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 702
    :cond_1
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->nearIter:Ljava/util/Iterator;

    .line 703
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->dhtIter:Ljava/util/Iterator;

    .line 705
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->currIter:Ljava/util/Iterator;

    .line 706
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;Ljava/util/Iterator;Ljava/util/Iterator;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;
    .param p2, "x1"    # Ljava/util/Iterator;
    .param p3, "x2"    # Ljava/util/Iterator;
    .param p4, "x3"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$1;

    .prologue
    .line 681
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter<TK;TV;>.EntryIterator;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 710
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->nearIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->dhtIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 681
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->next()Ljavax/cache/Cache$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/cache/Cache$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 715
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 718
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->currIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 719
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->dhtIter:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->currIter:Ljava/util/Iterator;

    .line 721
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->currIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/Cache$Entry;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->currEntry:Ljavax/cache/Cache$Entry;

    return-object v0
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 726
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter<TK;TV;>.EntryIterator;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->currEntry:Ljavax/cache/Cache$Entry;

    if-nez v1, :cond_0

    .line 727
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 729
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->currIter:Ljava/util/Iterator;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 731
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->currIter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 734
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;->currEntry:Ljavax/cache/Cache$Entry;

    invoke-interface {v2}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->remove(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    return-void

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
