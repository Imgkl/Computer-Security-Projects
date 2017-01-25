.class public final Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;
.super Ljava/lang/Object;
.source "GridCacheAtomicReferenceValue.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;
.implements Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;",
        "Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private val:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;->val:Ljava/lang/Object;

    .line 45
    return-void
.end method


# virtual methods
.method public classLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue<TT;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;->deployClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue<TT;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;->clone()Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue<TT;>;"
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;

    .line 73
    .local v1, "obj":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue<TT;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;->val:Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lorg/apache/ignite/internal/util/typedef/X;->cloneObject(Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object v0

    .line 75
    .local v0, "locVal":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;->set(Ljava/lang/Object;)V

    .line 77
    return-object v1
.end method

.method public deployClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;->val:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;->val:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;->val:Ljava/lang/Object;

    return-object v0
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
    .line 88
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue<TT;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;->val:Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;->val:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue<TT;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;

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
    .line 82
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;->val:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 83
    return-void
.end method
