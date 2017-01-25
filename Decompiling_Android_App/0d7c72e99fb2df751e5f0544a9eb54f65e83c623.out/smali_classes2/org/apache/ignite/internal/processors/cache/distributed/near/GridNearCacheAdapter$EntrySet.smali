.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;
.super Ljava/util/AbstractSet;
.source "GridNearCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private dhtSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private nearSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
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
    .line 638
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 649
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter<TK;TV;>.EntrySet;"
    .local p2, "nearSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    .local p3, "dhtSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 650
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 651
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 653
    :cond_1
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;->nearSet:Ljava/util/Set;

    .line 654
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;->dhtSet:Ljava/util/Set;

    .line 655
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;Ljava/util/Set;Ljava/util/Set;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;
    .param p2, "x1"    # Ljava/util/Set;
    .param p3, "x2"    # Ljava/util/Set;
    .param p4, "x3"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$1;

    .prologue
    .line 638
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter<TK;TV;>.EntrySet;"
    const/4 v6, 0x0

    .line 659
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;->nearSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;->dhtSet:Ljava/util/Set;

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/apache/ignite/lang/IgnitePredicate;

    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet$1;

    invoke-direct {v5, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;)V

    aput-object v5, v4, v6

    invoke-static {v3, v6, v4}, Lorg/apache/ignite/internal/util/typedef/F;->iterator0(Ljava/lang/Iterable;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntryIterator;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;Ljava/util/Iterator;Ljava/util/Iterator;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$1;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 674
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter<TK;TV;>.EntrySet;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->size(Ljava/util/Iterator;[Lorg/apache/ignite/lang/IgnitePredicate;)I

    move-result v0

    return v0
.end method
