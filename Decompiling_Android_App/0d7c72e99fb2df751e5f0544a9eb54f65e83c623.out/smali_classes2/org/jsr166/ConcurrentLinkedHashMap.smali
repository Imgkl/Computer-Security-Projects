.class public Lorg/jsr166/ConcurrentLinkedHashMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentLinkedHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsr166/ConcurrentLinkedHashMap$1;,
        Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;,
        Lorg/jsr166/ConcurrentLinkedHashMap$EntrySetDescending;,
        Lorg/jsr166/ConcurrentLinkedHashMap$EntrySet;,
        Lorg/jsr166/ConcurrentLinkedHashMap$AbstractEntrySet;,
        Lorg/jsr166/ConcurrentLinkedHashMap$ValuesDescending;,
        Lorg/jsr166/ConcurrentLinkedHashMap$Values;,
        Lorg/jsr166/ConcurrentLinkedHashMap$AbstractValues;,
        Lorg/jsr166/ConcurrentLinkedHashMap$KeySetDescending;,
        Lorg/jsr166/ConcurrentLinkedHashMap$KeySet;,
        Lorg/jsr166/ConcurrentLinkedHashMap$AbstractKeySet;,
        Lorg/jsr166/ConcurrentLinkedHashMap$EntryIterator;,
        Lorg/jsr166/ConcurrentLinkedHashMap$WriteThroughEntry;,
        Lorg/jsr166/ConcurrentLinkedHashMap$ValueIterator;,
        Lorg/jsr166/ConcurrentLinkedHashMap$KeyIterator;,
        Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;,
        Lorg/jsr166/ConcurrentLinkedHashMap$Segment;,
        Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_CONCUR_LVL:I = 0x10

.field public static final DFLT_INIT_CAP:I = 0x10

.field public static final DFLT_LOAD_FACTOR:F = 0.75f

.field public static final MAX_CAP_LIMIT:I = 0x40000000

.field public static final MAX_SEGS:I = 0x10000

.field public static final RETRIES_BEFORE_LOCK:I = 0x2


# instance fields
.field private descEntrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private descKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private descVals:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final entryQ:Lorg/jsr166/ConcurrentLinkedDeque8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8",
            "<",
            "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final maxCap:I

.field private final modCnt:Lorg/jsr166/LongAdder8;

.field private final qPlc:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

.field private final segmentMask:I

.field private final segmentShift:I

.field private final segments:[Lorg/jsr166/ConcurrentLinkedHashMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jsr166/ConcurrentLinkedHashMap",
            "<TK;TV;>.Segment<TK;TV;>;"
        }
    .end annotation
.end field

.field private final size:Lorg/jsr166/LongAdder8;

.field private vals:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-class v0, Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jsr166/ConcurrentLinkedHashMap;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    const/16 v1, 0x10

    .line 1136
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, v1, v0, v1}, Lorg/jsr166/ConcurrentLinkedHashMap;-><init>(IFI)V

    .line 1137
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initCap"    # I

    .prologue
    .line 1128
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Lorg/jsr166/ConcurrentLinkedHashMap;-><init>(IFI)V

    .line 1129
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "initCap"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 1115
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Lorg/jsr166/ConcurrentLinkedHashMap;-><init>(IFI)V

    .line 1116
    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 1
    .param p1, "initCap"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurLvl"    # I

    .prologue
    .line 1097
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jsr166/ConcurrentLinkedHashMap;-><init>(IFII)V

    .line 1098
    return-void
.end method

.method public constructor <init>(IFII)V
    .locals 6
    .param p1, "initCap"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurLvl"    # I
    .param p4, "maxCap"    # I

    .prologue
    .line 1076
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    sget-object v5, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->SINGLE_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jsr166/ConcurrentLinkedHashMap;-><init>(IFIILorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;)V

    .line 1077
    return-void
.end method

.method public constructor <init>(IFIILorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;)V
    .locals 7
    .param p1, "initCap"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurLvl"    # I
    .param p4, "maxCap"    # I
    .param p5, "qPlc"    # Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    .prologue
    .line 1013
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 180
    new-instance v5, Lorg/jsr166/LongAdder8;

    invoke-direct {v5}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v5, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->size:Lorg/jsr166/LongAdder8;

    .line 183
    new-instance v5, Lorg/jsr166/LongAdder8;

    invoke-direct {v5}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v5, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->modCnt:Lorg/jsr166/LongAdder8;

    .line 1014
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-lez v5, :cond_0

    if-ltz p1, :cond_0

    if-gtz p3, :cond_1

    .line 1015
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 1017
    :cond_1
    const/high16 v5, 0x10000

    if-le p3, v5, :cond_2

    .line 1018
    const/high16 p3, 0x10000

    .line 1020
    :cond_2
    iput p4, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->maxCap:I

    .line 1021
    iput-object p5, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->qPlc:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    .line 1023
    sget-object v5, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->SINGLE_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    if-ne p5, v5, :cond_3

    new-instance v5, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v5}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    :goto_0
    iput-object v5, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->entryQ:Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 1026
    const/4 v3, 0x0

    .line 1028
    .local v3, "sshift":I
    const/4 v4, 0x1

    .line 1030
    .local v4, "ssize":I
    :goto_1
    if-ge v4, p3, :cond_4

    .line 1031
    add-int/lit8 v3, v3, 0x1

    .line 1032
    shl-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1023
    .end local v3    # "sshift":I
    .end local v4    # "ssize":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 1035
    .restart local v3    # "sshift":I
    .restart local v4    # "ssize":I
    :cond_4
    rsub-int/lit8 v5, v3, 0x20

    iput v5, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->segmentShift:I

    .line 1037
    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->segmentMask:I

    .line 1039
    new-array v5, v4, [Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    iput-object v5, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->segments:[Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    .line 1041
    const/high16 v5, 0x40000000    # 2.0f

    if-le p1, v5, :cond_5

    .line 1042
    const/high16 p1, 0x40000000    # 2.0f

    .line 1044
    :cond_5
    div-int v0, p1, v4

    .line 1046
    .local v0, "c":I
    mul-int v5, v0, v4

    if-ge v5, p1, :cond_6

    .line 1047
    add-int/lit8 v0, v0, 0x1

    .line 1049
    :cond_6
    const/4 v1, 0x1

    .line 1051
    .local v1, "cap":I
    :goto_2
    if-ge v1, v0, :cond_7

    .line 1052
    shl-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1054
    :cond_7
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v5, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->segments:[Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    array-length v5, v5

    if-ge v2, v5, :cond_8

    .line 1055
    iget-object v5, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->segments:[Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    new-instance v6, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    invoke-direct {v6, p0, v1, p2}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;-><init>(Lorg/jsr166/ConcurrentLinkedHashMap;IF)V

    aput-object v6, v5, v2

    .line 1054
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1056
    :cond_8
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/16 v2, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    .line 1148
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lorg/jsr166/ConcurrentLinkedHashMap;-><init>(IFI)V

    .line 1151
    invoke-virtual {p0, p1}, Lorg/jsr166/ConcurrentLinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 1152
    return-void
.end method

.method static synthetic access$000(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;
    .locals 1
    .param p0, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->qPlc:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/jsr166/ConcurrentLinkedHashMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap;

    .prologue
    .line 96
    iget v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->maxCap:I

    return v0
.end method

.method static synthetic access$1100(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/ConcurrentLinkedDeque8;
    .locals 1
    .param p0, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->entryQ:Lorg/jsr166/ConcurrentLinkedDeque8;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/jsr166/ConcurrentLinkedHashMap;)V
    .locals 0
    .param p0, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap;

    .prologue
    .line 96
    invoke-direct {p0}, Lorg/jsr166/ConcurrentLinkedHashMap;->checkRemoveEldestEntry()V

    return-void
.end method

.method static synthetic access$600(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/LongAdder8;
    .locals 1
    .param p0, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->size:Lorg/jsr166/LongAdder8;

    return-object v0
.end method

.method static synthetic access$700(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/LongAdder8;
    .locals 1
    .param p0, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->modCnt:Lorg/jsr166/LongAdder8;

    return-object v0
.end method

.method static synthetic access$900(Lorg/jsr166/ConcurrentLinkedHashMap;Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Lorg/jsr166/ConcurrentLinkedDeque8;)V
    .locals 0
    .param p0, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap;
    .param p1, "x1"    # Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    .param p2, "x2"    # Lorg/jsr166/ConcurrentLinkedDeque8;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lorg/jsr166/ConcurrentLinkedHashMap;->recordInsert(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Lorg/jsr166/ConcurrentLinkedDeque8;)V

    return-void
.end method

.method private checkRemoveEldestEntry()V
    .locals 8

    .prologue
    .line 1745
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    sget-boolean v3, Lorg/jsr166/ConcurrentLinkedHashMap;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget v3, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->maxCap:I

    if-gtz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1746
    :cond_0
    sget-boolean v3, Lorg/jsr166/ConcurrentLinkedHashMap;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->qPlc:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    sget-object v4, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->SINGLE_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    if-eq v3, v4, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1748
    :cond_1
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap;->sizex()I

    move-result v2

    .line 1750
    .local v2, "sizex":I
    iget v1, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->maxCap:I

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1751
    iget-object v3, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->entryQ:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v3}, Lorg/jsr166/ConcurrentLinkedDeque8;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .line 1753
    .local v0, "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    if-eqz v0, :cond_2

    .line 1754
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->hash:I
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$200(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/jsr166/ConcurrentLinkedHashMap;->segmentFor(I)Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    move-result-object v3

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$300(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v4

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->hash:I
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$200(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)I

    move-result v5

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$100(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    .line 1758
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap;->sizex()I

    move-result v3

    iget v4, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->maxCap:I

    if-gt v3, v4, :cond_3

    .line 1761
    .end local v0    # "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_2
    return-void

    .line 1750
    .restart local v0    # "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static hash(I)I
    .locals 1
    .param p0, "h"    # I

    .prologue
    .line 207
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    .line 208
    const v0, -0x7a143595

    mul-int/2addr p0, v0

    .line 209
    ushr-int/lit8 v0, p0, 0xd

    xor-int/2addr p0, v0

    .line 210
    const v0, -0x3d4d51cb

    mul-int/2addr p0, v0

    .line 212
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method private recordInsert(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Lorg/jsr166/ConcurrentLinkedDeque8;)V
    .locals 1
    .param p1, "e"    # Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    .param p2, "q"    # Lorg/jsr166/ConcurrentLinkedDeque8;

    .prologue
    .line 1738
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    invoke-virtual {p2, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->addx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v0

    # setter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->node:Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    invoke-static {p1, v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$502(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 1739
    return-void
.end method

.method private segmentFor(I)Lorg/jsr166/ConcurrentLinkedHashMap$Segment;
    .locals 3
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/jsr166/ConcurrentLinkedHashMap",
            "<TK;TV;>.Segment<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->segments:[Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    iget v1, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 1550
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->segments:[Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    .local v0, "arr$":[Lorg/jsr166/ConcurrentLinkedHashMap$Segment;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1551
    .local v3, "segment":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    invoke-virtual {v3}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->clear()V

    .line 1550
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1552
    .end local v3    # "segment":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 1406
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/jsr166/ConcurrentLinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1315
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lorg/jsr166/ConcurrentLinkedHashMap;->hash(I)I

    move-result v0

    .line 1317
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->segmentFor(I)Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v1

    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 13
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 1333
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 1334
    new-instance v11, Ljava/lang/NullPointerException;

    invoke-direct {v11}, Ljava/lang/NullPointerException;-><init>()V

    throw v11

    .line 1338
    :cond_0
    iget-object v10, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->segments:[Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    .line 1339
    .local v10, "segments":[Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "[Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    array-length v11, v10

    new-array v7, v11, [I

    .line 1342
    .local v7, "mc":[I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_0
    const/4 v11, 0x2

    if-ge v5, v11, :cond_7

    .line 1343
    const/4 v8, 0x0

    .line 1345
    .local v8, "mcsum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v11, v10

    if-ge v3, v11, :cond_3

    .line 1346
    aget-object v11, v10, v3

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->modCnt:I
    invoke-static {v11}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->access$1400(Lorg/jsr166/ConcurrentLinkedHashMap$Segment;)I

    move-result v11

    aput v11, v7, v3

    add-int/2addr v8, v11

    .line 1348
    aget-object v11, v10, v3

    invoke-virtual {v11, p1}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->containsValue(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1349
    const/4 v2, 0x1

    .line 1387
    .end local v3    # "i":I
    .end local v8    # "mcsum":I
    :cond_1
    :goto_2
    return v2

    .line 1345
    .restart local v3    # "i":I
    .restart local v8    # "mcsum":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1352
    :cond_3
    const/4 v1, 0x1

    .line 1354
    .local v1, "cleanSweep":Z
    if-eqz v8, :cond_4

    .line 1355
    const/4 v3, 0x0

    :goto_3
    array-length v11, v10

    if-ge v3, v11, :cond_4

    .line 1356
    aget v11, v7, v3

    aget-object v12, v10, v3

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->modCnt:I
    invoke-static {v12}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->access$1400(Lorg/jsr166/ConcurrentLinkedHashMap$Segment;)I

    move-result v12

    if-eq v11, v12, :cond_5

    .line 1357
    const/4 v1, 0x0

    .line 1364
    :cond_4
    if-eqz v1, :cond_6

    .line 1365
    const/4 v2, 0x0

    goto :goto_2

    .line 1355
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1342
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1369
    .end local v1    # "cleanSweep":Z
    .end local v3    # "i":I
    .end local v8    # "mcsum":I
    :cond_7
    move-object v0, v10

    .local v0, "arr$":[Lorg/jsr166/ConcurrentLinkedHashMap$Segment;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_4
    if-ge v4, v6, :cond_8

    aget-object v9, v0, v4

    .line 1370
    .local v9, "segment":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    invoke-virtual {v9}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1369
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1372
    .end local v9    # "segment":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    :cond_8
    const/4 v2, 0x0

    .line 1375
    .local v2, "found":Z
    move-object v0, v10

    :try_start_0
    array-length v6, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v6, :cond_9

    aget-object v9, v0, v4

    .line 1376
    .restart local v9    # "segment":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    invoke-virtual {v9, p1}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-eqz v11, :cond_a

    .line 1377
    const/4 v2, 0x1

    .line 1383
    .end local v9    # "segment":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    :cond_9
    move-object v0, v10

    array-length v6, v0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v6, :cond_1

    aget-object v9, v0, v4

    .line 1384
    .restart local v9    # "segment":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    invoke-virtual {v9}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1383
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1375
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1383
    .end local v9    # "segment":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    :catchall_0
    move-exception v11

    move-object v0, v10

    array-length v6, v0

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v6, :cond_b

    aget-object v9, v0, v4

    .line 1384
    .restart local v9    # "segment":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    invoke-virtual {v9}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1383
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .end local v9    # "segment":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    :cond_b
    throw v11
.end method

.method public descendingElements()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1726
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    new-instance v0, Lorg/jsr166/ConcurrentLinkedHashMap$ValueIterator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/jsr166/ConcurrentLinkedHashMap$ValueIterator;-><init>(Lorg/jsr166/ConcurrentLinkedHashMap;ZLorg/jsr166/ConcurrentLinkedHashMap$1;)V

    return-object v0
.end method

.method public descendingEntrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1684
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->descEntrySet:Ljava/util/Set;

    .line 1686
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    return-object v0

    .restart local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    new-instance v0, Lorg/jsr166/ConcurrentLinkedHashMap$EntrySetDescending;

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jsr166/ConcurrentLinkedHashMap$EntrySetDescending;-><init>(Lorg/jsr166/ConcurrentLinkedHashMap;Lorg/jsr166/ConcurrentLinkedHashMap$1;)V

    iput-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->descEntrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public descendingKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1594
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->descKeySet:Ljava/util/Set;

    .line 1596
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :goto_0
    return-object v0

    .restart local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_0
    new-instance v0, Lorg/jsr166/ConcurrentLinkedHashMap$KeySetDescending;

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jsr166/ConcurrentLinkedHashMap$KeySetDescending;-><init>(Lorg/jsr166/ConcurrentLinkedHashMap;Lorg/jsr166/ConcurrentLinkedHashMap$1;)V

    iput-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->descKeySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public descendingKeys()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1706
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    new-instance v0, Lorg/jsr166/ConcurrentLinkedHashMap$KeyIterator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/jsr166/ConcurrentLinkedHashMap$KeyIterator;-><init>(Lorg/jsr166/ConcurrentLinkedHashMap;ZLorg/jsr166/ConcurrentLinkedHashMap$1;)V

    return-object v0
.end method

.method public descendingValues()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1639
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->descVals:Ljava/util/Collection;

    .line 1641
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    new-instance v0, Lorg/jsr166/ConcurrentLinkedHashMap$ValuesDescending;

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jsr166/ConcurrentLinkedHashMap$ValuesDescending;-><init>(Lorg/jsr166/ConcurrentLinkedHashMap;Lorg/jsr166/ConcurrentLinkedHashMap$1;)V

    iput-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->descVals:Ljava/util/Collection;

    goto :goto_0
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1716
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    new-instance v0, Lorg/jsr166/ConcurrentLinkedHashMap$ValueIterator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/jsr166/ConcurrentLinkedHashMap$ValueIterator;-><init>(Lorg/jsr166/ConcurrentLinkedHashMap;ZLorg/jsr166/ConcurrentLinkedHashMap$1;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1661
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->entrySet:Ljava/util/Set;

    .line 1663
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    return-object v0

    .restart local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    new-instance v0, Lorg/jsr166/ConcurrentLinkedHashMap$EntrySet;

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jsr166/ConcurrentLinkedHashMap$EntrySet;-><init>(Lorg/jsr166/ConcurrentLinkedHashMap;Lorg/jsr166/ConcurrentLinkedHashMap$1;)V

    iput-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1280
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lorg/jsr166/ConcurrentLinkedHashMap;->hash(I)I

    move-result v0

    .line 1282
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->segmentFor(I)Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getSafe(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1300
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lorg/jsr166/ConcurrentLinkedHashMap;->hash(I)I

    move-result v0

    .line 1302
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->segmentFor(I)Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->getSafe(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 7

    .prologue
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 1160
    iget-object v3, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->segments:[Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    .line 1170
    .local v3, "segments":[Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "[Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    array-length v5, v3

    new-array v1, v5, [I

    .line 1171
    .local v1, "mc":[I
    const/4 v2, 0x0

    .line 1173
    .local v2, "mcsum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 1174
    aget-object v5, v3, v0

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->cnt:I
    invoke-static {v5}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->access$1300(Lorg/jsr166/ConcurrentLinkedHashMap$Segment;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 1191
    :cond_0
    :goto_1
    return v4

    .line 1177
    :cond_1
    aget-object v5, v3, v0

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->modCnt:I
    invoke-static {v5}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->access$1400(Lorg/jsr166/ConcurrentLinkedHashMap$Segment;)I

    move-result v5

    aput v5, v1, v0

    add-int/2addr v2, v5

    .line 1173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1183
    :cond_2
    if-eqz v2, :cond_3

    .line 1184
    const/4 v0, 0x0

    :goto_2
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 1185
    aget-object v5, v3, v0

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->cnt:I
    invoke-static {v5}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->access$1300(Lorg/jsr166/ConcurrentLinkedHashMap$Segment;)I

    move-result v5

    if-nez v5, :cond_0

    aget v5, v1, v0

    aget-object v6, v3, v0

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->modCnt:I
    invoke-static {v6}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->access$1400(Lorg/jsr166/ConcurrentLinkedHashMap$Segment;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1184
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1191
    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public isEmptyx()Z
    .locals 1

    .prologue
    .line 1265
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap;->sizex()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1571
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->keySet:Ljava/util/Set;

    .line 1573
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :goto_0
    return-object v0

    .restart local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_0
    new-instance v0, Lorg/jsr166/ConcurrentLinkedHashMap$KeySet;

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jsr166/ConcurrentLinkedHashMap$KeySet;-><init>(Lorg/jsr166/ConcurrentLinkedHashMap;Lorg/jsr166/ConcurrentLinkedHashMap$1;)V

    iput-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1696
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    new-instance v0, Lorg/jsr166/ConcurrentLinkedHashMap$KeyIterator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/jsr166/ConcurrentLinkedHashMap$KeyIterator;-><init>(Lorg/jsr166/ConcurrentLinkedHashMap;ZLorg/jsr166/ConcurrentLinkedHashMap$1;)V

    return-object v0
.end method

.method public policy()Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;
    .locals 1

    .prologue
    .line 1776
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->qPlc:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1423
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_0

    .line 1424
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1426
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lorg/jsr166/ConcurrentLinkedHashMap;->hash(I)I

    move-result v0

    .line 1428
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->segmentFor(I)Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1455
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1456
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/jsr166/ConcurrentLinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1457
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1439
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_0

    .line 1440
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1442
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lorg/jsr166/ConcurrentLinkedHashMap;->hash(I)I

    move-result v0

    .line 1444
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->segmentFor(I)Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public queue()Lorg/jsr166/ConcurrentLinkedDeque8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsr166/ConcurrentLinkedDeque8",
            "<",
            "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1769
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->entryQ:Lorg/jsr166/ConcurrentLinkedDeque8;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1469
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lorg/jsr166/ConcurrentLinkedHashMap;->hash(I)I

    move-result v0

    .line 1471
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->segmentFor(I)Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v0, v2, v3}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    const/4 v1, 0x1

    .line 1481
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lorg/jsr166/ConcurrentLinkedHashMap;->hash(I)I

    move-result v0

    .line 1483
    .local v0, "hash":I
    if-eqz p2, :cond_0

    invoke-direct {p0, v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->segmentFor(I)Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    move-result-object v2

    invoke-virtual {v2, p1, v0, p2, v1}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1538
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_0

    .line 1539
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1541
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lorg/jsr166/ConcurrentLinkedHashMap;->hash(I)I

    move-result v0

    .line 1543
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->segmentFor(I)Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 1493
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1494
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1496
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lorg/jsr166/ConcurrentLinkedHashMap;->hash(I)I

    move-result v0

    .line 1498
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->segmentFor(I)Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public replacex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1521
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1522
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1524
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lorg/jsr166/ConcurrentLinkedHashMap;->hash(I)I

    move-result v0

    .line 1526
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->segmentFor(I)Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->replacex(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public size()I
    .locals 18

    .prologue
    .line 1203
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jsr166/ConcurrentLinkedHashMap;->segments:[Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    .line 1204
    .local v12, "segments":[Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "[Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    const-wide/16 v14, 0x0

    .line 1205
    .local v14, "sum":J
    const-wide/16 v4, 0x0

    .line 1206
    .local v4, "check":J
    array-length v13, v12

    new-array v9, v13, [I

    .line 1210
    .local v9, "mc":[I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_0
    const/4 v13, 0x2

    if-ge v7, v13, :cond_2

    .line 1211
    const-wide/16 v4, 0x0

    .line 1212
    const-wide/16 v14, 0x0

    .line 1213
    const/4 v10, 0x0

    .line 1215
    .local v10, "mcsum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v13, v12

    if-ge v3, v13, :cond_0

    .line 1216
    aget-object v13, v12, v3

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->cnt:I
    invoke-static {v13}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->access$1300(Lorg/jsr166/ConcurrentLinkedHashMap$Segment;)I

    move-result v13

    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    .line 1217
    aget-object v13, v12, v3

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->modCnt:I
    invoke-static {v13}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->access$1400(Lorg/jsr166/ConcurrentLinkedHashMap$Segment;)I

    move-result v13

    aput v13, v9, v3

    add-int/2addr v10, v13

    .line 1215
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1220
    :cond_0
    if-eqz v10, :cond_1

    .line 1221
    const/4 v3, 0x0

    :goto_2
    array-length v13, v12

    if-ge v3, v13, :cond_1

    .line 1222
    aget-object v13, v12, v3

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->cnt:I
    invoke-static {v13}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->access$1300(Lorg/jsr166/ConcurrentLinkedHashMap$Segment;)I

    move-result v13

    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v4, v4, v16

    .line 1224
    aget v13, v9, v3

    aget-object v16, v12, v3

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->modCnt:I
    invoke-static/range {v16 .. v16}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->access$1400(Lorg/jsr166/ConcurrentLinkedHashMap$Segment;)I

    move-result v16

    move/from16 v0, v16

    if-eq v13, v0, :cond_3

    .line 1225
    const-wide/16 v4, -0x1

    .line 1232
    :cond_1
    cmp-long v13, v4, v14

    if-nez v13, :cond_4

    .line 1236
    .end local v3    # "i":I
    .end local v10    # "mcsum":I
    :cond_2
    cmp-long v13, v4, v14

    if-eqz v13, :cond_7

    .line 1237
    const-wide/16 v14, 0x0

    .line 1239
    move-object v2, v12

    .local v2, "arr$":[Lorg/jsr166/ConcurrentLinkedHashMap$Segment;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v8, :cond_5

    aget-object v11, v2, v6

    .line 1240
    .local v11, "segment":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    invoke-virtual {v11}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1239
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1221
    .end local v2    # "arr$":[Lorg/jsr166/ConcurrentLinkedHashMap$Segment;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v11    # "segment":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    .restart local v3    # "i":I
    .restart local v10    # "mcsum":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1210
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1242
    .end local v3    # "i":I
    .end local v10    # "mcsum":I
    .restart local v2    # "arr$":[Lorg/jsr166/ConcurrentLinkedHashMap$Segment;
    .restart local v6    # "i$":I
    .restart local v8    # "len$":I
    :cond_5
    move-object v2, v12

    array-length v8, v2

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v8, :cond_6

    aget-object v11, v2, v6

    .line 1243
    .restart local v11    # "segment":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->cnt:I
    invoke-static {v11}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->access$1300(Lorg/jsr166/ConcurrentLinkedHashMap$Segment;)I

    move-result v13

    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    .line 1242
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1245
    .end local v11    # "segment":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    :cond_6
    move-object v2, v12

    array-length v8, v2

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v8, :cond_7

    aget-object v11, v2, v6

    .line 1246
    .restart local v11    # "segment":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    invoke-virtual {v11}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1245
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1249
    .end local v2    # "arr$":[Lorg/jsr166/ConcurrentLinkedHashMap$Segment;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v11    # "segment":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    :cond_7
    const-wide/32 v16, 0x7fffffff

    cmp-long v13, v14, v16

    if-lez v13, :cond_8

    const v13, 0x7fffffff

    :goto_6
    return v13

    :cond_8
    long-to-int v13, v14

    goto :goto_6
.end method

.method public sizex()I
    .locals 2

    .prologue
    .line 1256
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    iget-object v1, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->size:Lorg/jsr166/LongAdder8;

    invoke-virtual {v1}, Lorg/jsr166/LongAdder8;->intValue()I

    move-result v0

    .line 1258
    .local v0, "i":I
    if-lez v0, :cond_0

    .end local v0    # "i":I
    :goto_0
    return v0

    .restart local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1616
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->vals:Ljava/util/Collection;

    .line 1618
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    new-instance v0, Lorg/jsr166/ConcurrentLinkedHashMap$Values;

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jsr166/ConcurrentLinkedHashMap$Values;-><init>(Lorg/jsr166/ConcurrentLinkedHashMap;Lorg/jsr166/ConcurrentLinkedHashMap$1;)V

    iput-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap;->vals:Ljava/util/Collection;

    goto :goto_0
.end method
