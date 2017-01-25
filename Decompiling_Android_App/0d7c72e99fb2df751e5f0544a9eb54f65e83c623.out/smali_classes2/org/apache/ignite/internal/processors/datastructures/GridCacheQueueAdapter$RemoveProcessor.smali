.class public Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;
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
    name = "RemoveProcessor"
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

.field private idx:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "idx"    # Ljava/lang/Long;

    .prologue
    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 925
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;->idx:Ljava/lang/Long;

    .line 926
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
    .line 930
    .local p1, "e":Ljavax/cache/processor/MutableEntry;, "Ljavax/cache/processor/MutableEntry<Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;>;"
    invoke-interface/range {p1 .. p1}, Ljavax/cache/processor/MutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    .line 932
    .local v17, "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;->id:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v19

    .line 934
    .local v19, "rmvd":Z
    if-nez v19, :cond_0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->empty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;->idx:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->head()J

    move-result-wide v8

    cmp-long v3, v4, v8

    if-gez v3, :cond_2

    .line 935
    :cond_0
    if-eqz v19, :cond_1

    const-wide/high16 v4, -0x8000000000000000L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 998
    :goto_0
    return-object v3

    .line 935
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 937
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;->idx:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->head()J

    move-result-wide v8

    cmp-long v3, v4, v8

    if-nez v3, :cond_6

    .line 938
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->removedIndexes()Ljava/util/Set;

    move-result-object v16

    .line 940
    .local v16, "rmvIdxs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->head()J

    move-result-wide v4

    const-wide/16 v8, 0x1

    add-long v6, v4, v8

    .line 942
    .local v6, "head":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/F;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 943
    new-instance v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->capacity()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->collocated()Z

    move-result v5

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->tail()J

    move-result-wide v8

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->removedIndexes()Ljava/util/Set;

    move-result-object v10

    invoke-direct/range {v2 .. v10}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;-><init>(Lorg/apache/ignite/lang/IgniteUuid;IZJJLjava/util/Set;)V

    .line 950
    .local v2, "newHdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/cache/processor/MutableEntry;->setValue(Ljava/lang/Object;)V

    .line 952
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;->idx:Ljava/lang/Long;

    goto :goto_0

    .line 955
    .end local v2    # "newHdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    :cond_3
    new-instance v18, Ljava/util/HashSet;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 957
    .end local v16    # "rmvIdxs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .local v18, "rmvIdxs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 958
    const-wide/16 v4, 0x1

    add-long/2addr v6, v4

    goto :goto_1

    .line 960
    :cond_4
    new-instance v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->capacity()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->collocated()Z

    move-result v5

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->tail()J

    move-result-wide v8

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    :goto_2
    invoke-direct/range {v2 .. v10}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;-><init>(Lorg/apache/ignite/lang/IgniteUuid;IZJJLjava/util/Set;)V

    .line 967
    .restart local v2    # "newHdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/cache/processor/MutableEntry;->setValue(Ljava/lang/Object;)V

    .line 969
    const/4 v3, 0x0

    goto/16 :goto_0

    .end local v2    # "newHdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    :cond_5
    move-object/from16 v10, v18

    .line 960
    goto :goto_2

    .line 972
    .end local v6    # "head":J
    .end local v18    # "rmvIdxs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->removedIndexes()Ljava/util/Set;

    move-result-object v16

    .line 974
    .restart local v16    # "rmvIdxs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez v16, :cond_7

    .line 975
    new-instance v16, Ljava/util/HashSet;

    .end local v16    # "rmvIdxs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 977
    .restart local v16    # "rmvIdxs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;->idx:Ljava/lang/Long;

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 989
    :goto_3
    new-instance v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->capacity()I

    move-result v10

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->collocated()Z

    move-result v11

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->head()J

    move-result-wide v12

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->tail()J

    move-result-wide v14

    move-object v8, v2

    invoke-direct/range {v8 .. v16}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;-><init>(Lorg/apache/ignite/lang/IgniteUuid;IZJJLjava/util/Set;)V

    .line 996
    .restart local v2    # "newHdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/cache/processor/MutableEntry;->setValue(Ljava/lang/Object;)V

    .line 998
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;->idx:Ljava/lang/Long;

    goto/16 :goto_0

    .line 980
    .end local v2    # "newHdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;->idx:Ljava/lang/Long;

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 981
    new-instance v18, Ljava/util/HashSet;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 983
    .end local v16    # "rmvIdxs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v18    # "rmvIdxs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;->idx:Ljava/lang/Long;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v18

    .end local v18    # "rmvIdxs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v16    # "rmvIdxs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    goto :goto_3

    .line 986
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;->idx:Ljava/lang/Long;

    goto :goto_3
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
    .line 901
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;->process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

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
    .line 1009
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 1010
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;->idx:Ljava/lang/Long;

    .line 1011
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
    .line 1003
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1004
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;->idx:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1005
    return-void
.end method
