.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$CollocatedItemKey;
.super Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;
.source "GridCacheSetImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CollocatedItemKey"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x13704a803a42dbd6L


# instance fields
.field private setName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 556
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;-><init>()V

    .line 558
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;)V
    .locals 0
    .param p1, "setName"    # Ljava/lang/String;
    .param p2, "setId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "item"    # Ljava/lang/Object;

    .prologue
    .line 566
    invoke-direct {p0, p2, p3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;)V

    .line 568
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$CollocatedItemKey;->setName:Ljava/lang/String;

    .line 569
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$1;

    .prologue
    .line 546
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$CollocatedItemKey;-><init>(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public affinityKey()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lorg/apache/ignite/cache/affinity/AffinityKeyMapped;
    .end annotation

    .prologue
    .line 576
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$CollocatedItemKey;->setName:Ljava/lang/String;

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
    .line 588
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;->readExternal(Ljava/io/ObjectInput;)V

    .line 590
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$CollocatedItemKey;->setName:Ljava/lang/String;

    .line 591
    return-void
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
    .line 581
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 583
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$CollocatedItemKey;->setName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 584
    return-void
.end method
