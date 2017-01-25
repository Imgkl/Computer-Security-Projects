.class public Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;
.super Ljava/lang/Object;
.source "GridCacheSetHeader.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private collocated:Z

.field private id:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Z)V
    .locals 0
    .param p1, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "collocated"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 52
    iput-boolean p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;->collocated:Z

    .line 53
    return-void
.end method


# virtual methods
.method public collocated()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;->collocated:Z

    return v0
.end method

.method public id()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;->id:Lorg/apache/ignite/lang/IgniteUuid;

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
    .line 77
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 78
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;->collocated:Z

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;

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
    .line 71
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 72
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;->collocated:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 73
    return-void
.end method
