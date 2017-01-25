.class public Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;
.super Ljava/lang/Object;
.source "GridCacheSetItemKey.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private item:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private setId:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;)V
    .locals 0
    .param p1, "setId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;->setId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 54
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;->item:Ljava/lang/Object;

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    if-ne p0, p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 86
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 88
    check-cast v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

    .line 90
    .local v0, "that":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;->setId:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;->setId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;->item:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;->item:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;->setId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v0

    .line 75
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;->item:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 77
    return v0
.end method

.method public item()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;->item:Ljava/lang/Object;

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
    .line 101
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;->setId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 102
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;->item:Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public setId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;->setId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

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
    .line 95
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;->setId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 96
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;->item:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 97
    return-void
.end method
