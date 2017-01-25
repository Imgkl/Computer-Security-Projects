.class Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStoreFactory;
.super Ljava/lang/Object;
.source "GridCacheLoaderWriterStoreFactory.java"

# interfaces
.implements Ljavax/cache/configuration/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/cache/configuration/Factory",
        "<",
        "Lorg/apache/ignite/cache/store/CacheStore",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final ldrFactory:Ljavax/cache/configuration/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/integration/CacheLoader",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final writerFactory:Ljavax/cache/configuration/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/integration/CacheWriter",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStoreFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStoreFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljavax/cache/configuration/Factory;Ljavax/cache/configuration/Factory;)V
    .locals 1
    .param p1    # Ljavax/cache/configuration/Factory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljavax/cache/configuration/Factory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/integration/CacheLoader",
            "<TK;TV;>;>;",
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/integration/CacheWriter",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStoreFactory;, "Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStoreFactory<TK;TV;>;"
    .local p1, "ldrFactory":Ljavax/cache/configuration/Factory;, "Ljavax/cache/configuration/Factory<Ljavax/cache/integration/CacheLoader<TK;TV;>;>;"
    .local p2, "writerFactory":Ljavax/cache/configuration/Factory;, "Ljavax/cache/configuration/Factory<Ljavax/cache/integration/CacheWriter<TK;TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStoreFactory;->ldrFactory:Ljavax/cache/configuration/Factory;

    .line 46
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStoreFactory;->writerFactory:Ljavax/cache/configuration/Factory;

    .line 48
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStoreFactory;, "Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStoreFactory<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStoreFactory;->create()Lorg/apache/ignite/cache/store/CacheStore;

    move-result-object v0

    return-object v0
.end method

.method public create()Lorg/apache/ignite/cache/store/CacheStore;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/cache/store/CacheStore",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStoreFactory;, "Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStoreFactory<TK;TV;>;"
    const/4 v3, 0x0

    .line 53
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStoreFactory;->ldrFactory:Ljavax/cache/configuration/Factory;

    if-nez v2, :cond_0

    move-object v0, v3

    .line 55
    .local v0, "ldr":Ljavax/cache/integration/CacheLoader;, "Ljavax/cache/integration/CacheLoader<TK;TV;>;"
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStoreFactory;->writerFactory:Ljavax/cache/configuration/Factory;

    if-nez v2, :cond_1

    move-object v1, v3

    .line 57
    .local v1, "writer":Ljavax/cache/integration/CacheWriter;, "Ljavax/cache/integration/CacheWriter<TK;TV;>;"
    :goto_1
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;

    invoke-direct {v2, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;-><init>(Ljavax/cache/integration/CacheLoader;Ljavax/cache/integration/CacheWriter;)V

    return-object v2

    .line 53
    .end local v0    # "ldr":Ljavax/cache/integration/CacheLoader;, "Ljavax/cache/integration/CacheLoader<TK;TV;>;"
    .end local v1    # "writer":Ljavax/cache/integration/CacheWriter;, "Ljavax/cache/integration/CacheWriter<TK;TV;>;"
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStoreFactory;->ldrFactory:Ljavax/cache/configuration/Factory;

    invoke-interface {v2}, Ljavax/cache/configuration/Factory;->create()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/cache/integration/CacheLoader;

    move-object v0, v2

    goto :goto_0

    .line 55
    .restart local v0    # "ldr":Ljavax/cache/integration/CacheLoader;, "Ljavax/cache/integration/CacheLoader<TK;TV;>;"
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStoreFactory;->writerFactory:Ljavax/cache/configuration/Factory;

    invoke-interface {v2}, Ljavax/cache/configuration/Factory;->create()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/cache/integration/CacheWriter;

    move-object v1, v2

    goto :goto_1
.end method
