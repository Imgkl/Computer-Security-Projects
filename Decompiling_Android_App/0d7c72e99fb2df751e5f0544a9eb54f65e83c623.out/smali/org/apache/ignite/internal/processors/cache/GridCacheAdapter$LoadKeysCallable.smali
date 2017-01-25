.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteCallable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadKeysCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteCallable",
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
.field private cacheName:Ljava/lang/String;

.field private ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private keys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+TK;>;"
        }
    .end annotation
.end field

.field private plc:Ljavax/cache/expiry/ExpiryPolicy;

.field private update:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5992
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6015
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6017
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Collection;ZLjavax/cache/expiry/ExpiryPolicy;)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p3, "update"    # Z
    .param p4, "plc"    # Ljavax/cache/expiry/ExpiryPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+TK;>;Z",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 6029
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable<TK;TV;>;"
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6030
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->cacheName:Ljava/lang/String;

    .line 6031
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->keys:Ljava/util/Collection;

    .line 6032
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->update:Z

    .line 6033
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->plc:Ljavax/cache/expiry/ExpiryPolicy;

    .line 6034
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
    .line 5992
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->call()Ljava/lang/Void;

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
    .line 6038
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->ignite:Lorg/apache/ignite/Ignite;

    check-cast v1, Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->cacheName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    .line 6040
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->cacheName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 6042
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 6045
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->update:Z

    if-eqz v1, :cond_1

    .line 6046
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->keys:Ljava/util/Collection;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localLoadAndUpdate(Ljava/util/Collection;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->access$1300(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6051
    :goto_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    .line 6054
    const/4 v1, 0x0

    return-object v1

    .line 6048
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->keys:Ljava/util/Collection;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->plc:Ljavax/cache/expiry/ExpiryPolicy;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->localLoad(Ljava/util/Collection;Ljavax/cache/expiry/ExpiryPolicy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6051
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1
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
    .line 6070
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable<TK;TV;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->cacheName:Ljava/lang/String;

    .line 6072
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readCollection(Ljava/io/ObjectInput;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->keys:Ljava/util/Collection;

    .line 6074
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->update:Z

    .line 6076
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/expiry/ExpiryPolicy;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->plc:Ljavax/cache/expiry/ExpiryPolicy;

    .line 6077
    return-void
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
    .line 6059
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->cacheName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 6061
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->keys:Ljava/util/Collection;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeCollection(Ljava/io/ObjectOutput;Ljava/util/Collection;)V

    .line 6063
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->update:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 6065
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->plc:Ljavax/cache/expiry/ExpiryPolicy;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$LoadKeysCallable;->plc:Ljavax/cache/expiry/ExpiryPolicy;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/IgniteExternalizableExpiryPolicy;-><init>(Ljavax/cache/expiry/ExpiryPolicy;)V

    :goto_0
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 6066
    return-void

    .line 6065
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
