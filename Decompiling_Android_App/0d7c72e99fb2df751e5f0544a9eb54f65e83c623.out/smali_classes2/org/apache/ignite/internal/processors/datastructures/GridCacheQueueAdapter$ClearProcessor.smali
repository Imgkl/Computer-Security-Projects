.class public Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$ClearProcessor;
.super Ljava/lang/Object;
.source "GridCacheQueueAdapter.java"

# interfaces
.implements Ljavax/cache/processor/EntryProcessor;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ClearProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/cache/processor/EntryProcessor",
        "<",
        "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;",
        "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private id:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0
    .param p1, "id"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$ClearProcessor;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 697
    return-void
.end method


# virtual methods
.method public bridge synthetic process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljavax/cache/processor/MutableEntry;
    .param p2, "x1"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/processor/EntryProcessorException;
        }
    .end annotation

    .prologue
    .line 677
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$ClearProcessor;->process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method public varargs process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 11
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/processor/MutableEntry",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "e":Ljavax/cache/processor/MutableEntry;, "Ljavax/cache/processor/MutableEntry<Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;>;"
    const-wide/high16 v2, -0x8000000000000000L

    const/4 v8, 0x0

    .line 702
    invoke-interface {p1}, Ljavax/cache/processor/MutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    .line 704
    .local v9, "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$ClearProcessor;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {v9, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v10

    .line 706
    .local v10, "rmvd":Z
    if-eqz v10, :cond_1

    .line 707
    new-instance v8, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 720
    :cond_0
    :goto_0
    return-object v8

    .line 708
    :cond_1
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 711
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->capacity()I

    move-result v2

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->collocated()Z

    move-result v3

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->tail()J

    move-result-wide v4

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->tail()J

    move-result-wide v6

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;-><init>(Lorg/apache/ignite/lang/IgniteUuid;IZJJLjava/util/Set;)V

    .line 718
    .local v0, "newHdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    invoke-interface {p1, v0}, Ljavax/cache/processor/MutableEntry;->setValue(Ljava/lang/Object;)V

    .line 720
    new-instance v8, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->head()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->tail()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
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
    .line 730
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$ClearProcessor;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 731
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
    .line 725
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$ClearProcessor;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 726
    return-void
.end method
