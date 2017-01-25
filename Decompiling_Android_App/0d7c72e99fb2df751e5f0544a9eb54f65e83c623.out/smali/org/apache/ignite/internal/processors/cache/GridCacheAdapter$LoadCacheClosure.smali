.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadCacheClosure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private args:[Ljava/lang/Object;

.field private cacheName:Ljava/lang/String;

.field private ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private p:Lorg/apache/ignite/lang/IgniteBiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private plc:Ljavax/cache/expiry/ExpiryPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6160
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6183
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6185
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .param p4, "plc"    # Ljavax/cache/expiry/ExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 6197
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure<TK;TV;>;"
    .local p2, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6198
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->cacheName:Ljava/lang/String;

    .line 6199
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->p:Lorg/apache/ignite/lang/IgniteBiPredicate;

    .line 6200
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->args:[Ljava/lang/Object;

    .line 6201
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->plc:Ljavax/cache/expiry/ExpiryPolicy;

    .line 6202
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/ignite/lang/IgniteBiPredicate;
    .param p3, "x2"    # [Ljava/lang/Object;
    .param p4, "x3"    # Ljavax/cache/expiry/ExpiryPolicy;
    .param p5, "x4"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;

    .prologue
    .line 6160
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;-><init>(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;Ljavax/cache/expiry/ExpiryPolicy;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 6160
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 6206
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->ignite:Lorg/apache/ignite/Ignite;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->cacheName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/apache/ignite/Ignite;->cache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;

    move-result-object v0

    .line 6208
    .local v0, "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->cacheName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 6210
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->plc:Ljavax/cache/expiry/ExpiryPolicy;

    if-eqz v1, :cond_1

    .line 6211
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->plc:Ljavax/cache/expiry/ExpiryPolicy;

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteCache;->withExpiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/IgniteCache;

    move-result-object v0

    .line 6213
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->p:Lorg/apache/ignite/lang/IgniteBiPredicate;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->args:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/IgniteCache;->localLoadCache(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)V

    .line 6215
    const/4 v1, 0x0

    return-object v1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 6235
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure<TK;TV;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiPredicate;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->p:Lorg/apache/ignite/lang/IgniteBiPredicate;

    .line 6237
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->args:[Ljava/lang/Object;

    .line 6239
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->cacheName:Ljava/lang/String;

    .line 6241
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/expiry/ExpiryPolicy;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->plc:Ljavax/cache/expiry/ExpiryPolicy;

    .line 6242
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6246
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6220
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->p:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 6222
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->args:[Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 6224
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->cacheName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 6226
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->plc:Ljavax/cache/expiry/ExpiryPolicy;

    if-eqz v0, :cond_0

    .line 6227
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadCacheClosure;->plc:Ljavax/cache/expiry/ExpiryPolicy;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;-><init>(Ljavax/cache/expiry/ExpiryPolicy;)V

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 6230
    :goto_0
    return-void

    .line 6229
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method
