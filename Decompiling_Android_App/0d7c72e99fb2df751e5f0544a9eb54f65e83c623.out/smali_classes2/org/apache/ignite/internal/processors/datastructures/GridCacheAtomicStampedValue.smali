.class public final Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;
.super Ljava/lang/Object;
.source "GridCacheAtomicStampedValue.java"

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
        "S:",
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
.field private stamp:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

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
    .line 57
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TS;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    .local p2, "stamp":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->val:Ljava/lang/Object;

    .line 51
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->stamp:Ljava/lang/Object;

    .line 52
    return-void
.end method


# virtual methods
.method public classLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->deployClass()Ljava/lang/Class;

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
    .line 32
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->clone()Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue",
            "<TT;TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 94
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;

    .line 96
    .local v2, "obj":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->val:Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/util/typedef/X;->cloneObject(Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object v1

    .line 97
    .local v1, "locVal":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->stamp:Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/util/typedef/X;->cloneObject(Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object v0

    .line 99
    .local v0, "locStamp":Ljava/lang/Object;, "TS;"
    invoke-virtual {v2, v1, v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    return-object v2
.end method

.method public deployClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 122
    .local v0, "clsLdr":Ljava/lang/ClassLoader;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->stamp:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->stamp:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->stamp:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->val:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->val:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public get()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TT;TS;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->val:Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->stamp:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

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
    .line 113
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->val:Ljava/lang/Object;

    .line 114
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->stamp:Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TS;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    .local p2, "stamp":Ljava/lang/Object;, "TS;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->val:Ljava/lang/Object;

    .line 67
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->stamp:Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public stamp()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->stamp:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->val:Ljava/lang/Object;

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
    .line 106
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->val:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->stamp:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 108
    return-void
.end method
