.class public Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$PollProcessor;
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
    name = "PollProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/cache/processor/EntryProcessor",
        "<",
        "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;",
        "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;",
        "Ljava/lang/Long;",
        ">;",
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
    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0
    .param p1, "id"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$PollProcessor;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 756
    return-void
.end method


# virtual methods
.method public varargs process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Long;
    .locals 20
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
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 761
    .local p1, "e":Ljavax/cache/processor/MutableEntry;, "Ljavax/cache/processor/MutableEntry<Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;>;"
    invoke-interface/range {p1 .. p1}, Ljavax/cache/processor/MutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    .line 763
    .local v11, "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$PollProcessor;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {v11, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v14

    .line 765
    .local v14, "rmvd":Z
    if-nez v14, :cond_0

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->empty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 766
    :cond_0
    if-eqz v14, :cond_1

    const-wide/high16 v4, -0x8000000000000000L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 813
    :goto_0
    return-object v3

    .line 766
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 768
    :cond_2
    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->removedIndexes()Ljava/util/Set;

    move-result-object v15

    .line 770
    .local v15, "rmvdIdxs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez v15, :cond_3

    .line 771
    new-instance v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->capacity()I

    move-result v4

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->collocated()Z

    move-result v5

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->head()J

    move-result-wide v8

    const-wide/16 v18, 0x1

    add-long v6, v8, v18

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->tail()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;-><init>(Lorg/apache/ignite/lang/IgniteUuid;IZJJLjava/util/Set;)V

    .line 778
    .local v2, "newHdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/cache/processor/MutableEntry;->setValue(Ljava/lang/Object;)V

    .line 780
    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->head()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 783
    .end local v2    # "newHdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    :cond_3
    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->head()J

    move-result-wide v4

    const-wide/16 v8, 0x1

    add-long v6, v4, v8

    .line 785
    .local v6, "next":J
    new-instance v16, Ljava/util/HashSet;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .end local v15    # "rmvdIdxs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .local v16, "rmvdIdxs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    move-wide v12, v6

    .line 788
    .end local v6    # "next":J
    .local v12, "next":J
    :goto_1
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 789
    new-instance v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->capacity()I

    move-result v4

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->collocated()Z

    move-result v5

    const-wide/16 v8, 0x1

    add-long v6, v12, v8

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->tail()J

    move-result-wide v8

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    :goto_2
    invoke-direct/range {v2 .. v10}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;-><init>(Lorg/apache/ignite/lang/IgniteUuid;IZJJLjava/util/Set;)V

    .line 796
    .restart local v2    # "newHdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/cache/processor/MutableEntry;->setValue(Ljava/lang/Object;)V

    .line 798
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .end local v2    # "newHdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    :cond_4
    move-object/from16 v10, v16

    .line 789
    goto :goto_2

    .line 801
    :cond_5
    const-wide/16 v4, 0x1

    add-long v6, v12, v4

    .line 802
    .end local v12    # "next":J
    .restart local v6    # "next":J
    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->tail()J

    move-result-wide v4

    cmp-long v3, v6, v4

    if-nez v3, :cond_7

    .line 804
    new-instance v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->capacity()I

    move-result v4

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->collocated()Z

    move-result v5

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->tail()J

    move-result-wide v8

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    :goto_3
    invoke-direct/range {v2 .. v10}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;-><init>(Lorg/apache/ignite/lang/IgniteUuid;IZJJLjava/util/Set;)V

    .line 811
    .restart local v2    # "newHdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/cache/processor/MutableEntry;->setValue(Ljava/lang/Object;)V

    .line 813
    const/4 v3, 0x0

    goto/16 :goto_0

    .end local v2    # "newHdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    :cond_6
    move-object/from16 v10, v16

    .line 804
    goto :goto_3

    :cond_7
    move-wide v12, v6

    .end local v6    # "next":J
    .restart local v12    # "next":J
    goto :goto_1
.end method

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
    .line 736
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$PollProcessor;->process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Long;

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
    .line 823
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$PollProcessor;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 824
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
    .line 818
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$PollProcessor;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 819
    return-void
.end method
