.class Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;
.super Ljava/lang/Object;
.source "GridCacheConcurrentMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Iterator0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private cur:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

.field private curSegHdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

.field private curTbl:[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

.field private curVal:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field private id:I

.field private isVal:Z

.field private map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

.field private next:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

.field private nextEntry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

.field private nextSegIdx:I

.field private nextTblIdx:I

.field private nextVal:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private totalCnt:I

.field private final weakRef:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1522
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1577
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1578
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->weakRef:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;

    .line 1579
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;II)V
    .locals 2
    .param p1, "map"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .param p2, "isVal"    # Z
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p4, "id"    # I
    .param p5, "totalCnt"    # I

    .prologue
    .line 1590
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1591
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 1592
    iput-boolean p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->isVal:Z

    .line 1593
    iput p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->id:I

    .line 1594
    iput p5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->totalCnt:I

    .line 1596
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    .line 1598
    iget-object v0, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 1600
    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segs:[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->access$1100(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->nextSegIdx:I

    .line 1601
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->nextTblIdx:I

    .line 1603
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->iteratorQueue()Ljava/lang/ref/ReferenceQueue;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->access$1200(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->weakRef:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;

    .line 1605
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->advance()V

    .line 1607
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->curSegHdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    if-eqz v0, :cond_0

    .line 1608
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->weakRef:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->curSegHdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->addWeakIterator(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;)V
    invoke-static {p1, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->access$1300(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;)V

    .line 1609
    :cond_0
    return-void
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    .prologue
    .line 1522
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method private advance()V
    .locals 8

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0<TK;TV;>;"
    const/4 v7, 0x0

    .line 1616
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->nextEntry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->nextEntry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->advanceInBucket(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1654
    :cond_0
    :goto_0
    return-void

    .line 1619
    :cond_1
    iget v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->nextTblIdx:I

    if-ltz v4, :cond_2

    .line 1620
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->curTbl:[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    iget v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->nextTblIdx:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->nextTblIdx:I

    aget-object v0, v4, v5

    .line 1622
    .local v0, "bucket":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    if-eqz v0, :cond_1

    invoke-direct {p0, v0, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->advanceInBucket(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 1626
    .end local v0    # "bucket":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :cond_2
    iget v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->nextSegIdx:I

    if-ltz v4, :cond_0

    .line 1627
    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->nextSegIdx:I

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->nextSegIdx:I

    .line 1629
    .local v2, "nextSegIdx0":I
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->segs:[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->access$1100(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)[Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;

    move-result-object v4

    aget-object v3, v4, v2

    .line 1631
    .local v3, "seg":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->size()I

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->id:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    iget v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->totalCnt:I

    rem-int v4, v2, v4

    iget v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->id:I

    if-ne v4, v5, :cond_2

    .line 1632
    :cond_3
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->curSegHdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    if-eqz v4, :cond_4

    .line 1633
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->curSegHdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->onReadEnd()V

    .line 1635
    :cond_4
    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->headerForRead()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;->access$1400(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Segment;)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->curSegHdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    .line 1637
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->$assertionsDisabled:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->curSegHdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1639
    :cond_5
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->weakRef:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->curSegHdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->addWeakIterator(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;)V
    invoke-static {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->access$1300(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;)V

    .line 1641
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->curSegHdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->table()[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->curTbl:[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .line 1643
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->curTbl:[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_2

    .line 1644
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->curTbl:[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    aget-object v0, v4, v1

    .line 1646
    .restart local v0    # "bucket":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    if-eqz v0, :cond_6

    invoke-direct {p0, v0, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->advanceInBucket(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1647
    add-int/lit8 v4, v1, -0x1

    iput v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->nextTblIdx:I

    goto/16 :goto_0

    .line 1643
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private advanceInBucket(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;Z)Z
    .locals 4
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "skipFirst"    # Z

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0<TK;TV;>;"
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 1663
    if-nez p1, :cond_0

    .line 1696
    :goto_0
    return v0

    .line 1666
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->nextEntry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .line 1669
    :cond_1
    if-nez p2, :cond_5

    .line 1670
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->nextEntry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->next:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .line 1673
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->next:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->visitable([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1689
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->nextEntry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->curSegHdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next(I)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->nextEntry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    if-nez v1, :cond_1

    .line 1691
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->$assertionsDisabled:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->nextEntry:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    if-eqz v1, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1676
    :cond_3
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->isVal:Z

    if-eqz v1, :cond_4

    .line 1677
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->next:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->wrap()Ljavax/cache/Cache$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->nextVal:Ljava/lang/Object;

    .line 1679
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->nextVal:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 1683
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 1687
    :cond_5
    const/4 p2, 0x0

    goto :goto_1

    .line 1693
    :cond_6
    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->next:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .line 1694
    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->nextVal:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public currentValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1718
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->curVal:Ljava/lang/Object;

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    .line 1701
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->next:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->isVal:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->nextVal:Ljava/lang/Object;

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1703
    .local v0, "hasNext":Z
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->curSegHdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    if-eqz v1, :cond_1

    .line 1704
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->curSegHdr:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->onReadEnd()V

    .line 1706
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->weakRef:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;->clear()V

    .line 1708
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->weakRef:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$WeakIterator;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->removeWeakIterator(Ljava/lang/ref/Reference;)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    invoke-static {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->access$1500(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;Ljava/lang/ref/Reference;)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    .line 1711
    :cond_1
    return v0

    .line 1701
    .end local v0    # "hasNext":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1522
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->next()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .locals 3

    .prologue
    .line 1724
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->next:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .line 1725
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->nextVal:Ljava/lang/Object;

    .line 1727
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    .line 1728
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 1730
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->advance()V

    .line 1732
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->cur:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .line 1733
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->curVal:Ljava/lang/Object;

    .line 1735
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->cur:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    return-object v2
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
    .line 1768
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0<TK;TV;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 1769
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 1770
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->isVal:Z

    .line 1771
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->id:I

    .line 1772
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->totalCnt:I

    .line 1773
    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1782
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->isVal:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iget v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->id:I

    iget v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->totalCnt:I

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;II)V

    return-object v0
.end method

.method public remove()V
    .locals 5

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0<TK;TV;>;"
    const/4 v3, 0x0

    .line 1740
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->cur:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    if-nez v2, :cond_0

    .line 1741
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 1743
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->cur:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .line 1745
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->cur:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .line 1746
    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->curVal:Ljava/lang/Object;

    .line 1749
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgniteKernal;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/IgniteKernal;->getCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCache;->remove(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1754
    return-void

    .line 1751
    :catch_0
    move-exception v1

    .line 1752
    .local v1, "ex":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Lorg/apache/ignite/IgniteException;

    invoke-direct {v2, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v2
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
    .line 1758
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1759
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1760
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->isVal:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 1761
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->id:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1762
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->totalCnt:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1763
    return-void
.end method
