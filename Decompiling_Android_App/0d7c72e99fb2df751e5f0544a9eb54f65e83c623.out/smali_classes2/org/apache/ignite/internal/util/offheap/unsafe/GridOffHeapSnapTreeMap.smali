.class public Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
.super Ljava/util/AbstractMap;
.source "GridOffHeapSnapTreeMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentNavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;,
        Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;,
        Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeySet;,
        Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;,
        Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyIter;,
        Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntryIter;,
        Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;,
        Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;,
        Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;,
        Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$Entree;,
        Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;",
        "V::",
        "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentNavigableMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final HEIGHT:I = 0x30

.field static final KEY:I = 0x0

.field static final LEFT:I = 0x10

.field static final LONGS_IN_NODE:I = 0x7

.field private static final Left:C = 'L'

.field static final NODE_SIZE:I = 0x38

.field private static final NothingRequired:I = -0x3

.field static final PARENT:I = 0x28

.field static final RIGHT:I = 0x18

.field private static final RebalanceRequired:I = -0x2

.field private static final Right:C = 'R'

.field static final SHRINK_OVL:I = 0x20

.field private static final SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

.field private static final SpinCount:I

.field private static final UnlinkRequired:I = -0x1

.field private static final UnlinkedOVL:J = 0x2L

.field private static final UpdateAlways:I = 0x0

.field private static final UpdateIfAbsent:I = 0x1

.field private static final UpdateIfEq:I = 0x3

.field private static final UpdateIfPresent:I = 0x2

.field static final V_OPT:I = 0x8

.field private static final YieldCount:I

.field static final scale:I = 0x8


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field protected final guard:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;

.field private volatile transient holderRef:J

.field private final keyFactory:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final lock:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

.field protected final mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

.field private volatile recycleBin:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap",
            "<TK;TV;>.StoppableRecycleQueue;"
        }
    .end annotation
.end field

.field private size:Ljava/util/concurrent/atomic/AtomicInteger;

.field private snapshotId:Ljava/lang/Long;

.field private final snapshots:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;",
            ">;"
        }
    .end annotation
.end field

.field private final snapshotsCnt:Ljava/util/concurrent/atomic/AtomicLong;

.field private final valFactory:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    .line 98
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .line 113
    const-string v0, "snaptree.spin"

    const-string v1, "100"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpinCount:I

    .line 116
    const-string v0, "snaptree.yield"

    const-string v1, "0"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->YieldCount:I

    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;)V
    .locals 6
    .param p1, "keyFactory"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory;
    .param p2, "valFactory"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory;
    .param p3, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    .param p4, "guard"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;

    .prologue
    .line 1043
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;Ljava/util/Comparator;)V

    .line 1044
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;Ljava/util/Comparator;)V
    .locals 2
    .param p1, "keyFactory"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory;
    .param p2, "valFactory"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory;
    .param p3, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    .param p4, "guard"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory;",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory;",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 1054
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p5, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1020
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lock:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    .line 1023
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->snapshotsCnt:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1026
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->snapshots:Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 1030
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->snapshotId:Ljava/lang/Long;

    .line 1284
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->size:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1055
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1056
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1057
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1058
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1060
    :cond_3
    iput-object p5, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparator:Ljava/util/Comparator;

    .line 1061
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->keyFactory:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory;

    .line 1062
    iput-object p2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->valFactory:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory;

    .line 1063
    iput-object p3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .line 1064
    iput-object p4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->guard:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;

    .line 1065
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->rootHolder()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->holderRef:J

    .line 1066
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p1, "x1"    # J

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p1, "x1"    # J

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOpt(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->getImpl(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .param p4, "x4"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->update(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    .prologue
    .line 95
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->holderRef:J

    return-wide v0
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;J)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p1, "x1"    # J

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p1, "x1"    # Ljava/lang/Comparable;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/Comparable;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # C

    .prologue
    .line 95
    invoke-direct/range {p0 .. p6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;J)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p1, "x1"    # J

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOptIsNull(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;JC)J
    .locals 3
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p1, "x1"    # J
    .param p3, "x2"    # C

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->child(JC)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;JJ)V
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->writeLink(JJ)V

    return-void
.end method

.method static synthetic access$2200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;JLjava/lang/Comparable;ZLjava/lang/Comparable;Z)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/Comparable;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Ljava/lang/Comparable;
    .param p6, "x5"    # Z

    .prologue
    .line 95
    invoke-direct/range {p0 .. p6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->computeFrozenSize(JLjava/lang/Comparable;ZLjava/lang/Comparable;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;J)J
    .locals 3
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p1, "x1"    # J

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->readLink(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3300(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZC)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p1, "x1"    # Ljava/lang/Comparable;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/Comparable;
    .param p4, "x4"    # Z
    .param p5, "x5"    # C

    .prologue
    .line 95
    invoke-direct/range {p0 .. p5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtremeKeyOrThrow(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZC)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;)Ljava/util/Comparator;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method private attemptExtreme(ZCJJ)Ljava/lang/Object;
    .locals 9
    .param p1, "returnKey"    # Z
    .param p2, "dir"    # C
    .param p3, "node"    # J
    .param p5, "nodeOVL"    # J

    .prologue
    .line 1543
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    :cond_0
    invoke-direct {p0, p3, p4, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->child(JC)J

    move-result-wide v4

    .line 1545
    .local v4, "child":J
    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-nez v1, :cond_4

    .line 1549
    invoke-direct {p0, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOpt(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v8

    .line 1551
    .local v8, "vo":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    invoke-direct {p0, p3, p4, p5, p6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isOutdatedOVL(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1552
    sget-object v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .line 1586
    .end local v8    # "vo":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    :goto_0
    return-object v1

    .line 1555
    .restart local v8    # "vo":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez v8, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1557
    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {p0, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v2

    invoke-direct {v1, v2, v8}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1561
    .end local v8    # "vo":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    :cond_4
    invoke-direct {p0, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v6

    .line 1563
    .local v6, "childOVL":J
    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1564
    invoke-direct {p0, v4, v5, v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->waitUntilShrinkCompleted(JJ)V

    .line 1566
    invoke-direct {p0, p3, p4, p5, p6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isOutdatedOVL(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1567
    sget-object v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    goto :goto_0

    .line 1571
    :cond_5
    invoke-direct {p0, p3, p4, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->child(JC)J

    move-result-wide v2

    cmp-long v1, v4, v2

    if-eqz v1, :cond_6

    .line 1573
    invoke-direct {p0, p3, p4, p5, p6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isOutdatedOVL(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1574
    sget-object v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    goto :goto_0

    .line 1579
    :cond_6
    invoke-direct {p0, p3, p4, p5, p6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isOutdatedOVL(JJ)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1580
    sget-object v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    goto :goto_0

    :cond_7
    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 1583
    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->attemptExtreme(ZCJJ)Ljava/lang/Object;

    move-result-object v0

    .line 1585
    .local v0, "vo":Ljava/lang/Object;
    sget-object v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    if-eq v0, v1, :cond_0

    move-object v1, v0

    .line 1586
    goto :goto_0
.end method

.method private attemptGet(Ljava/lang/Comparable;JCJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 12
    .param p2, "node"    # J
    .param p4, "dirToC"    # C
    .param p5, "nodeOVL"    # J
    .param p7, "unlinked"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<-TK;>;JCJ",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;",
            ")",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;"
        }
    .end annotation

    .prologue
    .line 1406
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_0
    move/from16 v0, p4

    move-object/from16 v1, p7

    invoke-direct {p0, p2, p3, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->unsharedChild(JCLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide v4

    .line 1408
    .local v4, "child":J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_2

    .line 1409
    move-wide/from16 v0, p5

    invoke-direct {p0, p2, p3, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isOutdatedOVL(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1410
    sget-object v11, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .line 1459
    :goto_0
    return-object v11

    .line 1416
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 1419
    :cond_2
    invoke-direct {p0, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v10

    .line 1421
    .local v10, "childCmp":I
    if-nez v10, :cond_3

    .line 1423
    invoke-direct {p0, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOpt(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v11

    goto :goto_0

    .line 1427
    :cond_3
    invoke-direct {p0, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v7

    .line 1429
    .local v7, "childOVL":J
    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1430
    invoke-direct {p0, v4, v5, v7, v8}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->waitUntilShrinkCompleted(JJ)V

    .line 1432
    move-wide/from16 v0, p5

    invoke-direct {p0, p2, p3, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isOutdatedOVL(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1433
    sget-object v11, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    goto :goto_0

    .line 1437
    :cond_4
    move/from16 v0, p4

    invoke-direct {p0, p2, p3, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->child(JC)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_5

    .line 1439
    move-wide/from16 v0, p5

    invoke-direct {p0, p2, p3, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isOutdatedOVL(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1440
    sget-object v11, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    goto :goto_0

    .line 1445
    :cond_5
    move-wide/from16 v0, p5

    invoke-direct {p0, p2, p3, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isOutdatedOVL(JJ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1446
    sget-object v11, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    goto :goto_0

    .line 1456
    :cond_6
    if-gez v10, :cond_7

    const/16 v6, 0x4c

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->attemptGet(Ljava/lang/Comparable;JCJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v11

    .line 1458
    .local v11, "vo":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    sget-object v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    if-eq v11, v2, :cond_0

    goto :goto_0

    .line 1456
    .end local v11    # "vo":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    :cond_7
    const/16 v6, 0x52

    goto :goto_1
.end method

.method private attemptInsertIntoEmpty(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;J)Z
    .locals 11
    .param p3, "holder"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)Z"
        }
    .end annotation

    .prologue
    .line 2038
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    .local p2, "vOpt":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lock:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->lock(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;

    move-result-object v10

    .line 2041
    .local v10, "l":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :try_start_0
    invoke-virtual {p0, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 2042
    const/4 v2, 0x1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->newNode(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;JJJ)J

    move-result-wide v0

    invoke-virtual {p0, p3, p4, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(JJ)V

    .line 2044
    const/4 v0, 0x2

    invoke-direct {p0, p3, p4, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2046
    const/4 v0, 0x1

    .line 2053
    if-eqz v10, :cond_0

    .line 2054
    invoke-virtual {v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    :cond_0
    :goto_0
    return v0

    .line 2049
    :cond_1
    const/4 v0, 0x0

    .line 2053
    if-eqz v10, :cond_0

    .line 2054
    invoke-virtual {v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto :goto_0

    .line 2053
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_2

    .line 2054
    invoke-virtual {v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    :cond_2
    throw v0
.end method

.method private attemptNodeUpdate(ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;JJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Ljava/lang/Object;
    .locals 16
    .param p1, "func"    # I
    .param p4, "parent"    # J
    .param p6, "node"    # J
    .param p8, "unlinked"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;TV;JJ",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 2219
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p2, "expected":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    .local p3, "newValue":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    if-nez p3, :cond_1

    .line 2221
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOptIsNull(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2223
    const/4 v5, 0x0

    .line 2309
    :cond_0
    :goto_0
    return-object v5

    .line 2227
    :cond_1
    if-nez p3, :cond_13

    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_13

    .line 2232
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lock:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->lock(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;

    move-result-object v14

    .line 2235
    .local v14, "pl":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :try_start_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isUnlinked(J)Z

    move-result v5

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(J)J

    move-result-wide v6

    cmp-long v5, v6, p4

    if-eqz v5, :cond_4

    .line 2236
    :cond_3
    sget-object v5, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2271
    if-eqz v14, :cond_0

    .line 2272
    invoke-virtual {v14}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto :goto_0

    .line 2239
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lock:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->lock(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v11

    .line 2242
    .local v11, "nl":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :try_start_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isUnlinked(J)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2243
    sget-object v5, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2263
    if-eqz v11, :cond_5

    .line 2264
    :try_start_3
    invoke-virtual {v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2271
    :cond_5
    if-eqz v14, :cond_0

    .line 2272
    invoke-virtual {v14}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto :goto_0

    .line 2246
    :cond_6
    :try_start_4
    sget-boolean v5, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(J)J

    move-result-wide v6

    cmp-long v5, v6, p4

    if-nez v5, :cond_7

    const-wide/16 v6, 0x0

    cmp-long v5, p4, v6

    if-gtz v5, :cond_a

    :cond_7
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2263
    :catchall_0
    move-exception v5

    if-eqz v11, :cond_8

    .line 2264
    :try_start_5
    invoke-virtual {v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    :cond_8
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2271
    .end local v11    # "nl":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :catchall_1
    move-exception v5

    if-eqz v14, :cond_9

    .line 2272
    invoke-virtual {v14}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    :cond_9
    throw v5

    .line 2248
    .restart local v11    # "nl":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :cond_a
    :try_start_6
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOpt(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v15

    .line 2250
    .local v15, "prev":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v15, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shouldUpdate(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 2251
    move/from16 v0, p1

    invoke-static {v0, v15}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->noUpdateResult(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v5

    .line 2263
    if-eqz v11, :cond_b

    .line 2264
    :try_start_7
    invoke-virtual {v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2271
    :cond_b
    if-eqz v14, :cond_0

    .line 2272
    invoke-virtual {v14}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto/16 :goto_0

    .line 2254
    :cond_c
    if-nez v15, :cond_e

    .line 2255
    :try_start_8
    move/from16 v0, p1

    invoke-static {v0, v15}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->updateResult(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v5

    .line 2263
    if-eqz v11, :cond_d

    .line 2264
    :try_start_9
    invoke-virtual {v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2271
    :cond_d
    if-eqz v14, :cond_0

    .line 2272
    invoke-virtual {v14}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v5, p0

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    .line 2258
    :try_start_a
    invoke-direct/range {v5 .. v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->attemptUnlink_nl(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 2259
    sget-object v5, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2263
    if-eqz v11, :cond_f

    .line 2264
    :try_start_b
    invoke-virtual {v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2271
    :cond_f
    if-eqz v14, :cond_0

    .line 2272
    invoke-virtual {v14}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto/16 :goto_0

    .line 2263
    :cond_10
    if-eqz v11, :cond_11

    .line 2264
    :try_start_c
    invoke-virtual {v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    .line 2268
    :cond_11
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->fixHeight_nl(J)J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-wide v12

    .line 2271
    .local v12, "damaged":J
    if-eqz v14, :cond_12

    .line 2272
    invoke-virtual {v14}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    .line 2275
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v12, v13, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->fixHeightAndRebalance(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)V

    .line 2277
    move/from16 v0, p1

    invoke-static {v0, v15}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->updateResult(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 2281
    .end local v11    # "nl":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    .end local v12    # "damaged":J
    .end local v14    # "pl":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    .end local v15    # "prev":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lock:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->lock(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;

    move-result-object v4

    .line 2285
    .local v4, "l":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :try_start_d
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isUnlinked(J)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2286
    sget-object v5, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 2308
    if-eqz v4, :cond_0

    .line 2309
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto/16 :goto_0

    .line 2289
    :cond_14
    :try_start_e
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOpt(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v15

    .line 2291
    .restart local v15    # "prev":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v15, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shouldUpdate(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 2292
    move/from16 v0, p1

    invoke-static {v0, v15}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->noUpdateResult(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-result-object v5

    .line 2308
    if-eqz v4, :cond_0

    .line 2309
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto/16 :goto_0

    .line 2296
    :cond_15
    if-nez p3, :cond_17

    :try_start_f
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_17

    .line 2297
    :cond_16
    sget-object v5, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 2308
    if-eqz v4, :cond_0

    .line 2309
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto/16 :goto_0

    .line 2301
    :cond_17
    :try_start_10
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOpt(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)V

    .line 2303
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->afterNodeUpdate_nl(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)V

    .line 2305
    move/from16 v0, p1

    invoke-static {v0, v15}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->updateResult(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-result-object v5

    .line 2308
    if-eqz v4, :cond_0

    .line 2309
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto/16 :goto_0

    .line 2308
    .end local v15    # "prev":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    :catchall_2
    move-exception v5

    if-eqz v4, :cond_18

    .line 2309
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    :cond_18
    throw v5
.end method

.method private attemptRemoveExtreme(CJJJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Ljava/util/Map$Entry;
    .locals 22
    .param p1, "dir"    # C
    .param p2, "parent"    # J
    .param p4, "node"    # J
    .param p6, "nodeOVL"    # J
    .param p8, "unlinked"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CJJJ",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2458
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    sget-boolean v6, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    invoke-static/range {p6 .. p7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isUnlinked(J)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 2508
    .local v10, "child":J
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v12

    .line 2510
    .local v12, "childOVL":J
    invoke-static {v12, v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2511
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12, v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->waitUntilShrinkCompleted(JJ)V

    .line 2461
    .end local v10    # "child":J
    .end local v12    # "childOVL":J
    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move/from16 v3, p1

    move-object/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->unsharedChild(JCLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide v10

    .line 2463
    .restart local v10    # "child":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-wide/from16 v3, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isOutdatedOVL(JJ)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2464
    const/16 v19, 0x0

    .line 2528
    .end local v10    # "child":J
    :cond_2
    :goto_0
    return-object v19

    .line 2467
    .restart local v10    # "child":J
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v6, v10, v6

    if-nez v6, :cond_0

    .line 2472
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lock:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->lock(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;

    move-result-object v18

    .line 2475
    .local v18, "pl":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :try_start_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isUnlinked(J)Z

    move-result v6

    if-nez v6, :cond_4

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v6

    cmp-long v6, v6, p2

    if-eqz v6, :cond_5

    .line 2476
    :cond_4
    const/16 v19, 0x0

    .line 2498
    if-eqz v18, :cond_2

    .line 2499
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto :goto_0

    .line 2479
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lock:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->lock(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v15

    .line 2482
    .local v15, "nl":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :try_start_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOpt(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v20

    .line 2484
    .local v20, "vo":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->child(JC)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    move-object/from16 v7, p0

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object/from16 v12, p8

    invoke-direct/range {v7 .. v12}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->attemptUnlink_nl(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v10    # "child":J
    move-result v6

    if-nez v6, :cond_8

    .line 2485
    :cond_6
    const/16 v19, 0x0

    .line 2490
    if-eqz v15, :cond_7

    .line 2491
    :try_start_3
    invoke-virtual {v15}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2498
    :cond_7
    if-eqz v18, :cond_2

    .line 2499
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto :goto_0

    .line 2490
    :cond_8
    if-eqz v15, :cond_9

    .line 2491
    :try_start_4
    invoke-virtual {v15}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    .line 2495
    :cond_9
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->fixHeight_nl(J)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v16

    .line 2498
    .local v16, "damaged":J
    if-eqz v18, :cond_a

    .line 2499
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    .line 2502
    :cond_a
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-object/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->fixHeightAndRebalance(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)V

    .line 2504
    new-instance v19, Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v6

    check-cast v20, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local v20    # "vo":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2490
    .end local v16    # "damaged":J
    :catchall_0
    move-exception v6

    if-eqz v15, :cond_b

    .line 2491
    :try_start_5
    invoke-virtual {v15}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    :cond_b
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2498
    .end local v15    # "nl":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :catchall_1
    move-exception v6

    if-eqz v18, :cond_c

    .line 2499
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    :cond_c
    throw v6

    .line 2514
    .end local v18    # "pl":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    .restart local v10    # "child":J
    .restart local v12    # "childOVL":J
    :cond_d
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->child(JC)J

    move-result-wide v6

    cmp-long v6, v10, v6

    if-nez v6, :cond_1

    .line 2521
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-wide/from16 v3, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isOutdatedOVL(JJ)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2522
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_e
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-wide/from16 v8, p4

    move-object/from16 v14, p8

    .line 2525
    invoke-direct/range {v6 .. v14}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->attemptRemoveExtreme(CJJJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Ljava/util/Map$Entry;

    move-result-object v19

    .line 2527
    .local v19, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v19, :cond_1

    goto/16 :goto_0
.end method

.method private attemptUnlink_nl(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Z
    .locals 21
    .param p1, "parent"    # J
    .param p3, "node"    # J
    .param p5, "unlinked"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;

    .prologue
    .line 2329
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    sget-boolean v18, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v18, :cond_0

    invoke-direct/range {p0 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isUnlinked(J)Z

    move-result v18

    if-eqz v18, :cond_0

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 2331
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v10

    .line 2332
    .local v10, "parentL":J
    invoke-virtual/range {p0 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v12

    .line 2334
    .local v12, "parentR":J
    cmp-long v18, v10, p3

    if-eqz v18, :cond_1

    cmp-long v18, v12, p3

    if-eqz v18, :cond_1

    .line 2336
    const/16 v18, 0x0

    .line 2370
    :goto_0
    return v18

    .line 2339
    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v8

    .line 2341
    .local v8, "nodeOVL":J
    sget-boolean v18, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v18, :cond_2

    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isUnlinked(J)Z

    move-result v18

    if-eqz v18, :cond_2

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 2342
    :cond_2
    sget-boolean v18, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v18, :cond_3

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(J)J

    move-result-wide v18

    cmp-long v18, p1, v18

    if-eqz v18, :cond_3

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 2344
    :cond_3
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->unsharedLeft(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide v6

    .line 2345
    .local v6, "left":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->unsharedRight(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide v14

    .line 2347
    .local v14, "right":J
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-eqz v18, :cond_4

    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-eqz v18, :cond_4

    .line 2349
    const/16 v18, 0x0

    goto :goto_0

    .line 2352
    :cond_4
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-eqz v18, :cond_6

    move-wide/from16 v16, v6

    .line 2354
    .local v16, "splice":J
    :goto_1
    cmp-long v18, v10, p3

    if-nez v18, :cond_7

    .line 2355
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(JJ)V

    .line 2361
    :goto_2
    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-eqz v18, :cond_5

    .line 2362
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide/from16 v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(JJ)V

    .line 2365
    :cond_5
    const-wide/16 v18, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(JJ)V

    .line 2366
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOpt(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)V

    .line 2368
    move-object/from16 v0, p5

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;->add(J)V

    .line 2370
    const/16 v18, 0x1

    goto/16 :goto_0

    .end local v16    # "splice":J
    :cond_6
    move-wide/from16 v16, v14

    .line 2352
    goto :goto_1

    .line 2358
    .restart local v16    # "splice":J
    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(JJ)V

    goto :goto_2
.end method

.method private attemptUpdate(Ljava/lang/Object;Ljava/lang/Comparable;ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;JJJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Ljava/lang/Object;
    .locals 28
    .param p1, "key"    # Ljava/lang/Object;
    .param p3, "func"    # I
    .param p6, "parent"    # J
    .param p8, "node"    # J
    .param p10, "nodeOVL"    # J
    .param p12, "unlinked"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Comparable",
            "<-TK;>;ITV;TV;JJJ",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 2086
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p2, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local p4, "expected":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    .local p5, "newValue":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    sget-boolean v6, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    invoke-static/range {p10 .. p11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isUnlinked(J)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 2088
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v19

    .line 2090
    .local v19, "cmp":I
    if-nez v19, :cond_2

    move-object/from16 v6, p0

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-object/from16 v14, p12

    .line 2091
    invoke-direct/range {v6 .. v14}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->attemptNodeUpdate(ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;JJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Ljava/lang/Object;

    move-result-object v26

    .line 2206
    :cond_1
    :goto_0
    return-object v26

    .line 2094
    :cond_2
    if-gez v19, :cond_4

    const/16 v22, 0x4c

    .line 2096
    .local v22, "dirToC":C
    :goto_1
    const/16 v23, 0x0

    .line 2099
    .local v23, "i":I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    move-wide/from16 v3, p10

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isOutdatedOVL(JJ)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2100
    sget-object v26, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    goto :goto_0

    .line 2094
    .end local v22    # "dirToC":C
    .end local v23    # "i":I
    :cond_4
    const/16 v22, 0x52

    goto :goto_1

    .line 2103
    .restart local v22    # "dirToC":C
    .restart local v23    # "i":I
    :cond_5
    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    move/from16 v3, v22

    move-object/from16 v4, p12

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->unsharedChild(JCLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide v14

    .line 2105
    .local v14, "child":J
    const-wide/16 v6, 0x0

    cmp-long v6, v14, v6

    if-nez v6, :cond_e

    .line 2107
    if-nez p5, :cond_8

    .line 2111
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lock:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->lock(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;

    move-result-object v24

    .line 2114
    .local v24, "l":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :try_start_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    move-wide/from16 v3, p10

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isOutdatedOVL(JJ)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2115
    sget-object v26, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2121
    if-eqz v24, :cond_1

    .line 2122
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto :goto_0

    .line 2118
    :cond_6
    const/16 v26, 0x0

    .line 2121
    if-eqz v24, :cond_1

    .line 2122
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto :goto_0

    .line 2121
    :catchall_0
    move-exception v6

    if-eqz v24, :cond_7

    .line 2122
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    :cond_7
    throw v6

    .line 2130
    .end local v24    # "l":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lock:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->lock(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;

    move-result-object v24

    .line 2136
    .restart local v24    # "l":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    move-wide/from16 v3, p10

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isOutdatedOVL(JJ)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2137
    sget-object v26, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2165
    if-eqz v24, :cond_1

    .line 2166
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto :goto_0

    .line 2140
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->child(JC)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_b

    .line 2144
    const/16 v25, 0x0

    .line 2145
    .local v25, "success":Z
    const-wide/16 v20, 0x0

    .line 2165
    .end local v14    # "child":J
    .local v20, "damaged":J
    :goto_3
    if-eqz v24, :cond_a

    .line 2166
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    .line 2169
    :cond_a
    if-eqz v25, :cond_3

    .line 2170
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-object/from16 v3, p12

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->fixHeightAndRebalance(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)V

    .line 2172
    const/4 v6, 0x0

    move/from16 v0, p3

    invoke-static {v0, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->updateResult(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    goto/16 :goto_0

    .line 2150
    .end local v20    # "damaged":J
    .end local v25    # "success":Z
    .restart local v14    # "child":J
    :cond_b
    const/4 v6, 0x0

    :try_start_3
    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v0, v6, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shouldUpdate(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 2151
    const/4 v6, 0x0

    move/from16 v0, p3

    invoke-static {v0, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->noUpdateResult(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v26

    .line 2165
    if-eqz v24, :cond_1

    .line 2166
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto/16 :goto_0

    .line 2155
    :cond_c
    :try_start_4
    move-object/from16 v0, p1

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-object v7, v0

    const/4 v8, 0x1

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v6, p0

    move-object/from16 v9, p5

    move-wide/from16 v10, p8

    invoke-direct/range {v6 .. v15}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->newNode(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;JJJ)J

    .end local v14    # "child":J
    move-result-wide v10

    move-object/from16 v6, p0

    move-wide/from16 v7, p8

    move/from16 v9, v22

    invoke-direct/range {v6 .. v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->setChild(JCJ)V

    .line 2157
    const/16 v25, 0x1

    .line 2161
    .restart local v25    # "success":Z
    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->fixHeight_nl(J)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v20

    .restart local v20    # "damaged":J
    goto :goto_3

    .line 2165
    .end local v20    # "damaged":J
    .end local v25    # "success":Z
    :catchall_1
    move-exception v6

    if-eqz v24, :cond_d

    .line 2166
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    :cond_d
    throw v6

    .line 2179
    .end local v24    # "l":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    .restart local v14    # "child":J
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v16

    .line 2181
    .local v16, "childOVL":J
    invoke-static/range {v16 .. v17}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2182
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v14, v15, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->waitUntilShrinkCompleted(JJ)V

    goto/16 :goto_2

    .line 2185
    :cond_f
    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->child(JC)J

    move-result-wide v6

    cmp-long v6, v14, v6

    if-nez v6, :cond_3

    .line 2192
    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    move-wide/from16 v3, p10

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isOutdatedOVL(JJ)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2193
    sget-object v26, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    goto/16 :goto_0

    :cond_10
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-wide/from16 v12, p8

    move-object/from16 v18, p12

    .line 2203
    invoke-direct/range {v6 .. v18}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->attemptUpdate(Ljava/lang/Object;Ljava/lang/Comparable;ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;JJJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Ljava/lang/Object;

    move-result-object v26

    .line 2205
    .local v26, "vo":Ljava/lang/Object;
    sget-object v6, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-object/from16 v0, v26

    if-eq v0, v6, :cond_3

    goto/16 :goto_0
.end method

.method private static beginChange(J)J
    .locals 2
    .param p0, "ovl"    # J

    .prologue
    .line 137
    const-wide/16 v0, 0x1

    or-long/2addr v0, p0

    return-wide v0
.end method

.method private boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    .locals 12
    .param p2, "minIncl"    # Z
    .param p4, "maxIncl"    # Z
    .param p5, "returnKey"    # Z
    .param p6, "dir"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<-TK;>;Z",
            "Ljava/lang/Comparable",
            "<-TK;>;ZZC)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1653
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "minCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local p3, "maxCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    const/16 v9, 0x4c

    move/from16 v0, p6

    if-ne v0, v9, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/16 v9, 0x52

    move/from16 v0, p6

    if-ne v0, v9, :cond_6

    if-nez p3, :cond_6

    .line 1655
    :cond_1
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->extreme(ZC)Ljava/lang/Object;

    move-result-object v3

    .line 1657
    .local v3, "result":Ljava/lang/Object;
    if-nez v3, :cond_3

    .line 1658
    const/4 v3, 0x0

    .line 1700
    .end local v3    # "result":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-object v3

    .line 1661
    .restart local v3    # "result":Ljava/lang/Object;
    :cond_3
    if-eqz p5, :cond_5

    move-object v9, v3

    check-cast v9, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-object v8, v9

    .line 1684
    .end local v3    # "result":Ljava/lang/Object;
    .local v8, "resultKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    :goto_1
    const/16 v9, 0x4c

    move/from16 v0, p6

    if-ne v0, v9, :cond_a

    if-eqz p3, :cond_a

    .line 1685
    invoke-interface {p3, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    .line 1687
    .local v2, "c":I
    if-ltz v2, :cond_4

    if-nez v2, :cond_a

    if-nez p4, :cond_a

    .line 1688
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .end local v2    # "c":I
    .end local v8    # "resultKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    .restart local v3    # "result":Ljava/lang/Object;
    :cond_5
    move-object v9, v3

    .line 1661
    check-cast v9, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-virtual {v9}, Ljava/util/AbstractMap$SimpleImmutableEntry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-object v8, v9

    goto :goto_1

    .line 1664
    .end local v3    # "result":Ljava/lang/Object;
    :cond_6
    iget-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->holderRef:J

    .line 1666
    .local v4, "holder":J
    const/16 v9, 0x4c

    move/from16 v0, p6

    if-ne v0, v9, :cond_7

    invoke-virtual {p0, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v10

    invoke-direct {p0, v10, v11, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedMin(JLjava/lang/Comparable;Z)J

    move-result-wide v6

    .line 1669
    .local v6, "node":J
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-nez v9, :cond_8

    .line 1670
    const/4 v3, 0x0

    goto :goto_0

    .line 1666
    .end local v6    # "node":J
    :cond_7
    invoke-virtual {p0, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v10

    move/from16 v0, p4

    invoke-direct {p0, v10, v11, p3, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedMax(JLjava/lang/Comparable;Z)J

    move-result-wide v6

    goto :goto_2

    .line 1673
    .restart local v6    # "node":J
    :cond_8
    invoke-direct {p0, v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v8

    .line 1675
    .restart local v8    # "resultKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    if-eqz p5, :cond_9

    .line 1676
    move-object v3, v8

    .local v3, "result":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    goto :goto_1

    .line 1680
    .end local v3    # "result":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    :cond_9
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {p0, v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v9

    invoke-direct {p0, v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOpt(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .local v3, "result":Ljava/util/AbstractMap$SimpleImmutableEntry;
    goto :goto_1

    .line 1692
    .end local v3    # "result":Ljava/util/AbstractMap$SimpleImmutableEntry;
    .end local v4    # "holder":J
    .end local v6    # "node":J
    :cond_a
    const/16 v9, 0x52

    move/from16 v0, p6

    if-ne v0, v9, :cond_2

    if-eqz p1, :cond_2

    .line 1693
    invoke-interface {p1, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    .line 1695
    .restart local v2    # "c":I
    if-gtz v2, :cond_b

    if-nez v2, :cond_2

    if-nez p2, :cond_2

    .line 1696
    :cond_b
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private boundedExtremeKeyOrThrow(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZC)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 8
    .param p2, "minIncl"    # Z
    .param p4, "maxIncl"    # Z
    .param p5, "dir"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<-TK;>;Z",
            "Ljava/lang/Comparable",
            "<-TK;>;ZC)TK;"
        }
    .end annotation

    .prologue
    .line 1637
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "minCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local p3, "maxCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .line 1639
    .local v7, "k":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    if-nez v7, :cond_0

    .line 1640
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1643
    :cond_0
    return-object v7
.end method

.method private boundedMax(JLjava/lang/Comparable;Z)J
    .locals 9
    .param p1, "node"    # J
    .param p4, "maxIncl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Comparable",
            "<-TK;>;Z)J"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p3, "maxCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    const-wide/16 v4, 0x0

    .line 1743
    :goto_0
    cmp-long v1, p1, v4

    if-eqz v1, :cond_3

    .line 1744
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 1746
    .local v0, "c":I
    if-lez v0, :cond_0

    .line 1748
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v6

    invoke-direct {p0, v6, v7, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedMax(JLjava/lang/Comparable;Z)J

    move-result-wide v2

    .line 1750
    .local v2, "z":J
    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1766
    .end local v0    # "c":I
    .end local v2    # "z":J
    :goto_1
    return-wide v2

    .line 1755
    .restart local v0    # "c":I
    :cond_0
    if-gtz v0, :cond_1

    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    .line 1757
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOptIsNull(J)Z

    move-result v1

    if-nez v1, :cond_2

    move-wide v2, p1

    .line 1758
    goto :goto_1

    .line 1763
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide p1

    .line 1764
    goto :goto_0

    .end local v0    # "c":I
    :cond_3
    move-wide v2, v4

    .line 1766
    goto :goto_1
.end method

.method private boundedMin(JLjava/lang/Comparable;Z)J
    .locals 9
    .param p1, "node"    # J
    .param p4, "minIncl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Comparable",
            "<-TK;>;Z)J"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p3, "minCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    const-wide/16 v4, 0x0

    .line 1710
    :goto_0
    cmp-long v1, p1, v4

    if-eqz v1, :cond_3

    .line 1711
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 1713
    .local v0, "c":I
    if-gez v0, :cond_0

    .line 1715
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v6

    invoke-direct {p0, v6, v7, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedMin(JLjava/lang/Comparable;Z)J

    move-result-wide v2

    .line 1717
    .local v2, "z":J
    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1733
    .end local v0    # "c":I
    .end local v2    # "z":J
    :goto_1
    return-wide v2

    .line 1722
    .restart local v0    # "c":I
    :cond_0
    if-ltz v0, :cond_1

    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    .line 1724
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOptIsNull(J)Z

    move-result v1

    if-nez v1, :cond_2

    move-wide v2, p1

    .line 1725
    goto :goto_1

    .line 1730
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide p1

    .line 1731
    goto :goto_0

    .end local v0    # "c":I
    :cond_3
    move-wide v2, v4

    .line 1733
    goto :goto_1
.end method

.method private child(JC)J
    .locals 3
    .param p1, "ptr"    # J
    .param p3, "dir"    # C

    .prologue
    .line 534
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const/16 v0, 0x4c

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private computeFrozenSize(JLjava/lang/Comparable;ZLjava/lang/Comparable;Z)I
    .locals 9
    .param p1, "root"    # J
    .param p4, "fromIncl"    # Z
    .param p6, "toIncl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Comparable",
            "<-TK;>;Z",
            "Ljava/lang/Comparable",
            "<-TK;>;Z)I"
        }
    .end annotation

    .prologue
    .line 709
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p3, "fromCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local p5, "toCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    const/4 v8, 0x0

    .line 712
    .local v8, "result":I
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 713
    return v8

    .line 716
    :cond_0
    if-eqz p3, :cond_2

    .line 717
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 719
    .local v0, "c":I
    if-gtz v0, :cond_1

    if-nez v0, :cond_2

    if-nez p4, :cond_2

    .line 721
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide p1

    .line 723
    goto :goto_0

    .line 727
    .end local v0    # "c":I
    :cond_2
    if-eqz p5, :cond_4

    .line 728
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 730
    .restart local v0    # "c":I
    if-ltz v0, :cond_3

    if-nez v0, :cond_4

    if-nez p6, :cond_4

    .line 732
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide p1

    .line 734
    goto :goto_0

    .line 740
    .end local v0    # "c":I
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOptIsNull(J)Z

    move-result v1

    if-nez v1, :cond_5

    .line 741
    add-int/lit8 v8, v8, 0x1

    .line 744
    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->computeFrozenSize(JLjava/lang/Comparable;ZLjava/lang/Comparable;Z)I

    move-result v1

    add-int/2addr v8, v1

    .line 746
    const/4 p3, 0x0

    .line 748
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide p1

    goto :goto_0
.end method

.method private deallocate(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)V
    .locals 14
    .param p1, "unlinked"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    .line 1921
    const/4 v5, 0x0

    .line 1922
    .local v5, "toMem":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    const/4 v6, 0x0

    .line 1924
    .local v6, "toSnap":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;->idx:I
    invoke-static {p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;->access$800(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 1925
    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;->arr:[J
    invoke-static {p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;->access$900(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)[J

    move-result-object v7

    aget-wide v2, v7, v0

    .line 1927
    .local v2, "ptr":J
    cmp-long v7, v2, v12

    if-lez v7, :cond_1

    .line 1928
    if-nez v5, :cond_0

    .line 1929
    new-instance v5, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;

    .end local v5    # "toMem":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    invoke-direct {v5, p0, v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V

    .line 1931
    .restart local v5    # "toMem":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    :cond_0
    invoke-virtual {v5, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->add(J)Z

    .line 1924
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1934
    :cond_1
    sget-boolean v7, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v7, :cond_2

    cmp-long v7, v2, v12

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1936
    :cond_2
    if-nez v6, :cond_3

    .line 1937
    new-instance v6, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;

    .end local v6    # "toSnap":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    invoke-direct {v6, p0, v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V

    .line 1939
    .restart local v6    # "toSnap":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    :cond_3
    neg-long v8, v2

    invoke-virtual {v6, v8, v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->add(J)Z

    goto :goto_1

    .line 1943
    .end local v2    # "ptr":J
    :cond_4
    if-eqz v6, :cond_7

    .line 1944
    iget-object v7, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->snapshots:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    .line 1945
    .local v4, "snap":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    iget-object v7, v4, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->recycleBin:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;

    invoke-virtual {v7, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;->add(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1946
    const/4 v6, 0x0

    .line 1952
    .end local v4    # "snap":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    :cond_6
    if-eqz v6, :cond_7

    .line 1954
    if-nez v5, :cond_9

    .line 1955
    move-object v5, v6

    .line 1961
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    if-eqz v5, :cond_8

    .line 1962
    iget-object v7, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->guard:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;

    invoke-virtual {v7, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->releaseLater(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;)V

    .line 1963
    :cond_8
    return-void

    .line 1957
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->add(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;)Z

    goto :goto_2
.end method

.method private deallocateSubTree(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;)V
    .locals 3
    .param p1, "node"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap",
            "<TK;TV;>.RecycleQueue;)V"
        }
    .end annotation

    .prologue
    .line 1106
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p3, "que":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1113
    :goto_0
    return-void

    .line 1109
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->deallocateSubTree(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;)V

    .line 1110
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->deallocateSubTree(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;)V

    .line 1112
    invoke-virtual {p3, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->add(J)Z

    goto :goto_0
.end method

.method private doDeallocateSnapshot(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap",
            "<TK;TV;>.RecycleQueue;)V"
        }
    .end annotation

    .prologue
    .line 1969
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "q":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->snapshots:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->snapshotId:Ljava/lang/Long;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentNavigableMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    .line 1971
    .local v1, "s":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    iget-object v2, v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->recycleBin:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;->add(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1977
    .end local v1    # "s":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    :goto_0
    return-void

    .line 1976
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->deallocate()V

    goto :goto_0
.end method

.method private doGet(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 12
    .param p2, "unlinked"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;",
            ")",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;"
        }
    .end annotation

    .prologue
    .line 1360
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    .line 1363
    .local v1, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_0
    :goto_0
    iget-wide v10, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->holderRef:J

    invoke-direct {p0, v10, v11, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->unsharedRight(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide v2

    .line 1365
    .local v2, "right":J
    const-wide/16 v10, 0x0

    cmp-long v0, v2, v10

    if-nez v0, :cond_1

    .line 1366
    const/4 v9, 0x0

    .line 1387
    :goto_1
    return-object v9

    .line 1369
    :cond_1
    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v8

    .line 1371
    .local v8, "rightCmp":I
    if-nez v8, :cond_2

    .line 1373
    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOpt(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v9

    goto :goto_1

    .line 1376
    :cond_2
    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v5

    .line 1378
    .local v5, "ovl":J
    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1379
    invoke-direct {p0, v2, v3, v5, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->waitUntilShrinkCompleted(JJ)V

    goto :goto_0

    .line 1382
    :cond_3
    iget-wide v10, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->holderRef:J

    invoke-virtual {p0, v10, v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v10

    cmp-long v0, v2, v10

    if-nez v0, :cond_0

    .line 1384
    if-gez v8, :cond_4

    const/16 v4, 0x4c

    :goto_2
    move-object v0, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->attemptGet(Ljava/lang/Comparable;JCJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v9

    .line 1386
    .local v9, "vo":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    if-eq v9, v0, :cond_0

    goto :goto_1

    .line 1384
    .end local v9    # "vo":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    :cond_4
    const/16 v4, 0x52

    goto :goto_2
.end method

.method private static endChange(J)J
    .locals 4
    .param p0, "ovl"    # J

    .prologue
    .line 145
    const-wide/16 v0, 0x3

    or-long/2addr v0, p0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private extreme(ZC)Ljava/lang/Object;
    .locals 8
    .param p1, "returnKey"    # Z
    .param p2, "dir"    # C

    .prologue
    .line 1507
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    :cond_0
    :goto_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->holderRef:J

    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v4

    .line 1509
    .local v4, "right":J
    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    .line 1510
    const/4 v0, 0x0

    .line 1523
    :goto_1
    return-object v0

    .line 1513
    :cond_1
    invoke-direct {p0, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v6

    .line 1514
    .local v6, "ovl":J
    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1515
    invoke-direct {p0, v4, v5, v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->waitUntilShrinkCompleted(JJ)V

    goto :goto_0

    .line 1518
    :cond_2
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->holderRef:J

    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v2

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 1520
    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->attemptExtreme(ZCJJ)Ljava/lang/Object;

    move-result-object v0

    .line 1522
    .local v0, "vo":Ljava/lang/Object;
    sget-object v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    if-eq v0, v1, :cond_0

    goto :goto_1
.end method

.method private extremeKeyOrThrow(C)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 2
    .param p1, "dir"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)TK;"
        }
    .end annotation

    .prologue
    .line 1492
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->extreme(ZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .line 1494
    .local v0, "k":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    if-nez v0, :cond_0

    .line 1495
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1498
    :cond_0
    return-object v0
.end method

.method private fixHeightAndRebalance(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)V
    .locals 15
    .param p1, "node"    # J
    .param p3, "unlinked"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;

    .prologue
    .line 2582
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    :cond_0
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-eqz v1, :cond_1

    invoke-direct/range {p0 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(J)J

    move-result-wide v4

    const-wide/16 v12, 0x0

    cmp-long v1, v4, v12

    if-lez v1, :cond_1

    .line 2583
    invoke-direct/range {p0 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->nodeCondition(J)I

    move-result v0

    .line 2585
    .local v0, "condition":I
    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    invoke-direct/range {p0 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isUnlinked(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2639
    .end local v0    # "condition":I
    :cond_1
    :goto_1
    return-void

    .line 2590
    .restart local v0    # "condition":I
    :cond_2
    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const/4 v1, -0x2

    if-eq v0, v1, :cond_5

    .line 2591
    move-wide/from16 v8, p1

    .line 2593
    .local v8, "n":J
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lock:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->lock(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;

    move-result-object v7

    .line 2596
    .local v7, "l":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isUnlinked(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 2602
    if-eqz v7, :cond_1

    .line 2603
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto :goto_1

    .line 2599
    :cond_3
    :try_start_1
    invoke-direct/range {p0 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->fixHeight_nl(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide p1

    .line 2602
    if-eqz v7, :cond_0

    .line 2603
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto :goto_0

    .line 2602
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    .line 2603
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    :cond_4
    throw v1

    .line 2607
    .end local v7    # "l":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    .end local v8    # "n":J
    :cond_5
    invoke-direct/range {p0 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(J)J

    move-result-wide v2

    .line 2609
    .local v2, "nParent":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 2612
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lock:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->lock(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;

    move-result-object v11

    .line 2615
    .local v11, "pl":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :try_start_2
    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isUnlinked(J)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-direct/range {p0 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_8

    .line 2616
    move-wide/from16 v8, p1

    .line 2618
    .restart local v8    # "n":J
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lock:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->lock(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v10

    .line 2621
    .local v10, "nl":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :try_start_3
    invoke-direct/range {p0 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isUnlinked(J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    if-eqz v1, :cond_7

    .line 2627
    if-eqz v10, :cond_6

    .line 2628
    :try_start_4
    invoke-virtual {v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2634
    :cond_6
    if-eqz v11, :cond_1

    .line 2635
    invoke-virtual {v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto :goto_1

    :cond_7
    move-object v1, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    .line 2624
    :try_start_5
    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->rebalance_nl(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-wide p1

    .line 2627
    if-eqz v10, :cond_8

    .line 2628
    :try_start_6
    invoke-virtual {v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2634
    .end local v8    # "n":J
    .end local v10    # "nl":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :cond_8
    if-eqz v11, :cond_0

    .line 2635
    invoke-virtual {v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto/16 :goto_0

    .line 2627
    .restart local v8    # "n":J
    .restart local v10    # "nl":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :catchall_1
    move-exception v1

    if-eqz v10, :cond_9

    .line 2628
    :try_start_7
    invoke-virtual {v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    :cond_9
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2634
    .end local v8    # "n":J
    .end local v10    # "nl":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :catchall_2
    move-exception v1

    if-eqz v11, :cond_a

    .line 2635
    invoke-virtual {v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    :cond_a
    throw v1
.end method

.method private fixHeight_nl(J)J
    .locals 1
    .param p1, "node"    # J

    .prologue
    .line 2647
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->nodeCondition(J)I

    move-result v0

    .line 2648
    .local v0, "c":I
    packed-switch v0, :pswitch_data_0

    .line 2659
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(JI)V

    .line 2662
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(J)J

    move-result-wide p1

    .end local p1    # "node":J
    :goto_0
    :pswitch_0
    return-wide p1

    .line 2656
    .restart local p1    # "node":J
    :pswitch_1
    const-wide/16 p1, 0x0

    goto :goto_0

    .line 2648
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getImpl(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;"
        }
    .end annotation

    .prologue
    .line 1344
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V

    .line 1347
    .local v0, "unlinked":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;
    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->doGet(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1350
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->deallocate(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->deallocate(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)V

    throw v1
.end method

.method private height(J)I
    .locals 5
    .param p1, "ptr"    # J

    .prologue
    .line 461
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x30

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readLongVolatile(J)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method private height(JI)V
    .locals 7
    .param p1, "ptr"    # J
    .param p3, "h"    # I

    .prologue
    .line 525
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x30

    add-long/2addr v2, p1

    int-to-long v4, p3

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeLongVolatile(JJ)V

    .line 526
    return-void
.end method

.method private isOutdatedOVL(JJ)Z
    .locals 3
    .param p1, "node"    # J
    .param p3, "nodeOVL"    # J

    .prologue
    .line 2066
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShared(J)Z
    .locals 5
    .param p1, "node"    # J

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const-wide/16 v2, 0x0

    .line 556
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 560
    :cond_0
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isUnlinked(J)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isShrinking(J)Z
    .locals 4
    .param p0, "ovl"    # J

    .prologue
    .line 156
    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isShrinkingOrUnlinked(J)Z
    .locals 4
    .param p0, "ovl"    # J

    .prologue
    .line 172
    const-wide/16 v0, 0x3

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUnlinked(J)Z
    .locals 4
    .param p0, "ovl"    # J

    .prologue
    .line 164
    const-wide/16 v0, 0x2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 9
    .param p1, "ptr"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const-wide/16 v6, 0x0

    .line 269
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    add-long v4, p1, v6

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readLongVolatile(J)J

    move-result-wide v0

    .line 271
    .local v0, "resPtr":J
    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    .line 272
    const/4 v2, 0x0

    .line 275
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->keyFactory:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory;

    invoke-interface {v2, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory;->createPointer(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v2

    goto :goto_0
.end method

.method private lazyCopy(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J
    .locals 9
    .param p1, "ptr"    # J
    .param p3, "newParent"    # J
    .param p5, "unlinked"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const-wide/16 v6, 0x38

    .line 416
    sget-boolean v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 417
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isShared(J)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 418
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 420
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->snapshots:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 421
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(JJ)V

    .line 445
    .end local p1    # "ptr":J
    :goto_0
    return-wide p1

    .line 426
    .restart local p1    # "ptr":J
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    invoke-virtual {v1, v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->allocate(J)J

    move-result-wide v4

    .line 428
    .local v4, "n":J
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-wide v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->copyMemory(JJJ)V

    .line 430
    invoke-virtual {p0, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->markShared(J)J

    .line 431
    invoke-virtual {p0, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->markShared(J)J

    .line 433
    invoke-direct {p0, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;->incrementRefCount()V

    .line 435
    invoke-direct {p0, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOpt(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    .line 437
    .local v0, "val":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    if-eqz v0, :cond_4

    .line 438
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;->incrementRefCount()V

    .line 440
    :cond_4
    invoke-direct {p0, v4, v5, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(JJ)V

    .line 443
    neg-long v2, p1

    invoke-virtual {p5, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;->add(J)V

    move-wide p1, v4

    .line 445
    goto :goto_0
.end method

.method private lazyCopyChildren(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)V
    .locals 11
    .param p1, "ptr"    # J
    .param p3, "unlinked"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;

    .prologue
    .line 627
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lock:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->lock(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;

    move-result-object v0

    .line 630
    .local v0, "l":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v2

    .line 632
    .local v2, "cl":J
    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isShared(J)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    .line 633
    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lazyCopy(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide v4

    invoke-direct {p0, p1, p2, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(JJ)V

    .line 636
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v6

    .line 638
    .local v6, "cr":J
    invoke-direct {p0, v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isShared(J)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v5, p0

    move-wide v8, p1

    move-object v10, p3

    .line 639
    invoke-direct/range {v5 .. v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lazyCopy(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide v4

    invoke-virtual {p0, p1, p2, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    :cond_1
    if-eqz v0, :cond_2

    .line 644
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    .line 646
    :cond_2
    return-void

    .line 643
    .end local v2    # "cl":J
    .end local v6    # "cr":J
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 644
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    :cond_3
    throw v1
.end method

.method private left(JJ)V
    .locals 5
    .param p1, "ptr"    # J
    .param p3, "nodePtr"    # J

    .prologue
    .line 330
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 332
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x10

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeLongVolatile(JJ)V

    .line 333
    return-void
.end method

.method private markShared(J)J
    .locals 5
    .param p1, "node"    # J

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const-wide/16 v2, 0x0

    .line 568
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 570
    :cond_0
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 571
    invoke-direct {p0, p1, p2, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(JJ)V

    .line 573
    :cond_1
    return-wide p1
.end method

.method private newNode(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;JJJ)J
    .locals 6
    .param p2, "height"    # I
    .param p4, "parent"    # J
    .param p6, "left"    # J
    .param p8, "right"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;JJJ)J"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    .local p3, "vOpt":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v4, 0x38

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->allocate(J)J

    move-result-wide v0

    .line 241
    .local v0, "ptr":J
    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOpt0(J)V

    .line 243
    sget-boolean v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eq p1, p3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 245
    :cond_1
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)V

    .line 246
    invoke-direct {p0, v0, v1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(JI)V

    .line 247
    invoke-direct {p0, v0, v1, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOpt(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)V

    .line 248
    invoke-direct {p0, v0, v1, p4, p5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(JJ)V

    .line 249
    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(JJ)V

    .line 250
    invoke-direct {p0, v0, v1, p6, p7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(JJ)V

    .line 251
    invoke-virtual {p0, v0, v1, p8, p9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(JJ)V

    .line 253
    return-wide v0
.end method

.method private static noUpdateResult(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "func"    # I
    .param p1, "prev"    # Ljava/lang/Object;

    .prologue
    .line 1813
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local p1    # "prev":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method

.method private nodeCondition(J)I
    .locals 13
    .param p1, "node"    # J

    .prologue
    .line 2551
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v6

    .line 2552
    .local v6, "nL":J
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v8

    .line 2554
    .local v8, "nR":J
    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-eqz v5, :cond_0

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_2

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOptIsNull(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2555
    const/4 v3, -0x1

    .line 2574
    :cond_1
    :goto_0
    return v3

    .line 2558
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I

    move-result v2

    .line 2559
    .local v2, "hN":I
    invoke-direct {p0, v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I

    move-result v1

    .line 2560
    .local v1, "hL0":I
    invoke-direct {p0, v8, v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I

    move-result v4

    .line 2567
    .local v4, "hR0":I
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 2568
    .local v3, "hNRepl":I
    sub-int v0, v1, v4

    .line 2570
    .local v0, "bal":I
    const/4 v5, -0x1

    if-lt v0, v5, :cond_3

    const/4 v5, 0x1

    if-le v0, v5, :cond_4

    .line 2571
    :cond_3
    const/4 v3, -0x2

    goto :goto_0

    .line 2574
    :cond_4
    if-ne v2, v3, :cond_1

    const/4 v3, -0x3

    goto :goto_0
.end method

.method private nodes(JZ)J
    .locals 5
    .param p1, "node"    # J
    .param p3, "nonNull"    # Z

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const-wide/16 v0, 0x0

    .line 1166
    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1169
    :goto_0
    return-wide v0

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOptIsNull(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    int-to-long v0, v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->nodes(JZ)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->nodes(JZ)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private parent(J)J
    .locals 5
    .param p1, "ptr"    # J

    .prologue
    .line 340
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x28

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readLongVolatile(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private parent(JJ)V
    .locals 5
    .param p1, "ptr"    # J
    .param p3, "nodePtr"    # J

    .prologue
    .line 348
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 350
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x28

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeLongVolatile(JJ)V

    .line 351
    return-void
.end method

.method private pollExtremeEntry(CLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Ljava/util/Map$Entry;
    .locals 4
    .param p1, "dir"    # C
    .param p2, "unlinked"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2403
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 2405
    .local v1, "sizeDelta":I
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->holderRef:J

    invoke-direct {p0, p1, v2, v3, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->pollExtremeEntryUnderRoot(CJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2407
    .local v0, "prev":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 2408
    const/4 v1, -0x1

    .line 2411
    :cond_0
    return-object v0
.end method

.method private pollExtremeEntryUnderRoot(CJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Ljava/util/Map$Entry;
    .locals 10
    .param p1, "dir"    # C
    .param p2, "holder"    # J
    .param p4, "unlinked"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CJ",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2422
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    :cond_0
    :goto_0
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->unsharedRight(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide v4

    .line 2424
    .local v4, "right":J
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_1

    .line 2426
    const/4 v9, 0x0

    .line 2440
    :goto_1
    return-object v9

    .line 2429
    :cond_1
    invoke-direct {p0, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v6

    .line 2431
    .local v6, "ovl":J
    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2432
    invoke-direct {p0, v4, v5, v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->waitUntilShrinkCompleted(JJ)V

    goto :goto_0

    .line 2435
    :cond_2
    invoke-virtual {p0, p2, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v8, p4

    .line 2437
    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->attemptRemoveExtreme(CJJJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Ljava/util/Map$Entry;

    move-result-object v9

    .line 2439
    .local v9, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    if-eq v9, v0, :cond_0

    goto :goto_1
.end method

.method private print(JLjava/util/ArrayList;II)I
    .locals 9
    .param p1, "node"    # J
    .param p4, "level"    # I
    .param p5, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/ignite/internal/util/typedef/internal/SB;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 1201
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p3, "s":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/ignite/internal/util/typedef/internal/SB;>;"
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 1202
    add-int/lit8 v1, p4, -0x1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->length()I

    move-result v1

    .line 1221
    :goto_0
    return v1

    .line 1204
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p4, :cond_2

    const/4 v7, 0x0

    .line 1206
    .local v7, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    :goto_1
    if-nez v7, :cond_1

    .line 1207
    new-instance v7, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    .end local v7    # "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    invoke-direct {v7}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    .line 1209
    .restart local v7    # "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    invoke-virtual {p3, p4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1212
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v2

    add-int/lit8 v5, p4, 0x1

    move-object v1, p0

    move-object v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->print(JLjava/util/ArrayList;II)I

    move-result v1

    invoke-static {v1, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1214
    .local v0, "o":I
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->print0(J)Ljava/lang/String;

    move-result-object v8

    .line 1216
    .local v8, "v":Ljava/lang/String;
    :goto_2
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->length()I

    move-result v1

    if-ge v1, v0, :cond_3

    .line 1217
    const/16 v1, 0x20

    invoke-virtual {v7, v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto :goto_2

    .line 1204
    .end local v0    # "o":I
    .end local v7    # "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    .end local v8    # "v":Ljava/lang/String;
    :cond_2
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    move-object v7, v1

    goto :goto_1

    .line 1219
    .restart local v0    # "o":I
    .restart local v7    # "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    .restart local v8    # "v":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1221
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v2

    add-int/lit8 v5, p4, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    add-int v6, v0, v1

    move-object v1, p0

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->print(JLjava/util/ArrayList;II)I

    move-result v1

    goto :goto_0
.end method

.method private print0(J)Ljava/lang/String;
    .locals 5
    .param p1, "node"    # J

    .prologue
    .line 1231
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1234
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOpt(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private readLink(J)J
    .locals 7
    .param p1, "addr"    # J

    .prologue
    .line 360
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v4, 0x28

    add-long/2addr v4, p1

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readLongVolatile(J)J

    move-result-wide v2

    neg-long v0, v2

    .line 362
    .local v0, "ptr":J
    sget-boolean v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 364
    :cond_0
    return-wide v0
.end method

.method private rebalanceToLeft_nl(JJJILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J
    .locals 45
    .param p1, "nParent"    # J
    .param p3, "n"    # J
    .param p5, "nR"    # J
    .param p7, "hL0"    # I
    .param p8, "unlinked"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;

    .prologue
    .line 2801
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lock:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->lock(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;

    move-result-object v44

    .line 2804
    .local v44, "nRl":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :try_start_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v42

    .line 2806
    .local v42, "hR":I
    sub-int v4, p7, v42

    const/4 v5, -0x1

    if-lt v4, v5, :cond_1

    .line 2845
    if-eqz v44, :cond_0

    .line 2846
    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    .end local p3    # "n":J
    :cond_0
    :goto_0
    return-wide p3

    .line 2810
    .restart local p3    # "n":J
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->unsharedLeft(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide v12

    .line 2811
    .local v12, "nRL":J
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I

    move-result v14

    .line 2812
    .local v14, "hRL0":I
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I

    move-result v15

    .line 2814
    .local v15, "hRR0":I
    if-lt v15, v14, :cond_2

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move/from16 v9, p7

    move-wide/from16 v10, p5

    .line 2815
    invoke-direct/range {v4 .. v15}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->rotateLeft_nl(JJIJJII)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide p3

    .line 2845
    .end local p3    # "n":J
    if-eqz v44, :cond_0

    .line 2846
    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto :goto_0

    .line 2818
    .restart local p3    # "n":J
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lock:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->lock(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v43

    .line 2821
    .local v43, "nRLl":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I

    move-result v26

    .line 2823
    .local v26, "hRL":I
    move/from16 v0, v26

    if-lt v15, v0, :cond_4

    move-object/from16 v16, p0

    move-wide/from16 v17, p1

    move-wide/from16 v19, p3

    move/from16 v21, p7

    move-wide/from16 v22, p5

    move-wide/from16 v24, v12

    move/from16 v27, v15

    .line 2824
    invoke-direct/range {v16 .. v27}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->rotateLeft_nl(JJIJJII)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide p3

    .line 2836
    .end local p3    # "n":J
    if-eqz v43, :cond_3

    .line 2837
    :try_start_4
    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2845
    :cond_3
    if-eqz v44, :cond_0

    .line 2846
    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto :goto_0

    .line 2827
    .restart local p3    # "n":J
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I

    move-result v39

    .line 2828
    .local v39, "hRLR":I
    sub-int v41, v15, v39

    .line 2830
    .local v41, "b":I
    const/4 v4, -0x1

    move/from16 v0, v41

    if-lt v0, v4, :cond_8

    const/4 v4, 0x1

    move/from16 v0, v41

    if-gt v0, v4, :cond_8

    if-eqz v15, :cond_5

    if-nez v39, :cond_6

    :cond_5
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOptIsNull(J)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_6
    move-object/from16 v28, p0

    move-wide/from16 v29, p1

    move-wide/from16 v31, p3

    move/from16 v33, p7

    move-wide/from16 v34, p5

    move-wide/from16 v36, v12

    move/from16 v38, v15

    move-object/from16 v40, p8

    .line 2831
    invoke-direct/range {v28 .. v40}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->rotateLeftOverRight_nl(JJIJJIILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide p3

    .line 2836
    .end local p3    # "n":J
    if-eqz v43, :cond_7

    .line 2837
    :try_start_6
    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2845
    :cond_7
    if-eqz v44, :cond_0

    .line 2846
    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto/16 :goto_0

    .line 2836
    .restart local p3    # "n":J
    :cond_8
    if-eqz v43, :cond_9

    .line 2837
    :try_start_7
    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    :cond_9
    move-object/from16 v17, p0

    move-wide/from16 v18, p3

    move-wide/from16 v20, p5

    move-wide/from16 v22, v12

    move/from16 v24, v15

    move-object/from16 v25, p8

    .line 2840
    invoke-direct/range {v17 .. v25}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->rebalanceToRight_nl(JJJILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-wide p3

    .line 2845
    .end local p3    # "n":J
    if-eqz v44, :cond_0

    .line 2846
    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto/16 :goto_0

    .line 2836
    .end local v26    # "hRL":I
    .end local v39    # "hRLR":I
    .end local v41    # "b":I
    .restart local p3    # "n":J
    :catchall_0
    move-exception v4

    if-eqz v43, :cond_a

    .line 2837
    :try_start_8
    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    :cond_a
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2845
    .end local v12    # "nRL":J
    .end local v14    # "hRL0":I
    .end local v15    # "hRR0":I
    .end local v42    # "hR":I
    .end local v43    # "nRLl":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    .end local p3    # "n":J
    :catchall_1
    move-exception v4

    if-eqz v44, :cond_b

    .line 2846
    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    :cond_b
    throw v4
.end method

.method private rebalanceToRight_nl(JJJILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J
    .locals 45
    .param p1, "nParent"    # J
    .param p3, "n"    # J
    .param p5, "nL"    # J
    .param p7, "hR0"    # I
    .param p8, "unlinked"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;

    .prologue
    .line 2723
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lock:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->lock(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;

    move-result-object v44

    .line 2726
    .local v44, "nLl":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :try_start_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v42

    .line 2728
    .local v42, "hL":I
    sub-int v5, v42, p7

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1

    .line 2786
    if-eqz v44, :cond_0

    .line 2787
    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    .end local p3    # "n":J
    :cond_0
    :goto_0
    return-wide p3

    .line 2732
    .restart local p3    # "n":J
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->unsharedRight(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide v14

    .line 2733
    .local v14, "nLR":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I

    move-result v13

    .line 2734
    .local v13, "hLL0":I
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I

    move-result v16

    .line 2736
    .local v16, "hLR0":I
    move/from16 v0, v16

    if-lt v13, v0, :cond_2

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move/from16 v12, p7

    .line 2738
    invoke-direct/range {v5 .. v16}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->rotateRight_nl(JJJIIJI)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide p3

    .line 2786
    .end local p3    # "n":J
    if-eqz v44, :cond_0

    .line 2787
    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto :goto_0

    .line 2741
    .restart local p3    # "n":J
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lock:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->lock(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v43

    .line 2746
    .local v43, "nLRl":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I

    move-result v28

    .line 2748
    .local v28, "hLR":I
    move/from16 v0, v28

    if-lt v13, v0, :cond_4

    move-object/from16 v17, p0

    move-wide/from16 v18, p1

    move-wide/from16 v20, p3

    move-wide/from16 v22, p5

    move/from16 v24, p7

    move/from16 v25, v13

    move-wide/from16 v26, v14

    .line 2749
    invoke-direct/range {v17 .. v28}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->rotateRight_nl(JJJIIJI)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide p3

    .line 2776
    .end local p3    # "n":J
    if-eqz v43, :cond_3

    .line 2777
    :try_start_4
    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2786
    :cond_3
    if-eqz v44, :cond_0

    .line 2787
    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto :goto_0

    .line 2766
    .restart local p3    # "n":J
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I

    move-result v40

    .line 2767
    .local v40, "hLRL":I
    sub-int v4, v13, v40

    .line 2769
    .local v4, "b":I
    const/4 v5, -0x1

    if-lt v4, v5, :cond_8

    const/4 v5, 0x1

    if-gt v4, v5, :cond_8

    if-eqz v13, :cond_5

    if-nez v40, :cond_6

    :cond_5
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOptIsNull(J)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_6
    move-object/from16 v29, p0

    move-wide/from16 v30, p1

    move-wide/from16 v32, p3

    move-wide/from16 v34, p5

    move/from16 v36, p7

    move/from16 v37, v13

    move-wide/from16 v38, v14

    move-object/from16 v41, p8

    .line 2771
    invoke-direct/range {v29 .. v41}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->rotateRightOverLeft_nl(JJJIIJILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide p3

    .line 2776
    .end local p3    # "n":J
    if-eqz v43, :cond_7

    .line 2777
    :try_start_6
    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2786
    :cond_7
    if-eqz v44, :cond_0

    .line 2787
    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto/16 :goto_0

    .line 2776
    .restart local p3    # "n":J
    :cond_8
    if-eqz v43, :cond_9

    .line 2777
    :try_start_7
    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    :cond_9
    move-object/from16 v17, p0

    move-wide/from16 v18, p3

    move-wide/from16 v20, p5

    move-wide/from16 v22, v14

    move/from16 v24, v13

    move-object/from16 v25, p8

    .line 2781
    invoke-direct/range {v17 .. v25}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->rebalanceToLeft_nl(JJJILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-wide p3

    .line 2786
    .end local p3    # "n":J
    if-eqz v44, :cond_0

    .line 2787
    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    goto/16 :goto_0

    .line 2776
    .end local v4    # "b":I
    .end local v28    # "hLR":I
    .end local v40    # "hLRL":I
    .restart local p3    # "n":J
    :catchall_0
    move-exception v5

    if-eqz v43, :cond_a

    .line 2777
    :try_start_8
    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    :cond_a
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2786
    .end local v13    # "hLL0":I
    .end local v14    # "nLR":J
    .end local v16    # "hLR0":I
    .end local v42    # "hL":I
    .end local v43    # "nLRl":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    .end local p3    # "n":J
    :catchall_1
    move-exception v5

    if-eqz v44, :cond_b

    .line 2787
    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    :cond_b
    throw v5
.end method

.method private rebalance_nl(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J
    .locals 25
    .param p1, "nParent"    # J
    .param p3, "n"    # J
    .param p5, "unlinked"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;

    .prologue
    .line 2671
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->unsharedLeft(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide v10

    .line 2672
    .local v10, "nL":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->unsharedRight(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide v18

    .line 2674
    .local v18, "nR":J
    const-wide/16 v6, 0x0

    cmp-long v5, v10, v6

    if-eqz v5, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, v18, v6

    if-nez v5, :cond_2

    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOptIsNull(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2675
    invoke-direct/range {p0 .. p5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->attemptUnlink_nl(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2677
    invoke-direct/range {p0 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->fixHeight_nl(J)J

    move-result-wide p3

    .line 2707
    .end local p3    # "n":J
    :cond_1
    :goto_0
    return-wide p3

    .line 2685
    .restart local p3    # "n":J
    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I

    move-result v22

    .line 2686
    .local v22, "hN":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I

    move-result v20

    .line 2687
    .local v20, "hL0":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I

    move-result v12

    .line 2688
    .local v12, "hR0":I
    move/from16 v0, v20

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v23, v5, 0x1

    .line 2689
    .local v23, "hNRepl":I
    sub-int v4, v20, v12

    .line 2691
    .local v4, "bal":I
    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v13, p5

    .line 2692
    invoke-direct/range {v5 .. v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->rebalanceToRight_nl(JJJILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide p3

    goto :goto_0

    .line 2694
    :cond_3
    const/4 v5, -0x1

    if-ge v4, v5, :cond_4

    move-object/from16 v13, p0

    move-wide/from16 v14, p1

    move-wide/from16 v16, p3

    move-object/from16 v21, p5

    .line 2695
    invoke-direct/range {v13 .. v21}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->rebalanceToLeft_nl(JJJILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide p3

    goto :goto_0

    .line 2697
    :cond_4
    move/from16 v0, v23

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 2700
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(JI)V

    .line 2703
    invoke-direct/range {p0 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->fixHeight_nl(J)J

    move-result-wide p3

    goto :goto_0

    .line 2707
    :cond_5
    const-wide/16 p3, 0x0

    goto :goto_0
.end method

.method private rootHolder()J
    .locals 10

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 990
    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, v1

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->newNode(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private rootHolder(J)J
    .locals 11
    .param p1, "rootHolderSnapshot"    # J

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 998
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v8

    move-object v0, p0

    move-object v3, v1

    move-wide v6, v4

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->newNode(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private rotateLeftOverRight_nl(JJIJJIILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J
    .locals 24
    .param p1, "nParent"    # J
    .param p3, "n"    # J
    .param p5, "hL"    # I
    .param p6, "nR"    # J
    .param p8, "nRL"    # J
    .param p10, "hRR"    # I
    .param p11, "hRLR"    # I
    .param p12, "unlinked"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;

    .prologue
    .line 3117
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v18

    .line 3118
    .local v18, "nodeOVL":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v20

    .line 3120
    .local v20, "rightOVL":J
    invoke-virtual/range {p0 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v12

    .line 3121
    .local v12, "nPL":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    move-object/from16 v3, p12

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->unsharedLeft(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide v14

    .line 3123
    .local v14, "nRLL":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    move-object/from16 v3, p12

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->unsharedRight(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide v16

    .line 3124
    .local v16, "nRLR":J
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I

    move-result v9

    .line 3126
    .local v9, "hRLL":I
    sget-boolean v11, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v11, :cond_0

    invoke-static/range {v18 .. v19}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 3127
    :cond_0
    sget-boolean v11, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v11, :cond_1

    invoke-static/range {v20 .. v21}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 3129
    :cond_1
    invoke-static/range {v18 .. v19}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->beginChange(J)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(JJ)V

    .line 3130
    invoke-static/range {v20 .. v21}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->beginChange(J)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(JJ)V

    .line 3133
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2, v14, v15}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(JJ)V

    .line 3135
    const-wide/16 v22, 0x0

    cmp-long v11, v14, v22

    if-eqz v11, :cond_2

    .line 3136
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v14, v15, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(JJ)V

    .line 3139
    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    move-wide/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(JJ)V

    .line 3141
    const-wide/16 v22, 0x0

    cmp-long v11, v16, v22

    if-eqz v11, :cond_3

    .line 3142
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide/from16 v3, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(JJ)V

    .line 3145
    :cond_3
    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    move-wide/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(JJ)V

    .line 3146
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    move-wide/from16 v3, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(JJ)V

    .line 3148
    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    move-wide/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(JJ)V

    .line 3149
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(JJ)V

    .line 3151
    cmp-long v11, v12, p3

    if-nez v11, :cond_4

    .line 3152
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(JJ)V

    .line 3158
    :goto_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    move-wide/from16 v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(JJ)V

    .line 3161
    move/from16 v0, p5

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v8, v11, 0x1

    .line 3162
    .local v8, "hNRepl":I
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v8}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(JI)V

    .line 3164
    move/from16 v0, p11

    move/from16 v1, p10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v10, v11, 0x1

    .line 3165
    .local v10, "hRRepl":I
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    invoke-direct {v0, v1, v2, v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(JI)V

    .line 3166
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    invoke-direct {v0, v1, v2, v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(JI)V

    .line 3168
    invoke-static/range {v18 .. v19}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->endChange(J)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(JJ)V

    .line 3169
    invoke-static/range {v20 .. v21}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->endChange(J)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(JJ)V

    .line 3171
    sget-boolean v11, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v11, :cond_5

    sub-int v11, p10, p11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/16 v22, 0x1

    move/from16 v0, v22

    if-le v11, v0, :cond_5

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 3155
    .end local v8    # "hNRepl":I
    .end local v10    # "hRRepl":I
    :cond_4
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p8

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(JJ)V

    goto :goto_0

    .line 3173
    .restart local v8    # "hNRepl":I
    .restart local v10    # "hRRepl":I
    :cond_5
    sub-int v6, v9, p5

    .line 3175
    .local v6, "balN":I
    const/4 v11, -0x1

    if-lt v6, v11, :cond_6

    const/4 v11, 0x1

    if-le v6, v11, :cond_7

    .line 3189
    .end local p3    # "n":J
    :cond_6
    :goto_1
    return-wide p3

    .line 3179
    .restart local p3    # "n":J
    :cond_7
    const-wide/16 v22, 0x0

    cmp-long v11, v14, v22

    if-eqz v11, :cond_8

    if-nez p5, :cond_9

    :cond_8
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOptIsNull(J)Z

    move-result v11

    if-nez v11, :cond_6

    .line 3183
    :cond_9
    sub-int v7, v10, v8

    .line 3185
    .local v7, "balRL":I
    const/4 v11, -0x1

    if-lt v7, v11, :cond_a

    const/4 v11, 0x1

    if-le v7, v11, :cond_b

    :cond_a
    move-wide/from16 p3, p8

    .line 3186
    goto :goto_1

    .line 3189
    :cond_b
    invoke-direct/range {p0 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->fixHeight_nl(J)J

    move-result-wide p3

    goto :goto_1
.end method

.method private rotateLeft_nl(JJIJJII)J
    .locals 15
    .param p1, "nParent"    # J
    .param p3, "n"    # J
    .param p5, "hL"    # I
    .param p6, "nR"    # J
    .param p8, "nRL"    # J
    .param p10, "hRL"    # I
    .param p11, "hRR"    # I

    .prologue
    .line 2944
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v10

    .line 2946
    .local v10, "nodeOVL":J
    sget-boolean v7, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    invoke-static {v10, v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 2948
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v8

    .line 2950
    .local v8, "nPL":J
    invoke-static {v10, v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->beginChange(J)J

    move-result-wide v12

    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v12, v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(JJ)V

    .line 2953
    move-wide/from16 v0, p3

    move-wide/from16 v2, p8

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(JJ)V

    .line 2955
    const-wide/16 v12, 0x0

    cmp-long v7, p8, v12

    if-eqz v7, :cond_1

    .line 2956
    move-wide/from16 v0, p8

    move-wide/from16 v2, p3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(JJ)V

    .line 2959
    :cond_1
    move-wide/from16 v0, p6

    move-wide/from16 v2, p3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(JJ)V

    .line 2960
    move-wide/from16 v0, p3

    move-wide/from16 v2, p6

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(JJ)V

    .line 2962
    cmp-long v7, v8, p3

    if-nez v7, :cond_3

    .line 2963
    move-wide/from16 v0, p1

    move-wide/from16 v2, p6

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(JJ)V

    .line 2969
    :goto_0
    move-wide/from16 v0, p6

    move-wide/from16 v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(JJ)V

    .line 2972
    move/from16 v0, p5

    move/from16 v1, p10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v6, v7, 0x1

    .line 2974
    .local v6, "hNRepl":I
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(JI)V

    .line 2975
    move/from16 v0, p11

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v0, p6

    invoke-direct {p0, v0, v1, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(JI)V

    .line 2977
    invoke-static {v10, v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->endChange(J)J

    move-result-wide v12

    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v12, v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(JJ)V

    .line 2979
    sub-int v4, p10, p5

    .line 2981
    .local v4, "balN":I
    const/4 v7, -0x1

    if-lt v4, v7, :cond_2

    const/4 v7, 0x1

    if-le v4, v7, :cond_4

    .line 2999
    .end local p3    # "n":J
    :cond_2
    :goto_1
    return-wide p3

    .line 2966
    .end local v4    # "balN":I
    .end local v6    # "hNRepl":I
    .restart local p3    # "n":J
    :cond_3
    move-wide/from16 v0, p1

    move-wide/from16 v2, p6

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(JJ)V

    goto :goto_0

    .line 2985
    .restart local v4    # "balN":I
    .restart local v6    # "hNRepl":I
    :cond_4
    const-wide/16 v12, 0x0

    cmp-long v7, p8, v12

    if-eqz v7, :cond_5

    if-nez p5, :cond_6

    :cond_5
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOptIsNull(J)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2989
    :cond_6
    sub-int v5, p11, v6

    .line 2991
    .local v5, "balR":I
    const/4 v7, -0x1

    if-lt v5, v7, :cond_7

    const/4 v7, 0x1

    if-le v5, v7, :cond_8

    :cond_7
    move-wide/from16 p3, p6

    .line 2992
    goto :goto_1

    .line 2995
    :cond_8
    if-nez p11, :cond_9

    move-wide/from16 v0, p6

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOptIsNull(J)Z

    move-result v7

    if-eqz v7, :cond_9

    move-wide/from16 p3, p6

    .line 2996
    goto :goto_1

    .line 2999
    :cond_9
    invoke-direct/range {p0 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->fixHeight_nl(J)J

    move-result-wide p3

    goto :goto_1
.end method

.method private rotateRightOverLeft_nl(JJJIIJILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J
    .locals 25
    .param p1, "nParent"    # J
    .param p3, "n"    # J
    .param p5, "nL"    # J
    .param p7, "hR"    # I
    .param p8, "hLL"    # I
    .param p9, "nLR"    # J
    .param p11, "hLRL"    # I
    .param p12, "unlinked"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;

    .prologue
    .line 3015
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v20

    .line 3016
    .local v20, "nodeOVL":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v12

    .line 3018
    .local v12, "leftOVL":J
    invoke-virtual/range {p0 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v18

    .line 3019
    .local v18, "nPL":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p9

    move-object/from16 v3, p12

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->unsharedLeft(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide v14

    .line 3020
    .local v14, "nLRL":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p9

    move-object/from16 v3, p12

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->unsharedRight(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide v16

    .line 3021
    .local v16, "nLRR":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I

    move-result v8

    .line 3023
    .local v8, "hLRR":I
    sget-boolean v11, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v11, :cond_0

    invoke-static/range {v20 .. v21}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 3024
    :cond_0
    sget-boolean v11, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v11, :cond_1

    invoke-static {v12, v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 3026
    :cond_1
    invoke-static/range {v20 .. v21}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->beginChange(J)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(JJ)V

    .line 3027
    invoke-static {v12, v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->beginChange(J)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(JJ)V

    .line 3030
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(JJ)V

    .line 3032
    const-wide/16 v22, 0x0

    cmp-long v11, v16, v22

    if-eqz v11, :cond_2

    .line 3033
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(JJ)V

    .line 3036
    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v14, v15}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(JJ)V

    .line 3038
    const-wide/16 v22, 0x0

    cmp-long v11, v14, v22

    if-eqz v11, :cond_3

    .line 3039
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-direct {v0, v14, v15, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(JJ)V

    .line 3042
    :cond_3
    move-object/from16 v0, p0

    move-wide/from16 v1, p9

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(JJ)V

    .line 3043
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p9

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(JJ)V

    .line 3045
    move-object/from16 v0, p0

    move-wide/from16 v1, p9

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(JJ)V

    .line 3046
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p9

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(JJ)V

    .line 3048
    cmp-long v11, v18, p3

    if-nez v11, :cond_4

    .line 3049
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p9

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(JJ)V

    .line 3055
    :goto_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p9

    move-wide/from16 v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(JJ)V

    .line 3058
    move/from16 v0, p7

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v10, v11, 0x1

    .line 3059
    .local v10, "hNRepl":I
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(JI)V

    .line 3061
    move/from16 v0, p8

    move/from16 v1, p11

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v9, v11, 0x1

    .line 3062
    .local v9, "hLRepl":I
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-direct {v0, v1, v2, v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(JI)V

    .line 3063
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p9

    invoke-direct {v0, v1, v2, v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(JI)V

    .line 3065
    invoke-static/range {v20 .. v21}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->endChange(J)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(JJ)V

    .line 3066
    invoke-static {v12, v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->endChange(J)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(JJ)V

    .line 3070
    sget-boolean v11, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v11, :cond_5

    sub-int v11, p8, p11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/16 v22, 0x1

    move/from16 v0, v22

    if-le v11, v0, :cond_5

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 3052
    .end local v9    # "hLRepl":I
    .end local v10    # "hNRepl":I
    :cond_4
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p9

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(JJ)V

    goto :goto_0

    .line 3071
    .restart local v9    # "hLRepl":I
    .restart local v10    # "hNRepl":I
    :cond_5
    sget-boolean v11, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v11, :cond_7

    if-eqz p8, :cond_6

    const-wide/16 v22, 0x0

    cmp-long v11, v14, v22

    if-nez v11, :cond_7

    :cond_6
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOptIsNull(J)Z

    move-result v11

    if-eqz v11, :cond_7

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 3080
    :cond_7
    sub-int v7, v8, p7

    .line 3082
    .local v7, "balN":I
    const/4 v11, -0x1

    if-lt v7, v11, :cond_8

    const/4 v11, 0x1

    if-le v7, v11, :cond_9

    .line 3101
    .end local p3    # "n":J
    :cond_8
    :goto_1
    return-wide p3

    .line 3088
    .restart local p3    # "n":J
    :cond_9
    const-wide/16 v22, 0x0

    cmp-long v11, v16, v22

    if-eqz v11, :cond_a

    if-nez p7, :cond_b

    :cond_a
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOptIsNull(J)Z

    move-result v11

    if-nez v11, :cond_8

    .line 3094
    :cond_b
    sub-int v6, v9, v10

    .line 3096
    .local v6, "balLR":I
    const/4 v11, -0x1

    if-lt v6, v11, :cond_c

    const/4 v11, 0x1

    if-le v6, v11, :cond_d

    :cond_c
    move-wide/from16 p3, p9

    .line 3097
    goto :goto_1

    .line 3101
    :cond_d
    invoke-direct/range {p0 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->fixHeight_nl(J)J

    move-result-wide p3

    goto :goto_1
.end method

.method private rotateRight_nl(JJJIIJI)J
    .locals 15
    .param p1, "nParent"    # J
    .param p3, "n"    # J
    .param p5, "nL"    # J
    .param p7, "hR"    # I
    .param p8, "hLL"    # I
    .param p9, "nLR"    # J
    .param p11, "hLR"    # I

    .prologue
    .line 2862
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v10

    .line 2864
    .local v10, "nodeOVL":J
    sget-boolean v7, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    invoke-static {v10, v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 2866
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v8

    .line 2868
    .local v8, "nPL":J
    invoke-static {v10, v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->beginChange(J)J

    move-result-wide v12

    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v12, v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(JJ)V

    .line 2870
    move-wide/from16 v0, p3

    move-wide/from16 v2, p9

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(JJ)V

    .line 2872
    const-wide/16 v12, 0x0

    cmp-long v7, p9, v12

    if-eqz v7, :cond_1

    .line 2873
    move-wide/from16 v0, p9

    move-wide/from16 v2, p3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(JJ)V

    .line 2876
    :cond_1
    move-wide/from16 v0, p5

    move-wide/from16 v2, p3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(JJ)V

    .line 2877
    move-wide/from16 v0, p3

    move-wide/from16 v2, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(JJ)V

    .line 2879
    cmp-long v7, v8, p3

    if-nez v7, :cond_3

    .line 2880
    move-wide/from16 v0, p1

    move-wide/from16 v2, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(JJ)V

    .line 2886
    :goto_0
    move-wide/from16 v0, p5

    move-wide/from16 v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->parent(JJ)V

    .line 2889
    move/from16 v0, p11

    move/from16 v1, p7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v6, v7, 0x1

    .line 2890
    .local v6, "hNRepl":I
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(JI)V

    .line 2891
    move/from16 v0, p8

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v0, p5

    invoke-direct {p0, v0, v1, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(JI)V

    .line 2893
    invoke-static {v10, v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->endChange(J)J

    move-result-wide v12

    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v12, v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(JJ)V

    .line 2902
    sub-int v5, p11, p7

    .line 2904
    .local v5, "balN":I
    const/4 v7, -0x1

    if-lt v5, v7, :cond_2

    const/4 v7, 0x1

    if-le v5, v7, :cond_4

    .line 2929
    .end local p3    # "n":J
    :cond_2
    :goto_1
    return-wide p3

    .line 2883
    .end local v5    # "balN":I
    .end local v6    # "hNRepl":I
    .restart local p3    # "n":J
    :cond_3
    move-wide/from16 v0, p1

    move-wide/from16 v2, p5

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(JJ)V

    goto :goto_0

    .line 2911
    .restart local v5    # "balN":I
    .restart local v6    # "hNRepl":I
    :cond_4
    const-wide/16 v12, 0x0

    cmp-long v7, p9, v12

    if-eqz v7, :cond_5

    if-nez p7, :cond_6

    :cond_5
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOptIsNull(J)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2917
    :cond_6
    sub-int v4, p8, v6

    .line 2919
    .local v4, "balL":I
    const/4 v7, -0x1

    if-lt v4, v7, :cond_7

    const/4 v7, 0x1

    if-le v4, v7, :cond_8

    :cond_7
    move-wide/from16 p3, p5

    .line 2920
    goto :goto_1

    .line 2924
    :cond_8
    if-nez p8, :cond_9

    move-wide/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOptIsNull(J)Z

    move-result v7

    if-eqz v7, :cond_9

    move-wide/from16 p3, p5

    .line 2925
    goto :goto_1

    .line 2929
    :cond_9
    invoke-direct/range {p0 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->fixHeight_nl(J)J

    move-result-wide p3

    goto :goto_1
.end method

.method private setChild(JCJ)V
    .locals 1
    .param p1, "ptr"    # J
    .param p3, "dir"    # C
    .param p4, "node"    # J

    .prologue
    .line 543
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const/16 v0, 0x4c

    if-ne p3, v0, :cond_0

    .line 544
    invoke-direct {p0, p1, p2, p4, p5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(JJ)V

    .line 549
    :goto_0
    return-void

    .line 547
    :cond_0
    invoke-virtual {p0, p1, p2, p4, p5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(JJ)V

    goto :goto_0
.end method

.method private static shouldUpdate(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "func"    # I
    .param p1, "prev"    # Ljava/lang/Object;
    .param p2, "expected"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1788
    packed-switch p0, :pswitch_data_0

    .line 1796
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1792
    :pswitch_0
    if-nez p1, :cond_1

    .line 1802
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    :cond_1
    move v0, v1

    .line 1792
    goto :goto_0

    .line 1794
    :pswitch_2
    if-nez p1, :cond_0

    move v0, v1

    goto :goto_0

    .line 1798
    :cond_2
    if-nez p1, :cond_3

    move v0, v1

    .line 1799
    goto :goto_0

    .line 1802
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1788
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private shrinkOVL(J)J
    .locals 5
    .param p1, "ptr"    # J

    .prologue
    .line 453
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x20

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readLongVolatile(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private shrinkOVL(JJ)V
    .locals 5
    .param p1, "ptr"    # J
    .param p3, "shrinkOVL"    # J

    .prologue
    .line 469
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x20

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeLongVolatile(JJ)V

    .line 470
    return-void
.end method

.method private static sizeDelta(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p0, "func"    # I
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1832
    packed-switch p0, :pswitch_data_0

    .line 1844
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    :goto_0
    return v1

    .line 1834
    .restart local p1    # "result":Ljava/lang/Object;
    :pswitch_0
    if-eqz p1, :cond_1

    :goto_1
    if-eqz p2, :cond_2

    :goto_2
    add-int v1, v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 1837
    :pswitch_1
    sget-boolean v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1838
    :cond_3
    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 1841
    :pswitch_2
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    move v1, v2

    goto :goto_0

    .line 1844
    .end local p1    # "result":Ljava/lang/Object;
    :cond_4
    if-nez p2, :cond_0

    move v1, v2

    goto :goto_0

    .line 1832
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private unsharedChild(JCLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J
    .locals 3
    .param p1, "ptr"    # J
    .param p3, "dir"    # C
    .param p4, "unlinked"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;

    .prologue
    .line 619
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const/16 v0, 0x4c

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p2, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->unsharedLeft(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->unsharedRight(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private unsharedLeft(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J
    .locals 3
    .param p1, "ptr"    # J
    .param p3, "unlinked"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;

    .prologue
    .line 582
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v0

    .line 584
    .local v0, "cl":J
    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isShared(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 590
    .end local v0    # "cl":J
    :goto_0
    return-wide v0

    .line 588
    .restart local v0    # "cl":J
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lazyCopyChildren(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)V

    .line 590
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private unsharedRight(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J
    .locals 3
    .param p1, "ptr"    # J
    .param p3, "unlinked"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;

    .prologue
    .line 600
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v0

    .line 602
    .local v0, "cr":J
    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isShared(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 608
    .end local v0    # "cr":J
    :goto_0
    return-wide v0

    .line 606
    .restart local v0    # "cr":J
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lazyCopyChildren(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)V

    .line 608
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private update(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/lang/Object;
    .locals 11
    .param p2, "func"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1894
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    .local p3, "expected":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    .local p4, "newValue":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v2

    .line 1896
    .local v2, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    new-instance v8, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V

    .line 1898
    .local v8, "unlinked":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;
    const/4 v10, 0x0

    .line 1901
    .local v10, "sd":I
    :try_start_0
    iget-wide v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->holderRef:J

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->updateUnderRoot(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Ljava/lang/Comparable;ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Ljava/lang/Object;

    move-result-object v9

    .line 1903
    .local v9, "result":Ljava/lang/Object;
    invoke-static {p2, v9, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->sizeDelta(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    .line 1905
    if-eqz v10, :cond_0

    .line 1906
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1911
    :cond_0
    invoke-direct {p0, v8}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->deallocate(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)V

    return-object v9

    .end local v9    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    invoke-direct {p0, v8}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->deallocate(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)V

    throw v0
.end method

.method private static updateResult(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "func"    # I
    .param p1, "prev"    # Ljava/lang/Object;

    .prologue
    .line 1822
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .end local p1    # "prev":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method

.method private updateUnderRoot(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Ljava/lang/Comparable;ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Ljava/lang/Object;
    .locals 22
    .param p3, "func"    # I
    .param p6, "holder"    # J
    .param p8, "unlinked"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Comparable",
            "<-TK;>;ITV;TV;J",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1994
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    .local p2, "k":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local p4, "expected":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    .local p5, "newValue":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    const/16 v19, 0x0

    .line 1997
    .local v19, "i":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    move-object/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->unsharedRight(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)J

    move-result-wide v14

    .line 1999
    .local v14, "right":J
    const-wide/16 v6, 0x0

    cmp-long v6, v14, v6

    if-nez v6, :cond_3

    .line 2001
    const/4 v6, 0x0

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v0, v6, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shouldUpdate(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2002
    const/4 v6, 0x0

    move/from16 v0, p3

    invoke-static {v0, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->noUpdateResult(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 2023
    :goto_1
    return-object v20

    .line 2005
    :cond_1
    if-eqz p5, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-wide/from16 v3, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->attemptInsertIntoEmpty(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2007
    :cond_2
    const/4 v6, 0x0

    move/from16 v0, p3

    invoke-static {v0, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->updateResult(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    goto :goto_1

    .line 2012
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v16

    .line 2014
    .local v16, "ovl":J
    invoke-static/range {v16 .. v17}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isShrinkingOrUnlinked(J)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2015
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v14, v15, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->waitUntilShrinkCompleted(JJ)V

    goto :goto_0

    .line 2018
    :cond_4
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v6

    cmp-long v6, v14, v6

    if-nez v6, :cond_0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-wide/from16 v12, p6

    move-object/from16 v18, p8

    .line 2020
    invoke-direct/range {v6 .. v18}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->attemptUpdate(Ljava/lang/Object;Ljava/lang/Comparable;ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;JJJLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Ljava/lang/Object;

    move-result-object v20

    .line 2022
    .local v20, "vo":Ljava/lang/Object;
    sget-object v6, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpecialRetry:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-object/from16 v0, v20

    if-eq v0, v6, :cond_0

    goto :goto_1
.end method

.method private vOpt(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 7
    .param p1, "ptr"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v4, 0x8

    add-long/2addr v4, p1

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readLongVolatile(J)J

    move-result-wide v0

    .line 285
    .local v0, "resPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 286
    const/4 v2, 0x0

    .line 288
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->valFactory:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory;

    invoke-interface {v2, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointerFactory;->createPointer(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v2

    goto :goto_0
.end method

.method private vOpt(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)V
    .locals 7
    .param p1, "ptr"    # J
    .param p3, "newValue"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .prologue
    .line 486
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOpt(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v2

    .line 488
    .local v2, "old":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    const-wide/16 v0, 0x0

    .line 490
    .local v0, "newValPtr":J
    if-eqz p3, :cond_0

    .line 491
    invoke-interface {p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;->incrementRefCount()V

    .line 493
    invoke-interface {p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;->pointer()J

    move-result-wide v0

    .line 496
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 498
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v4, 0x8

    add-long/2addr v4, p1

    invoke-virtual {v3, v4, v5, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeLongVolatile(JJ)V

    .line 500
    if-eqz v2, :cond_2

    .line 501
    invoke-interface {v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;->decrementRefCount()V

    .line 502
    :cond_2
    return-void
.end method

.method private vOpt0(J)V
    .locals 7
    .param p1, "ptr"    # J

    .prologue
    .line 478
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x8

    add-long/2addr v2, p1

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeLongVolatile(JJ)V

    .line 479
    return-void
.end method

.method private vOptIsNull(J)Z
    .locals 5
    .param p1, "ptr"    # J

    .prologue
    .line 296
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x8

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readLongVolatile(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validate(J)J
    .locals 11
    .param p1, "node"    # J

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const-wide/16 v6, 0x0

    .line 1253
    cmp-long v8, p1, v6

    if-nez v8, :cond_1

    move-wide p1, v6

    .line 1280
    .end local p1    # "node":J
    :cond_0
    :goto_0
    return-wide p1

    .line 1256
    .restart local p1    # "node":J
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v0

    .line 1258
    .local v0, "left":J
    cmp-long v8, v0, v6

    if-eqz v8, :cond_2

    .line 1259
    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v8

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_0

    .line 1262
    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->validate(J)J

    move-result-wide v2

    .line 1264
    .local v2, "res":J
    cmp-long v8, v2, v6

    if-eqz v8, :cond_2

    move-wide p1, v2

    .line 1265
    goto :goto_0

    .line 1268
    .end local v2    # "res":J
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v4

    .line 1270
    .local v4, "right":J
    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    .line 1271
    invoke-direct {p0, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v8

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v8

    if-lez v8, :cond_0

    .line 1274
    invoke-direct {p0, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->validate(J)J

    move-result-wide v2

    .line 1276
    .restart local v2    # "res":J
    cmp-long v8, v2, v6

    if-eqz v8, :cond_3

    move-wide p1, v2

    .line 1277
    goto :goto_0

    .end local v2    # "res":J
    :cond_3
    move-wide p1, v6

    .line 1280
    goto :goto_0
.end method

.method private validatedHeight(J)I
    .locals 11
    .param p1, "ptr"    # J

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    .line 686
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    move v1, v4

    .line 687
    .local v1, "hL":I
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    move v2, v4

    .line 689
    .local v2, "hR":I
    :goto_1
    sget-boolean v4, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    sub-int v4, v1, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 686
    .end local v1    # "hL":I
    .end local v2    # "hR":I
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->left(J)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->validatedHeight(J)I

    move-result v1

    goto :goto_0

    .line 687
    .restart local v1    # "hL":I
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->validatedHeight(J)I

    move-result v2

    goto :goto_1

    .line 690
    .restart local v2    # "hR":I
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 692
    .local v0, "h":I
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I

    move-result v3

    .line 694
    .local v3, "resH":I
    sget-boolean v4, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    if-eq v0, v3, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 696
    :cond_3
    return v3
.end method

.method private waitUntilShrinkCompleted(JJ)V
    .locals 5
    .param p1, "ptr"    # J
    .param p3, "ovl"    # J

    .prologue
    .line 653
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    invoke-static {p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isUnlinked(J)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->isShrinking(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 679
    :cond_0
    return-void

    .line 657
    :cond_1
    const/4 v1, 0x0

    .local v1, "tries":I
    :goto_0
    sget v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->SpinCount:I

    if-ge v1, v2, :cond_2

    .line 658
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-nez v2, :cond_0

    .line 657
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 663
    :cond_2
    const/4 v1, 0x0

    :goto_1
    sget v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->YieldCount:I

    if-ge v1, v2, :cond_3

    .line 664
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 666
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-nez v2, :cond_0

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 673
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lock:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock;->lock(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;

    move-result-object v0

    .line 675
    .local v0, "l":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;
    if-eqz v0, :cond_4

    .line 676
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyLock$Lock;->unlock()V

    .line 678
    :cond_4
    sget-boolean v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->shrinkOVL(J)J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private writeLink(JJ)V
    .locals 7
    .param p1, "addr"    # J
    .param p3, "val"    # J

    .prologue
    .line 374
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 376
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x28

    add-long/2addr v2, p1

    neg-long v4, p3

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeLongVolatile(JJ)V

    .line 405
    return-void
.end method


# virtual methods
.method protected afterNodeUpdate_nl(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)V
    .locals 0
    .param p1, "node"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .prologue
    .line 2321
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p3, "val":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    return-void
.end method

.method public bridge synthetic ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->ceilingEntry(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingEntry(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v4, 0x0

    .line 1626
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v6, 0x4c

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public bridge synthetic ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->ceilingKey(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v2, 0x1

    .line 1606
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x4c

    move-object v0, p0

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1300
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->clone()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1122
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1126
    .local v0, "copy":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    sget-boolean v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparator:Ljava/util/Comparator;

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1123
    .end local v0    # "copy":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    :catch_0
    move-exception v1

    .line 1124
    .local v1, "xx":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2

    .line 1128
    .end local v1    # "xx":Ljava/lang/CloneNotSupportedException;
    .restart local v0    # "copy":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    :cond_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->holderRef:J

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->rootHolder(J)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->holderRef:J

    .line 1129
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->root()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->markShared(J)J

    .line 1131
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->size:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1132
    new-instance v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V

    iput-object v2, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->recycleBin:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;

    .line 1134
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->snapshotsCnt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->snapshotId:Ljava/lang/Long;

    .line 1136
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->snapshots:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v3, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->snapshotId:Ljava/lang/Long;

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    return-object v0
.end method

.method public close()V
    .locals 8

    .prologue
    .line 1074
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->snapshotId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 1075
    sget-boolean v3, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->recycleBin:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1077
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V

    .line 1079
    .local v0, "q":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->root()J

    move-result-wide v4

    invoke-direct {p0, v4, v5, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->deallocateSubTree(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;)V

    .line 1093
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    iget-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->holderRef:J

    const-wide/16 v6, 0x38

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->release(JJ)V

    .line 1095
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1096
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->doDeallocateSnapshot(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;)V

    .line 1097
    :cond_2
    return-void

    .line 1082
    .end local v0    # "q":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->snapshots:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->snapshotId:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    .line 1084
    .local v2, "s":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    sget-boolean v3, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    if-eq v2, p0, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1086
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->recycleBin:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;

    .line 1088
    .restart local v0    # "q":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->recycleBin:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;->stop()Z

    move-result v1

    .line 1090
    .local v1, "res":Z
    sget-boolean v3, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method protected comparable(Ljava/lang/Object;)Ljava/lang/Comparable;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Comparable",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 1324
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 1325
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1328
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_1

    .line 1329
    check-cast p1, Ljava/lang/Comparable;

    .line 1332
    .end local p1    # "key":Ljava/lang/Object;
    :goto_0
    return-object p1

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$2;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 1305
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1310
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->getImpl(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3593
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 3755
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    const/4 v9, 0x1

    move-object v1, p0

    move-object v2, p0

    move-object v4, v3

    move-object v6, v3

    move-object v7, v3

    move v8, v5

    move-object v10, v3

    invoke-direct/range {v0 .. v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Ljava/lang/Comparable;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Ljava/lang/Comparable;ZZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V

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
    .line 3199
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$EntrySet;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1474
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const/4 v0, 0x0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->extreme(ZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    return-object v0
.end method

.method public bridge synthetic firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->firstKey()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1469
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->extremeKeyOrThrow(C)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->floorEntry(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v2, 0x0

    .line 1621
    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v6, 0x52

    move-object v0, p0

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public bridge synthetic floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->floorKey(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v4, 0x1

    .line 1601
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    const/16 v6, 0x52

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->get(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1315
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->getImpl(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->headMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->headMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->headMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->headMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3745
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "toKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->headMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 11
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "toKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 3730
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v7

    move-object v1, p0

    move-object v2, p0

    move-object v4, v3

    move-object v6, p1

    move v8, p2

    move v9, v5

    move-object v10, v3

    invoke-direct/range {v0 .. v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Ljava/lang/Comparable;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Ljava/lang/Comparable;ZZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V

    return-object v0
.end method

.method public bridge synthetic higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->higherEntry(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v2, 0x0

    .line 1631
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    const/4 v3, 0x0

    const/16 v6, 0x4c

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public bridge synthetic higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->higherKey(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v2, 0x0

    .line 1611
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x4c

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    .line 1295
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->root()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected key(JLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)V
    .locals 7
    .param p1, "ptr"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTK;)V"
        }
    .end annotation

    .prologue
    .line 509
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p3, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const-wide/16 v0, 0x0

    .line 511
    .local v0, "keyPtr":J
    if-eqz p3, :cond_0

    .line 512
    invoke-interface {p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;->incrementRefCount()V

    .line 514
    invoke-interface {p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;->pointer()J

    move-result-wide v0

    .line 517
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v4, 0x0

    add-long/2addr v4, p1

    invoke-virtual {v2, v4, v5, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeLongVolatile(JJ)V

    .line 518
    return-void
.end method

.method protected keyPtr(J)J
    .locals 5
    .param p1, "node"    # J

    .prologue
    .line 261
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x0

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readLongVolatile(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public keySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3194
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1484
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const/4 v0, 0x0

    const/16 v1, 0x52

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->extreme(ZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    return-object v0
.end method

.method public bridge synthetic lastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lastKey()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1479
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const/16 v0, 0x52

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->extremeKeyOrThrow(C)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method left(J)J
    .locals 5
    .param p1, "ptr"    # J

    .prologue
    .line 312
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x10

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readLongVolatile(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lowerEntry(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v2, 0x0

    .line 1616
    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    const/16 v6, 0x52

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public bridge synthetic lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->lowerKey(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v2, 0x0

    .line 1596
    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v3

    const/4 v5, 0x1

    const/16 v6, 0x52

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    return-object v0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3584
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$3;

    invoke-direct {v0, p0, p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$3;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method nodes(Z)J
    .locals 2
    .param p1, "nonNull"    # Z

    .prologue
    .line 1155
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->root()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->nodes(JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2375
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V

    .line 2378
    .local v0, "unlinked":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;
    const/16 v1, 0x4c

    :try_start_0
    invoke-direct {p0, v1, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->pollExtremeEntry(CLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2381
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->deallocate(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->deallocate(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)V

    throw v1
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2387
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V

    .line 2390
    .local v0, "unlinked":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;
    const/16 v1, 0x52

    :try_start_0
    invoke-direct {p0, v1, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->pollExtremeEntry(CLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2393
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->deallocate(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->deallocate(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$LongArray;)V

    throw v1
.end method

.method print()Ljava/lang/String;
    .locals 12

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const/16 v9, 0xa

    const/4 v5, 0x0

    .line 1176
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->root()J

    move-result-wide v2

    .line 1178
    .local v2, "root":J
    const-wide/16 v10, 0x0

    cmp-long v1, v2, v10

    if-nez v1, :cond_0

    .line 1179
    const-string v1, "Empty tree"

    .line 1190
    :goto_0
    return-object v1

    .line 1181
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .local v4, "s":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/ignite/internal/util/typedef/internal/SB;>;"
    move-object v1, p0

    move v6, v5

    .line 1183
    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->print(JLjava/util/ArrayList;II)I

    .line 1185
    new-instance v7, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v7}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    .line 1187
    .local v7, "res":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    .line 1188
    .local v8, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto :goto_1

    .line 1190
    .end local v8    # "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->put(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public put(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1850
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    .local p2, "value":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->update(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    return-object v0
.end method

.method public bridge synthetic putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->putIfAbsent(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1855
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    .local p2, "value":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->update(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->remove(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
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
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 1870
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "key":Ljava/lang/Object;
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->update(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1875
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 1876
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1879
    :cond_0
    if-nez p2, :cond_1

    .line 1880
    const/4 v0, 0x0

    .line 1883
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "key":Ljava/lang/Object;
    const/4 v0, 0x3

    check-cast p2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p2    # "value":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->update(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->replace(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public replace(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1860
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    .local p2, "value":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->update(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    return-object v0
.end method

.method public bridge synthetic replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->replace(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v0

    return v0
.end method

.method public replace(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 1865
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    .local p2, "oldValue":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    .local p3, "newValue":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->update(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ILorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method right(J)J
    .locals 5
    .param p1, "ptr"    # J

    .prologue
    .line 304
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x18

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readLongVolatile(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected right(JJ)V
    .locals 5
    .param p1, "ptr"    # J
    .param p3, "nodePtr"    # J

    .prologue
    .line 320
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 322
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v2, 0x18

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeLongVolatile(JJ)V

    .line 323
    return-void
.end method

.method root()J
    .locals 2

    .prologue
    .line 1145
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->holderRef:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1288
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Z

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p3, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->subMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->subMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->subMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Z

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p3, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->subMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3740
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "fromKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    .local p2, "toKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->subMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 11
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3720
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "fromKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    .local p3, "toKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v4

    .line 3721
    .local v4, "fromCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    invoke-interface {v4, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3722
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3725
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    invoke-virtual {p0, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-object v6, p3

    move v8, p4

    invoke-direct/range {v0 .. v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Ljava/lang/Comparable;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Ljava/lang/Comparable;ZZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->tailMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->tailMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->tailMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->tailMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3750
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "fromKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->tailMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 11
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p1, "fromKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 3735
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v4

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-object v7, v6

    move v9, v8

    move-object v10, v6

    invoke-direct/range {v0 .. v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Ljava/lang/Comparable;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Ljava/lang/Comparable;ZZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V

    return-object v0
.end method

.method validate()V
    .locals 4

    .prologue
    .line 1241
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->root()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->validate(J)J

    move-result-wide v0

    .line 1243
    .local v0, "res":J
    sget-boolean v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1244
    :cond_0
    return-void
.end method
