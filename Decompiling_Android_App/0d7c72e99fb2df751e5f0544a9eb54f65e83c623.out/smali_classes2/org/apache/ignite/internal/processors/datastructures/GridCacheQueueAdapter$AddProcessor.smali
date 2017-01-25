.class public Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$AddProcessor;
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
    name = "AddProcessor"
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

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;I)V
    .locals 0
    .param p1, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "size"    # I

    .prologue
    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$AddProcessor;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 853
    iput p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$AddProcessor;->size:I

    .line 854
    return-void
.end method

.method private spaceAvailable(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;I)Z
    .locals 2
    .param p1, "hdr"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    .param p2, "size"    # I

    .prologue
    .line 883
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->bounded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->capacity()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public varargs process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Long;
    .locals 14
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
    .line 858
    .local p1, "e":Ljavax/cache/processor/MutableEntry;, "Ljavax/cache/processor/MutableEntry<Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;>;"
    invoke-interface {p1}, Ljavax/cache/processor/MutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    .line 860
    .local v9, "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$AddProcessor;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {v9, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v10

    .line 862
    .local v10, "rmvd":Z
    if-nez v10, :cond_0

    iget v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$AddProcessor;->size:I

    invoke-direct {p0, v9, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$AddProcessor;->spaceAvailable(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 863
    :cond_0
    if-eqz v10, :cond_1

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 874
    :goto_0
    return-object v1

    .line 863
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 865
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->capacity()I

    move-result v2

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->collocated()Z

    move-result v3

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->head()J

    move-result-wide v4

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->tail()J

    move-result-wide v6

    iget v8, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$AddProcessor;->size:I

    int-to-long v12, v8

    add-long/2addr v6, v12

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->removedIndexes()Ljava/util/Set;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;-><init>(Lorg/apache/ignite/lang/IgniteUuid;IZJJLjava/util/Set;)V

    .line 872
    .local v0, "newHdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    invoke-interface {p1, v0}, Ljavax/cache/processor/MutableEntry;->setValue(Ljava/lang/Object;)V

    .line 874
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->tail()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
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
    .line 829
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$AddProcessor;->process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Long;

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
    .line 894
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$AddProcessor;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 895
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$AddProcessor;->size:I

    .line 896
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
    .line 888
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$AddProcessor;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 889
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$AddProcessor;->size:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 890
    return-void
.end method
