.class Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;
.super Ljava/util/AbstractSet;
.source "GridCacheMapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheMapEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;)V
    .locals 1

    .prologue
    .line 178
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>.CacheMapEntrySet;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 180
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;->prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;->entrySet:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$1;

    .prologue
    .line 178
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>.CacheMapEntrySet;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;->entrySet:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>.CacheMapEntrySet;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 230
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>.CacheMapEntrySet;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;->entrySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>.CacheMapEntrySet;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
