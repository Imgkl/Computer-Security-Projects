.class Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "GridCacheConcurrentMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Segment"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private volatile hdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

.field private final loadFactor:F

.field private final pubSize:Lorg/jsr166/LongAdder8;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 738
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;IF)V
    .locals 3
    .param p2, "initCap"    # I
    .param p3, "lf"    # F

    .prologue
    const/4 v2, 0x0

    .line 804
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 789
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->pubSize:Lorg/jsr166/LongAdder8;

    .line 805
    iput p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->loadFactor:F

    .line 807
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, v2, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;-><init>(IILorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->hdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    .line 809
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->hdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->length()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->threshold:I

    .line 810
    return-void
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    .prologue
    .line 738
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->headerForRead()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    .prologue
    .line 738
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->hdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    return-object v0
.end method

.method private headerForRead()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    .locals 2

    .prologue
    .line 830
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->hdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    .line 832
    .local v0, "hdr":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->onReadStart()V

    .line 835
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->hdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    if-ne v0, v1, :cond_0

    .line 836
    return-object v0

    .line 838
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->onReadEnd()V

    goto :goto_0
.end method

.method private put0(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;J)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .locals 25
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "hash"    # I
    .param p3, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p4, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p5, "ttl"    # J

    .prologue
    .line 927
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->hdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    move-object/from16 v18, v0

    .line 929
    .local v18, "hdr":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->size()I

    move-result v15

    .line 931
    .local v15, "c":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "c":I
    .local v16, "c":I
    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->threshold:I

    if-le v15, v5, :cond_0

    .line 932
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->rehash()V

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->hdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    move-object/from16 v18, v0

    .line 937
    :cond_0
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id()I

    move-result v19

    .line 939
    .local v19, "hdrId":I
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->table()[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v23

    .line 941
    .local v23, "tab":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    move-object/from16 v0, v23

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    and-int v20, p2, v5

    .line 943
    .local v20, "idx":I
    aget-object v4, v23, v20

    .line 945
    .local v4, "bin":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    move-object/from16 v17, v4

    .line 947
    .local v17, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :goto_0
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hash()I

    move-result v5

    move/from16 v0, p2

    if-ne v5, v0, :cond_1

    move-object/from16 v0, v17

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 948
    :cond_1
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next(I)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v17

    goto :goto_0

    .line 952
    :cond_2
    if-eqz v17, :cond_3

    .line 953
    move-object/from16 v22, v17

    .line 955
    .local v22, "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-wide/from16 v2, p5

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->rawPut(Lorg/apache/ignite/internal/processors/cache/CacheObject;J)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 981
    :goto_1
    return-object v22

    .line 958
    .end local v22    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :cond_3
    if-eqz v4, :cond_5

    move-object v11, v4

    .line 960
    .local v11, "next":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->factory:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntryFactory;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->access$700(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntryFactory;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    iget-object v6, v6, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id()I

    move-result v14

    move-object/from16 v7, p4

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-wide/from16 v12, p5

    invoke-interface/range {v5 .. v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntryFactory;->create(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;JI)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v21

    .line 963
    .local v21, "newRoot":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    monitor-enter v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 964
    :try_start_1
    aput-object v21, v23, v20

    .line 966
    move-object/from16 v22, v21

    .line 969
    .restart local v22    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v5

    if-nez v5, :cond_4

    .line 970
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->mapPubSize:Lorg/jsr166/LongAdder8;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->access$800(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)Lorg/jsr166/LongAdder8;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsr166/LongAdder8;->increment()V

    .line 972
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->pubSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v5}, Lorg/jsr166/LongAdder8;->increment()V

    .line 974
    :cond_4
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 976
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->mapSize:Lorg/jsr166/LongAdder8;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->access$900(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)Lorg/jsr166/LongAdder8;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jsr166/LongAdder8;->increment()V

    .line 978
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->size(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 984
    .end local v4    # "bin":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v11    # "next":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v16    # "c":I
    .end local v17    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v18    # "hdr":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    .end local v19    # "hdrId":I
    .end local v20    # "idx":I
    .end local v21    # "newRoot":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v22    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v23    # "tab":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :catchall_0
    move-exception v5

    throw v5

    .line 958
    .restart local v4    # "bin":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .restart local v16    # "c":I
    .restart local v17    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .restart local v18    # "hdr":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    .restart local v19    # "hdrId":I
    .restart local v20    # "idx":I
    .restart local v23    # "tab":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 974
    .restart local v11    # "next":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .restart local v21    # "newRoot":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method checkSegmentConsistency()V
    .locals 12

    .prologue
    .line 1281
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->hdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    .line 1283
    .local v4, "hdr":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->table()[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v8

    .line 1285
    .local v8, "tbl":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    const/4 v2, 0x0

    .line 1286
    .local v2, "cnt":I
    const/4 v7, 0x0

    .line 1288
    .local v7, "pubCnt":I
    move-object v0, v8

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v1, v0, v5

    .line 1289
    .local v1, "b":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    if-eqz v1, :cond_2

    .line 1290
    move-object v3, v1

    .line 1292
    .local v3, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    sget-boolean v9, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-nez v3, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1294
    :cond_0
    :goto_1
    if-eqz v3, :cond_2

    .line 1295
    add-int/lit8 v2, v2, 0x1

    .line 1297
    iget-object v9, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    instance-of v9, v9, Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    if-nez v9, :cond_1

    .line 1298
    add-int/lit8 v7, v7, 0x1

    .line 1300
    :cond_1
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id()I

    move-result v9

    invoke-virtual {v3, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next(I)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v3

    goto :goto_1

    .line 1288
    .end local v3    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1305
    .end local v1    # "b":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :cond_3
    sget-boolean v9, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->$assertionsDisabled:Z

    if-nez v9, :cond_4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->size()I

    move-result v9

    if-eq v2, v9, :cond_4

    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Entry count and header size mismatch [cnt="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", hdrSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", segment="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", hdrId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 1307
    :cond_4
    sget-boolean v9, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->$assertionsDisabled:Z

    if-nez v9, :cond_5

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->pubSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v9}, Lorg/jsr166/LongAdder8;->intValue()I

    move-result v9

    if-eq v7, v9, :cond_5

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1308
    :cond_5
    return-void
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .line 875
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->headerForRead()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    move-result-object v1

    .line 878
    .local v1, "hdr":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 879
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->table()[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->getFirst([Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;I)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v0

    .line 881
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :goto_0
    if-eqz v0, :cond_1

    .line 882
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hash()I

    move-result v2

    if-ne v2, p2, :cond_0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 883
    const/4 v2, 0x1

    .line 892
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->onReadEnd()V

    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :goto_1
    return v2

    .line 885
    .restart local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next(I)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 889
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :cond_1
    const/4 v2, 0x0

    .line 892
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->onReadEnd()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->onReadEnd()V

    throw v2
.end method

.method decrementPublicSize()V
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->pubSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->decrement()V

    .line 1205
    return-void
.end method

.method get(Ljava/lang/Object;I)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 848
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->headerForRead()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    move-result-object v1

    .line 851
    .local v1, "hdr":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 852
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->table()[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->getFirst([Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;I)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v0

    .line 854
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :goto_0
    if-eqz v0, :cond_1

    .line 855
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hash()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 865
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->onReadEnd()V

    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :goto_1
    return-object v0

    .line 858
    .restart local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next(I)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 862
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :cond_1
    const/4 v0, 0x0

    .line 865
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->onReadEnd()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->onReadEnd()V

    throw v2
.end method

.method getFirst([Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;I)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .locals 2
    .param p1, "tbl"    # [Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .param p2, "hash"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 820
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    aget-object v0, p1, v1

    .line 822
    .local v0, "bin":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    if-eqz v0, :cond_0

    .end local v0    # "bin":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :goto_0
    return-object v0

    .restart local v0    # "bin":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method incrementPublicSize()V
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->pubSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->increment()V

    .line 1212
    return-void
.end method

.method publicSize()I
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->pubSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->intValue()I

    move-result v0

    return v0
.end method

.method put(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;J)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "hash"    # I
    .param p3, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p5, "ttl"    # J

    .prologue
    .line 906
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->lock()V

    .line 909
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->put0(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;J)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 912
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->unlock()V

    throw v0
.end method

.method putIfObsolete(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;JZ)Lorg/apache/ignite/internal/util/lang/GridTriple;
    .locals 11
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "hash"    # I
    .param p3, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p5, "ttl"    # J
    .param p7, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "I",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "JZ)",
            "Lorg/apache/ignite/internal/util/lang/GridTriple",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1007
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->lock()V

    .line 1010
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->hdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    .line 1012
    .local v5, "hdr":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id()I

    move-result v6

    .line 1014
    .local v6, "hdrId":I
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->table()[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v8

    .line 1016
    .local v8, "tab":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    and-int v7, p2, v9

    .line 1018
    .local v7, "idx":I
    aget-object v0, v8, v7

    .line 1020
    .local v0, "bin":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    const/4 v2, 0x0

    .line 1021
    .local v2, "cur":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    const/4 v1, 0x0

    .line 1022
    .local v1, "created":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    const/4 v3, 0x0

    .line 1024
    .local v3, "doomed":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    if-nez v0, :cond_1

    .line 1025
    if-eqz p7, :cond_0

    .line 1026
    invoke-direct/range {p0 .. p6}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->put0(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;J)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v1

    move-object v2, v1

    .line 1028
    :cond_0
    new-instance v9, Lorg/apache/ignite/internal/util/lang/GridTriple;

    invoke-direct {v9, v2, v1, v3}, Lorg/apache/ignite/internal/util/lang/GridTriple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->unlock()V

    :goto_0
    return-object v9

    .line 1031
    :cond_1
    move-object v4, v0

    .line 1033
    .local v4, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :goto_1
    if-eqz v4, :cond_3

    :try_start_1
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hash()I

    move-result v9

    if-ne v9, p2, :cond_2

    iget-object v9, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1034
    :cond_2
    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next(I)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v4

    goto :goto_1

    .line 1036
    :cond_3
    if-eqz v4, :cond_6

    .line 1037
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->obsolete()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1038
    const/4 v9, 0x0

    invoke-virtual {p0, p1, p2, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->remove(Ljava/lang/Object;ILorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v3

    .line 1040
    if-eqz p7, :cond_4

    .line 1041
    invoke-direct/range {p0 .. p6}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->put0(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;J)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v1

    move-object v2, v1

    .line 1049
    :cond_4
    :goto_2
    new-instance v9, Lorg/apache/ignite/internal/util/lang/GridTriple;

    invoke-direct {v9, v2, v1, v3}, Lorg/apache/ignite/internal/util/lang/GridTriple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1052
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->unlock()V

    goto :goto_0

    .line 1044
    :cond_5
    move-object v2, v4

    goto :goto_2

    .line 1046
    :cond_6
    if-eqz p7, :cond_4

    .line 1047
    :try_start_2
    invoke-direct/range {p0 .. p6}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->put0(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;J)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    .line 1052
    .end local v0    # "bin":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v1    # "created":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v2    # "cur":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v3    # "doomed":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v4    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v5    # "hdr":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    .end local v6    # "hdrId":I
    .end local v7    # "idx":I
    .end local v8    # "tab":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->unlock()V

    throw v9
.end method

.method randomEntry()Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v14, 0x3

    .line 1218
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->headerForRead()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    move-result-object v3

    .line 1221
    .local v3, "hdr":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    :try_start_0
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->table()[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v11

    .line 1223
    .local v11, "tbl":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v12, 0x3

    invoke-direct {v1, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1225
    .local v1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;>;"
    const/4 v8, 0x0

    .line 1227
    .local v8, "pubCnt":I
    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->RAND:Ljava/util/Random;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->access$1000()Ljava/util/Random;

    move-result-object v12

    array-length v13, v11

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 1229
    .local v10, "start":I
    move v4, v10

    .local v4, "i":I
    :goto_0
    array-length v12, v11

    add-int/2addr v12, v10

    if-ge v4, v12, :cond_4

    .line 1230
    array-length v12, v11

    rem-int v12, v4, v12

    aget-object v2, v11, v12

    .line 1232
    .local v2, "first":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    if-nez v2, :cond_1

    .line 1229
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1235
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1237
    move-object v0, v2

    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :goto_1
    if-eqz v0, :cond_3

    .line 1238
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v12

    if-nez v12, :cond_2

    .line 1239
    add-int/lit8 v8, v8, 0x1

    .line 1237
    :cond_2
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id()I

    move-result v12

    invoke-virtual {v0, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next(I)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v0

    goto :goto_1

    .line 1241
    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v12

    if-ne v12, v14, :cond_0

    .line 1245
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v2    # "first":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :cond_4
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-eqz v12, :cond_5

    .line 1273
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->onReadEnd()V

    :goto_2
    return-object v9

    .line 1248
    :cond_5
    if-nez v8, :cond_6

    .line 1273
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->onReadEnd()V

    goto :goto_2

    .line 1252
    :cond_6
    :try_start_1
    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->RAND:Ljava/util/Random;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->access$1000()Ljava/util/Random;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 1254
    .local v7, "idx":I
    const/4 v4, 0x0

    .line 1256
    const/4 v9, 0x0

    .line 1258
    .local v9, "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .restart local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    move v5, v4

    .line 1259
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_4
    if-eqz v0, :cond_a

    .line 1260
    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    instance-of v12, v12, Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    if-nez v12, :cond_9

    .line 1262
    move-object v9, v0

    .line 1264
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    if-eq v7, v5, :cond_7

    .line 1259
    :goto_5
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id()I

    move-result v12

    invoke-virtual {v0, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next(I)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_4

    .line 1273
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :cond_8
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->onReadEnd()V

    goto :goto_2

    .end local v1    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;>;"
    .end local v4    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "idx":I
    .end local v8    # "pubCnt":I
    .end local v9    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v10    # "start":I
    .end local v11    # "tbl":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :catchall_0
    move-exception v12

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->onReadEnd()V

    throw v12

    .restart local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .restart local v1    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;>;"
    .restart local v5    # "i":I
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "idx":I
    .restart local v8    # "pubCnt":I
    .restart local v9    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .restart local v10    # "start":I
    .restart local v11    # "tbl":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :cond_9
    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_5

    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_a
    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_3
.end method

.method rehash()V
    .locals 20

    .prologue
    .line 1061
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->hdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    .line 1063
    .local v13, "oldHdr":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->previous()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    move-result-object v17

    if-eqz v17, :cond_1

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->previous()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->hasReads()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1117
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->hdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id()I

    move-result v14

    .line 1068
    .local v14, "oldId":I
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->table()[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v15

    .line 1070
    .local v15, "oldTbl":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    array-length v12, v15

    .line 1072
    .local v12, "oldCap":I
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    if-ge v12, v0, :cond_0

    .line 1088
    new-instance v10, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    shl-int/lit8 v17, v12, 0x1

    add-int/lit8 v18, v14, 0x1

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v10, v0, v1, v13, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;-><init>(IILorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;)V

    .line 1090
    .local v10, "newHdr":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    invoke-virtual {v13, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->next(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;)V

    .line 1092
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->size(I)V

    .line 1094
    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->table()[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v11

    .line 1096
    .local v11, "newTbl":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    array-length v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->loadFactor:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->threshold:I

    .line 1098
    array-length v0, v11

    move/from16 v17, v0

    add-int/lit8 v16, v17, -0x1

    .line 1100
    .local v16, "sizeMask":I
    move-object v3, v15

    .local v3, "arr$":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v9, :cond_3

    aget-object v4, v3, v7

    .line 1102
    .local v4, "bin1":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    move-object v6, v4

    .local v6, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :goto_2
    if-eqz v6, :cond_2

    .line 1103
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hash()I

    move-result v17

    and-int v8, v17, v16

    .line 1105
    .local v8, "idx":I
    aget-object v5, v11, v8

    .line 1107
    .local v5, "bin2":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    aput-object v6, v11, v8

    .line 1109
    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next(ILorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)V

    .line 1102
    invoke-virtual {v6, v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next(I)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v6

    goto :goto_2

    .line 1100
    .end local v5    # "bin2":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v8    # "idx":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1113
    .end local v4    # "bin1":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v6    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :cond_3
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->hdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    goto :goto_0
.end method

.method remove(Ljava/lang/Object;ILorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p3, "filter":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;>;"
    const/4 v6, 0x0

    .line 1130
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->lock()V

    .line 1133
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->hdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    .line 1135
    .local v2, "hdr":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->table()[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v5

    .line 1137
    .local v5, "tbl":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    and-int v3, p2, v7

    .line 1139
    .local v3, "idx":I
    aget-object v0, v5, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    .local v0, "bin":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    if-nez v0, :cond_0

    .line 1182
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->unlock()V

    move-object v1, v6

    :goto_0
    return-object v1

    .line 1144
    :cond_0
    const/4 v4, 0x0

    .line 1145
    .local v4, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    move-object v1, v0

    .line 1147
    .local v1, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :goto_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->hash()I

    move-result v7

    if-ne v7, p2, :cond_1

    iget-object v7, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1148
    :cond_1
    move-object v4, v1

    .line 1150
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id()I

    move-result v7

    invoke-virtual {v1, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next(I)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v1

    goto :goto_1

    .line 1153
    :cond_2
    if-eqz v1, :cond_5

    .line 1154
    if-eqz p3, :cond_3

    invoke-interface {p3, v1}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_3

    .line 1182
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->unlock()V

    move-object v1, v6

    goto :goto_0

    .line 1157
    :cond_3
    if-nez v4, :cond_6

    .line 1158
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id()I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next(I)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v6

    aput-object v6, v5, v3

    .line 1163
    :goto_2
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1164
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->isInternal()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deleted()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1165
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->mapPubSize:Lorg/jsr166/LongAdder8;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->access$800(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)Lorg/jsr166/LongAdder8;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jsr166/LongAdder8;->decrement()V

    .line 1167
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->pubSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v6}, Lorg/jsr166/LongAdder8;->decrement()V

    .line 1169
    :cond_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1171
    :try_start_4
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->mapSize:Lorg/jsr166/LongAdder8;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->access$900(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)Lorg/jsr166/LongAdder8;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jsr166/LongAdder8;->decrement()V

    .line 1173
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->decrementSize()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1182
    :cond_5
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->unlock()V

    goto :goto_0

    .line 1160
    :cond_6
    :try_start_5
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id()I

    move-result v6

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id()I

    move-result v7

    invoke-virtual {v1, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next(I)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next(ILorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1179
    .end local v0    # "bin":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v1    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v2    # "hdr":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    .end local v3    # "idx":I
    .end local v4    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v5    # "tbl":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :catchall_0
    move-exception v6

    .line 1182
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->unlock()V

    throw v6

    .line 1169
    .restart local v0    # "bin":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .restart local v1    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .restart local v2    # "hdr":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    .restart local v3    # "idx":I
    .restart local v4    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .restart local v5    # "tbl":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :catchall_1
    move-exception v6

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method size()I
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->hdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->size()I

    move-result v0

    return v0
.end method
