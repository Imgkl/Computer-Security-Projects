.class public Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl;
.super Lorg/jsr166/ConcurrentHashMap8;
.source "ClusterNodeLocalMapImpl.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jsr166/ConcurrentHashMap8",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J

.field private static final stash:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ctx:Lorg/apache/ignite/internal/GridKernalContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl;->$assertionsDisabled:Z

    .line 46
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl;->stash:Ljava/lang/ThreadLocal;

    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    .local p0, "this":Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl;, "Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl<TK;TV;>;"
    invoke-direct {p0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    .line 56
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 62
    .local p0, "this":Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl;, "Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl<TK;TV;>;"
    invoke-direct {p0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    .line 63
    sget-boolean v0, Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 66
    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl;, "Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl<TK;TV;>;"
    sget-object v0, Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl;, "Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl<TK;TV;>;"
    :try_start_0
    sget-object v1, Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/ignite/internal/IgnitionEx;->gridx(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteKernal;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/IgniteKernal;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->nodeLocalMap()Ljava/util/concurrent/ConcurrentMap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 92
    sget-object v2, Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    new-instance v1, Ljava/io/InvalidObjectException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->withCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/InvalidObjectException;

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    sget-object v2, Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl;, "Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl;, "Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 71
    return-void
.end method
