.class public Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;
.super Ljava/lang/Object;
.source "CacheLazyEntry.java"

# interfaces
.implements Ljavax/cache/Cache$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field protected cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field protected key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field protected keyObj:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

.field protected val:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field protected valObj:Lorg/apache/ignite/internal/processors/cache/CacheObject;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;)V
    .locals 0
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "keyObj"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry<TK;TV;>;"
    .local p3, "val":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->keyObj:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 65
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->val:Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljava/lang/Object;)V
    .locals 0
    .param p2, "keyObject"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p4, "valObj"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "TK;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p3, "key":Ljava/lang/Object;, "TK;"
    .local p5, "val":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 82
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->keyObj:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 83
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->key:Ljava/lang/Object;

    .line 84
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->valObj:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 85
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->val:Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 0
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "keyObj"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "valObj"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .prologue
    .line 52
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->keyObj:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 54
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->valObj:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 55
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 56
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->keyObj:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->key:Ljava/lang/Object;

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->val:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->valObj:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->val:Ljava/lang/Object;

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public key()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry<TK;TV;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lorg/apache/ignite/Ignite;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 123
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unwrapping to class is not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;->val:Ljava/lang/Object;

    return-object v0
.end method
