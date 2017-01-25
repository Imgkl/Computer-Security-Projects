.class public Lorg/jsr166/ConcurrentHashMap8;
.super Ljava/lang/Object;
.source "ConcurrentHashMap8.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsr166/ConcurrentHashMap8$EntrySetView;,
        Lorg/jsr166/ConcurrentHashMap8$ValuesView;,
        Lorg/jsr166/ConcurrentHashMap8$KeySetView;,
        Lorg/jsr166/ConcurrentHashMap8$CHMView;,
        Lorg/jsr166/ConcurrentHashMap8$IntByIntToInt;,
        Lorg/jsr166/ConcurrentHashMap8$LongByLongToLong;,
        Lorg/jsr166/ConcurrentHashMap8$DoubleByDoubleToDouble;,
        Lorg/jsr166/ConcurrentHashMap8$IntToInt;,
        Lorg/jsr166/ConcurrentHashMap8$LongToLong;,
        Lorg/jsr166/ConcurrentHashMap8$DoubleToDouble;,
        Lorg/jsr166/ConcurrentHashMap8$ObjectByObjectToInt;,
        Lorg/jsr166/ConcurrentHashMap8$ObjectByObjectToLong;,
        Lorg/jsr166/ConcurrentHashMap8$ObjectByObjectToDouble;,
        Lorg/jsr166/ConcurrentHashMap8$ObjectToInt;,
        Lorg/jsr166/ConcurrentHashMap8$ObjectToLong;,
        Lorg/jsr166/ConcurrentHashMap8$ObjectToDouble;,
        Lorg/jsr166/ConcurrentHashMap8$Generator;,
        Lorg/jsr166/ConcurrentHashMap8$BiFun;,
        Lorg/jsr166/ConcurrentHashMap8$Fun;,
        Lorg/jsr166/ConcurrentHashMap8$BiAction;,
        Lorg/jsr166/ConcurrentHashMap8$Action;,
        Lorg/jsr166/ConcurrentHashMap8$Segment;,
        Lorg/jsr166/ConcurrentHashMap8$MapEntry;,
        Lorg/jsr166/ConcurrentHashMap8$EntryIterator;,
        Lorg/jsr166/ConcurrentHashMap8$ValueIterator;,
        Lorg/jsr166/ConcurrentHashMap8$KeyIterator;,
        Lorg/jsr166/ConcurrentHashMap8$Traverser;,
        Lorg/jsr166/ConcurrentHashMap8$TreeBin;,
        Lorg/jsr166/ConcurrentHashMap8$TreeNode;,
        Lorg/jsr166/ConcurrentHashMap8$Node;,
        Lorg/jsr166/ConcurrentHashMap8$Spliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ABASE:J

.field private static final ASHIFT:I

.field private static final DEFAULT_CAPACITY:I = 0x10

.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field static final HASH_BITS:I = 0x3fffffff

.field private static final LOAD_FACTOR:F = 0.75f

.field static final LOCKED:I = 0x40000000

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field static final MOVED:I = -0x80000000

.field private static final TRANSFER_BUFFER_SIZE:I = 0x20

.field private static final TREE_THRESHOLD:I = 0x8

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field static final WAITING:I = -0x40000000

.field private static final counterOffset:J

.field private static final serialVersionUID:J = 0x6499de129d87293dL

.field private static final sizeCtlOffset:J


# instance fields
.field private final transient counter:Lorg/jsr166/LongAdder8;

.field private transient entrySet:Lorg/jsr166/ConcurrentHashMap8$EntrySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentHashMap8$EntrySetView",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient keySet:Lorg/jsr166/ConcurrentHashMap8$KeySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentHashMap8$KeySetView",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private segments:[Lorg/jsr166/ConcurrentHashMap8$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jsr166/ConcurrentHashMap8$Segment",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient sizeCtl:I

.field volatile transient table:[Lorg/jsr166/ConcurrentHashMap8$Node;

.field private transient values:Lorg/jsr166/ConcurrentHashMap8$ValuesView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentHashMap8$ValuesView",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 3750
    :try_start_0
    invoke-static {}, Lorg/jsr166/ConcurrentHashMap8;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v4

    sput-object v4, Lorg/jsr166/ConcurrentHashMap8;->UNSAFE:Lsun/misc/Unsafe;

    .line 3751
    const-class v1, Lorg/jsr166/ConcurrentHashMap8;

    .line 3752
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Lorg/jsr166/ConcurrentHashMap8;->UNSAFE:Lsun/misc/Unsafe;

    const-string v5, "counter"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lorg/jsr166/ConcurrentHashMap8;->counterOffset:J

    .line 3754
    sget-object v4, Lorg/jsr166/ConcurrentHashMap8;->UNSAFE:Lsun/misc/Unsafe;

    const-string v5, "sizeCtl"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lorg/jsr166/ConcurrentHashMap8;->sizeCtlOffset:J

    .line 3756
    const-class v2, [Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 3757
    .local v2, "sc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Lorg/jsr166/ConcurrentHashMap8;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v4, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lorg/jsr166/ConcurrentHashMap8;->ABASE:J

    .line 3758
    sget-object v4, Lorg/jsr166/ConcurrentHashMap8;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v4, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 3762
    .local v3, "ss":I
    add-int/lit8 v4, v3, -0x1

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    .line 3763
    new-instance v4, Ljava/lang/Error;

    const-string v5, "data type scale not a power of two"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3759
    .end local v2    # "sc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "ss":I
    :catch_0
    move-exception v0

    .line 3760
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 3764
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "sc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "ss":I
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x1f

    sput v4, Lorg/jsr166/ConcurrentHashMap8;->ASHIFT:I

    .line 3765
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2450
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2451
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    .line 2452
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .line 2464
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2465
    if-gez p1, :cond_0

    .line 2466
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2467
    :cond_0
    const/high16 v1, 0x20000000

    if-lt p1, v1, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    .line 2470
    .local v0, "cap":I
    :goto_0
    new-instance v1, Lorg/jsr166/LongAdder8;

    invoke-direct {v1}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v1, p0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    .line 2471
    iput v0, p0, Lorg/jsr166/ConcurrentHashMap8;->sizeCtl:I

    .line 2472
    return-void

    .line 2467
    .end local v0    # "cap":I
    :cond_1
    ushr-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/jsr166/ConcurrentHashMap8;->tableSizeFor(I)I

    move-result v0

    goto :goto_0
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 2501
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>(IFI)V

    .line 2502
    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 8
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I

    .prologue
    .line 2523
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2524
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    if-ltz p1, :cond_0

    if-gtz p3, :cond_1

    .line 2525
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2526
    :cond_1
    if-ge p1, p3, :cond_2

    .line 2527
    move p1, p3

    .line 2528
    :cond_2
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    int-to-long v6, p1

    long-to-float v1, v6

    div-float/2addr v1, p2

    float-to-double v6, v1

    add-double/2addr v4, v6

    double-to-long v2, v4

    .line 2529
    .local v2, "size":J
    const-wide/32 v4, 0x40000000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    .line 2531
    .local v0, "cap":I
    :goto_0
    new-instance v1, Lorg/jsr166/LongAdder8;

    invoke-direct {v1}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v1, p0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    .line 2532
    iput v0, p0, Lorg/jsr166/ConcurrentHashMap8;->sizeCtl:I

    .line 2533
    return-void

    .line 2529
    .end local v0    # "cap":I
    :cond_3
    long-to-int v1, v2

    invoke-static {v1}, Lorg/jsr166/ConcurrentHashMap8;->tableSizeFor(I)I

    move-result v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2479
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2480
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    .line 2481
    const/16 v0, 0x10

    iput v0, p0, Lorg/jsr166/ConcurrentHashMap8;->sizeCtl:I

    .line 2482
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentHashMap8;->internalPutAll(Ljava/util/Map;)V

    .line 2483
    return-void
.end method

.method static synthetic access$000()Lsun/misc/Unsafe;
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lorg/jsr166/ConcurrentHashMap8;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/jsr166/ConcurrentHashMap8;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jsr166/ConcurrentHashMap8;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 184
    invoke-direct {p0, p1, p2, p3}, Lorg/jsr166/ConcurrentHashMap8;->internalReplace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/jsr166/ConcurrentHashMap8;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jsr166/ConcurrentHashMap8;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lorg/jsr166/ConcurrentHashMap8;->internalPutIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/jsr166/ConcurrentHashMap8;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jsr166/ConcurrentHashMap8;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lorg/jsr166/ConcurrentHashMap8;->internalPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final casTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;Lorg/jsr166/ConcurrentHashMap8$Node;)Z
    .locals 6
    .param p0, "tab"    # [Lorg/jsr166/ConcurrentHashMap8$Node;
    .param p1, "i"    # I
    .param p2, "c"    # Lorg/jsr166/ConcurrentHashMap8$Node;
    .param p3, "v"    # Lorg/jsr166/ConcurrentHashMap8$Node;

    .prologue
    .line 566
    sget-object v0, Lorg/jsr166/ConcurrentHashMap8;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v2, p1

    sget v1, Lorg/jsr166/ConcurrentHashMap8;->ASHIFT:I

    shl-long/2addr v2, v1

    sget-wide v4, Lorg/jsr166/ConcurrentHashMap8;->ABASE:J

    add-long/2addr v2, v4

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final checkForResize()V
    .locals 8

    .prologue
    .line 2017
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    :goto_0
    iget-object v7, p0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;

    .local v7, "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    if-eqz v7, :cond_1

    array-length v6, v7

    .local v6, "n":I
    const/high16 v0, 0x40000000    # 2.0f

    if-ge v6, v0, :cond_1

    iget v4, p0, Lorg/jsr166/ConcurrentHashMap8;->sizeCtl:I

    .local v4, "sc":I
    if-ltz v4, :cond_1

    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->sum()J

    move-result-wide v0

    int-to-long v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    sget-object v0, Lorg/jsr166/ConcurrentHashMap8;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jsr166/ConcurrentHashMap8;->sizeCtlOffset:J

    const/4 v5, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2022
    :try_start_0
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;

    if-ne v7, v0, :cond_0

    .line 2023
    invoke-static {v7}, Lorg/jsr166/ConcurrentHashMap8;->rebuild([Lorg/jsr166/ConcurrentHashMap8$Node;)[Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2024
    shl-int/lit8 v0, v6, 0x1

    ushr-int/lit8 v1, v6, 0x1

    sub-int v4, v0, v1

    .line 2027
    :cond_0
    iput v4, p0, Lorg/jsr166/ConcurrentHashMap8;->sizeCtl:I

    goto :goto_0

    :catchall_0
    move-exception v0

    iput v4, p0, Lorg/jsr166/ConcurrentHashMap8;->sizeCtl:I

    throw v0

    .line 2030
    .end local v4    # "sc":I
    .end local v6    # "n":I
    :cond_1
    return-void
.end method

.method static entryFor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/AbstractMap$SimpleEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/AbstractMap$SimpleEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3256
    .local p0, "k":Ljava/lang/Object;, "TK;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 5

    .prologue
    .line 3776
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3779
    .local v1, "se":Ljava/lang/SecurityException;
    :goto_0
    return-object v2

    .line 3777
    .end local v1    # "se":Ljava/lang/SecurityException;
    :catch_0
    move-exception v1

    .line 3779
    .restart local v1    # "se":Ljava/lang/SecurityException;
    :try_start_1
    new-instance v2, Lorg/jsr166/ConcurrentHashMap8$1;

    invoke-direct {v2}, Lorg/jsr166/ConcurrentHashMap8$1;-><init>()V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3788
    :catch_1
    move-exception v0

    .line 3789
    .local v0, "e":Ljava/security/PrivilegedActionException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final initTable()[Lorg/jsr166/ConcurrentHashMap8$Node;
    .locals 9

    .prologue
    .line 1990
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    :cond_0
    :goto_0
    iget-object v7, p0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;

    .local v7, "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    if-nez v7, :cond_3

    .line 1991
    iget v4, p0, Lorg/jsr166/ConcurrentHashMap8;->sizeCtl:I

    .local v4, "sc":I
    if-gez v4, :cond_1

    .line 1992
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 1993
    :cond_1
    sget-object v0, Lorg/jsr166/ConcurrentHashMap8;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jsr166/ConcurrentHashMap8;->sizeCtlOffset:J

    const/4 v5, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1995
    :try_start_0
    iget-object v7, p0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;

    if-nez v7, :cond_2

    .line 1996
    if-lez v4, :cond_4

    move v6, v4

    .line 1997
    .local v6, "n":I
    :goto_1
    new-array v8, v6, [Lorg/jsr166/ConcurrentHashMap8$Node;

    iput-object v8, p0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1998
    .end local v7    # "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    .local v8, "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    ushr-int/lit8 v0, v6, 0x2

    sub-int v4, v6, v0

    move-object v7, v8

    .line 2001
    .end local v6    # "n":I
    .end local v8    # "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v7    # "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_2
    iput v4, p0, Lorg/jsr166/ConcurrentHashMap8;->sizeCtl:I

    .line 2006
    .end local v4    # "sc":I
    :cond_3
    return-object v7

    .line 1996
    .restart local v4    # "sc":I
    :cond_4
    const/16 v6, 0x10

    goto :goto_1

    .line 2001
    :catchall_0
    move-exception v0

    iput v4, p0, Lorg/jsr166/ConcurrentHashMap8;->sizeCtl:I

    throw v0
.end method

.method private final internalClear()V
    .locals 12

    .prologue
    .line 2251
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    const-wide/16 v0, 0x0

    .line 2252
    .local v0, "delta":J
    const/4 v6, 0x0

    .line 2253
    .local v6, "i":I
    iget-object v9, p0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 2254
    .local v9, "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_0
    :goto_0
    if-eqz v9, :cond_c

    array-length v10, v9

    if-ge v6, v10, :cond_c

    .line 2256
    invoke-static {v9, v6}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v3

    .line 2257
    .local v3, "f":Lorg/jsr166/ConcurrentHashMap8$Node;
    if-nez v3, :cond_1

    .line 2258
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2259
    :cond_1
    iget v4, v3, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .local v4, "fh":I
    const/high16 v10, -0x80000000

    if-ne v4, v10, :cond_6

    .line 2260
    iget-object v5, v3, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .local v5, "fk":Ljava/lang/Object;
    instance-of v10, v5, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    if-eqz v10, :cond_5

    move-object v8, v5

    .line 2261
    check-cast v8, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    .line 2262
    .local v8, "t":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->acquire(I)V

    .line 2264
    :try_start_0
    invoke-static {v9, v6}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v10

    if-ne v10, v3, :cond_4

    .line 2265
    iget-object v7, v8, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->first:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .local v7, "p":Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_1
    if-eqz v7, :cond_3

    .line 2266
    iget-object v10, v7, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    if-eqz v10, :cond_2

    .line 2267
    const/4 v10, 0x0

    iput-object v10, v7, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    .line 2268
    const-wide/16 v10, 0x1

    sub-long/2addr v0, v10

    .line 2265
    :cond_2
    iget-object v7, v7, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    goto :goto_1

    .line 2271
    :cond_3
    const/4 v10, 0x0

    iput-object v10, v8, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->first:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 2272
    const/4 v10, 0x0

    iput-object v10, v8, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->root:Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2273
    add-int/lit8 v6, v6, 0x1

    .line 2276
    .end local v7    # "p":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_4
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->release(I)Z

    goto :goto_0

    :catchall_0
    move-exception v10

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->release(I)Z

    throw v10

    .line 2280
    .end local v8    # "t":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    :cond_5
    check-cast v5, [Lorg/jsr166/ConcurrentHashMap8$Node;

    .end local v5    # "fk":Ljava/lang/Object;
    move-object v9, v5

    check-cast v9, [Lorg/jsr166/ConcurrentHashMap8$Node;

    goto :goto_0

    .line 2282
    :cond_6
    const/high16 v10, 0x40000000    # 2.0f

    and-int/2addr v10, v4

    if-eqz v10, :cond_7

    .line 2283
    iget-object v10, p0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    invoke-virtual {v10, v0, v1}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 2284
    const-wide/16 v0, 0x0

    .line 2285
    invoke-virtual {v3, v9, v6}, Lorg/jsr166/ConcurrentHashMap8$Node;->tryAwaitLock([Lorg/jsr166/ConcurrentHashMap8$Node;I)V

    goto :goto_0

    .line 2287
    :cond_7
    const/high16 v10, 0x40000000    # 2.0f

    or-int/2addr v10, v4

    invoke-virtual {v3, v4, v10}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2289
    :try_start_1
    invoke-static {v9, v6}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v10

    if-ne v10, v3, :cond_a

    .line 2290
    move-object v2, v3

    .local v2, "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_2
    if-eqz v2, :cond_9

    .line 2291
    iget-object v10, v2, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    if-eqz v10, :cond_8

    .line 2292
    const/4 v10, 0x0

    iput-object v10, v2, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    .line 2293
    const-wide/16 v10, 0x1

    sub-long/2addr v0, v10

    .line 2290
    :cond_8
    iget-object v2, v2, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    goto :goto_2

    .line 2296
    :cond_9
    const/4 v10, 0x0

    invoke-static {v9, v6, v10}, Lorg/jsr166/ConcurrentHashMap8;->setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2297
    add-int/lit8 v6, v6, 0x1

    .line 2300
    .end local v2    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_a
    const/high16 v10, 0x40000000    # 2.0f

    or-int/2addr v10, v4

    invoke-virtual {v3, v10, v4}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2301
    iput v4, v3, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 2302
    monitor-enter v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v10

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v10

    .line 2300
    :catchall_2
    move-exception v10

    const/high16 v11, 0x40000000    # 2.0f

    or-int/2addr v11, v4

    invoke-virtual {v3, v11, v4}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v11

    if-nez v11, :cond_b

    .line 2301
    iput v4, v3, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 2302
    monitor-enter v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_b
    throw v10

    :catchall_3
    move-exception v10

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v10

    .line 2307
    .end local v3    # "f":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v4    # "fh":I
    :cond_c
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-eqz v10, :cond_d

    .line 2308
    iget-object v10, p0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    invoke-virtual {v10, v0, v1}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 2309
    :cond_d
    return-void
.end method

.method private final internalCompute(Ljava/lang/Object;ZLorg/jsr166/ConcurrentHashMap8$BiFun;)Ljava/lang/Object;
    .locals 26
    .param p2, "onlyIfPresent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z",
            "Lorg/jsr166/ConcurrentHashMap8$BiFun",
            "<-TK;-TV;+TV;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1638
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p3, "mf":Lorg/jsr166/ConcurrentHashMap8$BiFun;, "Lorg/jsr166/ConcurrentHashMap8$BiFun<-TK;-TV;+TV;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lorg/jsr166/ConcurrentHashMap8;->spread(I)I

    move-result v13

    .line 1639
    .local v13, "h":I
    const/16 v21, 0x0

    .line 1640
    .local v21, "val":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1641
    .local v5, "delta":I
    const/4 v4, 0x0

    .line 1642
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;

    move-object/from16 v20, v0

    .line 1644
    .end local v21    # "val":Ljava/lang/Object;
    .local v20, "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_0
    :goto_0
    if-nez v20, :cond_1

    .line 1645
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentHashMap8;->initTable()[Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v20

    goto :goto_0

    .line 1646
    :cond_1
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    and-int v14, v22, v13

    .local v14, "i":I
    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v10

    .local v10, "f":Lorg/jsr166/ConcurrentHashMap8$Node;
    if-nez v10, :cond_a

    .line 1647
    if-eqz p2, :cond_4

    .line 1752
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    move-object/from16 v22, v0

    int-to-long v0, v5

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 1754
    const/16 v22, 0x1

    move/from16 v0, v22

    if-le v4, v0, :cond_3

    .line 1755
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentHashMap8;->checkForResize()V

    .line 1757
    :cond_3
    return-object v21

    .line 1649
    :cond_4
    new-instance v15, Lorg/jsr166/ConcurrentHashMap8$Node;

    const/high16 v22, 0x40000000    # 2.0f

    or-int v11, v13, v22

    .local v11, "fh":I
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v15, v11, v0, v1, v2}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 1650
    .local v15, "node":Lorg/jsr166/ConcurrentHashMap8$Node;
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v14, v1, v15}, Lorg/jsr166/ConcurrentHashMap8;->casTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;Lorg/jsr166/ConcurrentHashMap8$Node;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1652
    const/4 v4, 0x1

    .line 1653
    const/16 v22, 0x0

    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/jsr166/ConcurrentHashMap8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "val":Ljava/lang/Object;
    if-eqz v21, :cond_5

    .line 1654
    move-object/from16 v0, v21

    iput-object v0, v15, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1655
    const/4 v5, 0x1

    .line 1658
    :cond_5
    if-nez v5, :cond_6

    .line 1659
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v14, v1}, Lorg/jsr166/ConcurrentHashMap8;->setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 1660
    :cond_6
    invoke-virtual {v15, v11, v13}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v22

    if-nez v22, :cond_7

    .line 1661
    iput v13, v15, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 1662
    monitor-enter v15

    :try_start_1
    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v15

    .line 1666
    .end local v21    # "val":Ljava/lang/Object;
    :cond_7
    if-eqz v4, :cond_0

    goto :goto_1

    .line 1662
    .restart local v21    # "val":Ljava/lang/Object;
    :catchall_0
    move-exception v22

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v22

    .line 1658
    .end local v21    # "val":Ljava/lang/Object;
    :catchall_1
    move-exception v22

    if-nez v5, :cond_8

    .line 1659
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-static {v0, v14, v1}, Lorg/jsr166/ConcurrentHashMap8;->setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 1660
    :cond_8
    invoke-virtual {v15, v11, v13}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v23

    if-nez v23, :cond_9

    .line 1661
    iput v13, v15, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 1662
    monitor-enter v15

    :try_start_2
    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_9
    throw v22

    :catchall_2
    move-exception v22

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v22

    .line 1669
    .end local v11    # "fh":I
    .end local v15    # "node":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_a
    iget v11, v10, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .restart local v11    # "fh":I
    const/high16 v22, -0x80000000

    move/from16 v0, v22

    if-ne v11, v0, :cond_10

    .line 1670
    iget-object v12, v10, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .local v12, "fk":Ljava/lang/Object;
    instance-of v0, v12, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    move/from16 v22, v0

    if-eqz v22, :cond_f

    move-object/from16 v19, v12

    .line 1671
    check-cast v19, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    .line 1672
    .local v19, "t":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->acquire(I)V

    .line 1674
    :try_start_4
    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v22

    move-object/from16 v0, v22

    if-ne v0, v10, :cond_b

    .line 1675
    const/4 v4, 0x1

    .line 1676
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->root:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v13, v1, v2}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->getTreeNode(ILjava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$TreeNode;)Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-result-object v16

    .line 1677
    .local v16, "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-nez v16, :cond_c

    const/16 v18, 0x0

    .line 1678
    .local v18, "pv":Ljava/lang/Object;
    :goto_2
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/jsr166/ConcurrentHashMap8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "val":Ljava/lang/Object;
    if-eqz v21, :cond_e

    .line 1679
    if-eqz v16, :cond_d

    .line 1680
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->val:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1693
    .end local v16    # "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v18    # "pv":Ljava/lang/Object;
    .end local v21    # "val":Ljava/lang/Object;
    :cond_b
    :goto_3
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->release(I)Z

    .line 1695
    if-eqz v4, :cond_0

    goto/16 :goto_1

    .line 1677
    .restart local v16    # "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_c
    :try_start_5
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->val:Ljava/lang/Object;

    move-object/from16 v18, v0

    goto :goto_2

    .line 1682
    .restart local v18    # "pv":Ljava/lang/Object;
    .restart local v21    # "val":Ljava/lang/Object;
    :cond_d
    const/4 v4, 0x2

    .line 1683
    const/4 v5, 0x1

    .line 1684
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v13, v1, v2}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->putTreeNode(ILjava/lang/Object;Ljava/lang/Object;)Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    .line 1693
    .end local v16    # "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v18    # "pv":Ljava/lang/Object;
    .end local v21    # "val":Ljava/lang/Object;
    :catchall_3
    move-exception v22

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->release(I)Z

    throw v22

    .line 1687
    .restart local v16    # "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .restart local v18    # "pv":Ljava/lang/Object;
    .restart local v21    # "val":Ljava/lang/Object;
    :cond_e
    if-eqz v16, :cond_b

    .line 1688
    const/4 v5, -0x1

    .line 1689
    :try_start_6
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->deleteTreeNode(Lorg/jsr166/ConcurrentHashMap8$TreeNode;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    .line 1699
    .end local v16    # "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v18    # "pv":Ljava/lang/Object;
    .end local v19    # "t":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    .end local v21    # "val":Ljava/lang/Object;
    :cond_f
    check-cast v12, [Lorg/jsr166/ConcurrentHashMap8$Node;

    .end local v12    # "fk":Ljava/lang/Object;
    move-object/from16 v20, v12

    check-cast v20, [Lorg/jsr166/ConcurrentHashMap8$Node;

    goto/16 :goto_0

    .line 1701
    :cond_10
    const/high16 v22, 0x40000000    # 2.0f

    and-int v22, v22, v11

    if-eqz v22, :cond_11

    .line 1702
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentHashMap8;->checkForResize()V

    .line 1703
    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v14}, Lorg/jsr166/ConcurrentHashMap8$Node;->tryAwaitLock([Lorg/jsr166/ConcurrentHashMap8$Node;I)V

    goto/16 :goto_0

    .line 1705
    :cond_11
    const/high16 v22, 0x40000000    # 2.0f

    or-int v22, v22, v11

    move/from16 v0, v22

    invoke-virtual {v10, v11, v0}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1707
    :try_start_7
    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v22

    move-object/from16 v0, v22

    if-ne v0, v10, :cond_13

    .line 1708
    const/4 v4, 0x1

    .line 1709
    move-object v6, v10

    .local v6, "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    const/16 v17, 0x0

    .line 1711
    .local v17, "pred":Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_4
    iget v0, v6, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    move/from16 v22, v0

    const v23, 0x3fffffff    # 1.9999999f

    and-int v22, v22, v23

    move/from16 v0, v22

    if-ne v0, v13, :cond_18

    iget-object v9, v6, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    .local v9, "ev":Ljava/lang/Object;
    if-eqz v9, :cond_18

    iget-object v7, v6, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .local v7, "ek":Ljava/lang/Object;
    move-object/from16 v0, p1

    if-eq v7, v0, :cond_12

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 1714
    :cond_12
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v9}, Lorg/jsr166/ConcurrentHashMap8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 1715
    .restart local v21    # "val":Ljava/lang/Object;
    if-eqz v21, :cond_15

    .line 1716
    move-object/from16 v0, v21

    iput-object v0, v6, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1740
    .end local v6    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v7    # "ek":Ljava/lang/Object;
    .end local v9    # "ev":Ljava/lang/Object;
    .end local v17    # "pred":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v21    # "val":Ljava/lang/Object;
    :cond_13
    :goto_5
    const/high16 v22, 0x40000000    # 2.0f

    or-int v22, v22, v11

    move/from16 v0, v22

    invoke-virtual {v10, v0, v11}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v22

    if-nez v22, :cond_14

    .line 1741
    iput v11, v10, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 1742
    monitor-enter v10

    :try_start_8
    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1745
    :cond_14
    if-eqz v4, :cond_0

    .line 1746
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x40

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_2

    .line 1747
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 1718
    .restart local v6    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v7    # "ek":Ljava/lang/Object;
    .restart local v9    # "ev":Ljava/lang/Object;
    .restart local v17    # "pred":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v21    # "val":Ljava/lang/Object;
    :cond_15
    const/4 v5, -0x1

    .line 1719
    :try_start_9
    iget-object v8, v6, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 1720
    .local v8, "en":Lorg/jsr166/ConcurrentHashMap8$Node;
    if-eqz v17, :cond_17

    .line 1721
    move-object/from16 v0, v17

    iput-object v8, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_5

    .line 1740
    .end local v6    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v7    # "ek":Ljava/lang/Object;
    .end local v8    # "en":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v9    # "ev":Ljava/lang/Object;
    .end local v17    # "pred":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v21    # "val":Ljava/lang/Object;
    :catchall_4
    move-exception v22

    const/high16 v23, 0x40000000    # 2.0f

    or-int v23, v23, v11

    move/from16 v0, v23

    invoke-virtual {v10, v0, v11}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v23

    if-nez v23, :cond_16

    .line 1741
    iput v11, v10, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 1742
    monitor-enter v10

    :try_start_a
    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :cond_16
    throw v22

    .line 1723
    .restart local v6    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v7    # "ek":Ljava/lang/Object;
    .restart local v8    # "en":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v9    # "ev":Ljava/lang/Object;
    .restart local v17    # "pred":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v21    # "val":Ljava/lang/Object;
    :cond_17
    :try_start_b
    move-object/from16 v0, v20

    invoke-static {v0, v14, v8}, Lorg/jsr166/ConcurrentHashMap8;->setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V

    goto :goto_5

    .line 1727
    .end local v7    # "ek":Ljava/lang/Object;
    .end local v8    # "en":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v9    # "ev":Ljava/lang/Object;
    .end local v21    # "val":Ljava/lang/Object;
    :cond_18
    move-object/from16 v17, v6

    .line 1728
    iget-object v6, v6, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    if-nez v6, :cond_19

    .line 1729
    if-nez p2, :cond_13

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/jsr166/ConcurrentHashMap8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "val":Ljava/lang/Object;
    if-eqz v21, :cond_13

    .line 1730
    new-instance v22, Lorg/jsr166/ConcurrentHashMap8$Node;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    invoke-direct {v0, v13, v1, v2, v3}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 1731
    const/4 v5, 0x1

    .line 1732
    const/16 v22, 0x8

    move/from16 v0, v22

    if-lt v4, v0, :cond_13

    .line 1733
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v14, v2}, Lorg/jsr166/ConcurrentHashMap8;->replaceWithTreeBin([Lorg/jsr166/ConcurrentHashMap8$Node;ILjava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto/16 :goto_5

    .line 1709
    .end local v21    # "val":Ljava/lang/Object;
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 1742
    .end local v6    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v17    # "pred":Lorg/jsr166/ConcurrentHashMap8$Node;
    :catchall_5
    move-exception v22

    :try_start_c
    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v22

    :catchall_6
    move-exception v22

    :try_start_d
    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v22
.end method

.method private final internalComputeIfAbsent(Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Fun;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/jsr166/ConcurrentHashMap8$Fun",
            "<-TK;*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1510
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "mf":Lorg/jsr166/ConcurrentHashMap8$Fun;, "Lorg/jsr166/ConcurrentHashMap8$Fun<-TK;*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lorg/jsr166/ConcurrentHashMap8;->spread(I)I

    move-result v14

    .line 1511
    .local v14, "h":I
    const/16 v21, 0x0

    .line 1512
    .local v21, "val":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1513
    .local v5, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;

    move-object/from16 v20, v0

    .line 1515
    .end local v21    # "val":Ljava/lang/Object;
    .local v20, "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_0
    :goto_0
    if-nez v20, :cond_1

    .line 1516
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentHashMap8;->initTable()[Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v20

    goto :goto_0

    .line 1517
    :cond_1
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    and-int v15, v22, v14

    .local v15, "i":I
    move-object/from16 v0, v20

    invoke-static {v0, v15}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v9

    .local v9, "f":Lorg/jsr166/ConcurrentHashMap8$Node;
    if-nez v9, :cond_9

    .line 1518
    new-instance v17, Lorg/jsr166/ConcurrentHashMap8$Node;

    const/high16 v22, 0x40000000    # 2.0f

    or-int v10, v14, v22

    .local v10, "fh":I
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v10, v1, v2, v3}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 1519
    .local v17, "node":Lorg/jsr166/ConcurrentHashMap8$Node;
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-static {v0, v15, v1, v2}, Lorg/jsr166/ConcurrentHashMap8;->casTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;Lorg/jsr166/ConcurrentHashMap8$Node;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1520
    const/4 v5, 0x1

    .line 1522
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$Fun;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "val":Ljava/lang/Object;
    if-eqz v21, :cond_2

    .line 1523
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1525
    :cond_2
    if-nez v21, :cond_3

    .line 1526
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v15, v1}, Lorg/jsr166/ConcurrentHashMap8;->setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 1527
    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v14}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v22

    if-nez v22, :cond_4

    .line 1528
    move-object/from16 v0, v17

    iput v14, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 1529
    monitor-enter v17

    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1533
    .end local v21    # "val":Ljava/lang/Object;
    :cond_4
    if-eqz v5, :cond_0

    .line 1627
    .end local v17    # "node":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_5
    :goto_1
    if-eqz v21, :cond_6

    .line 1628
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x1

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 1629
    const/16 v22, 0x1

    move/from16 v0, v22

    if-le v5, v0, :cond_6

    .line 1630
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentHashMap8;->checkForResize()V

    .line 1632
    :cond_6
    :goto_2
    return-object v21

    .line 1529
    .restart local v17    # "node":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v21    # "val":Ljava/lang/Object;
    :catchall_0
    move-exception v22

    :try_start_2
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v22

    .line 1525
    .end local v21    # "val":Ljava/lang/Object;
    :catchall_1
    move-exception v22

    if-nez v21, :cond_7

    .line 1526
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-static {v0, v15, v1}, Lorg/jsr166/ConcurrentHashMap8;->setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 1527
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v14}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v23

    if-nez v23, :cond_8

    .line 1528
    move-object/from16 v0, v17

    iput v14, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 1529
    monitor-enter v17

    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_8
    throw v22

    :catchall_2
    move-exception v22

    :try_start_4
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v22

    .line 1536
    .end local v10    # "fh":I
    .end local v17    # "node":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_9
    iget v10, v9, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .restart local v10    # "fh":I
    const/high16 v22, -0x80000000

    move/from16 v0, v22

    if-ne v10, v0, :cond_d

    .line 1537
    iget-object v11, v9, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .local v11, "fk":Ljava/lang/Object;
    instance-of v0, v11, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    move/from16 v22, v0

    if-eqz v22, :cond_c

    move-object/from16 v19, v11

    .line 1538
    check-cast v19, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    .line 1539
    .local v19, "t":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    const/4 v4, 0x0

    .line 1540
    .local v4, "added":Z
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->acquire(I)V

    .line 1542
    :try_start_5
    move-object/from16 v0, v20

    invoke-static {v0, v15}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v22

    move-object/from16 v0, v22

    if-ne v0, v9, :cond_a

    .line 1543
    const/4 v5, 0x1

    .line 1544
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->root:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v14, v1, v2}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->getTreeNode(ILjava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$TreeNode;)Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-result-object v18

    .line 1545
    .local v18, "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v18, :cond_b

    .line 1546
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->val:Ljava/lang/Object;

    move-object/from16 v21, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1554
    .end local v18    # "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_a
    :goto_3
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->release(I)Z

    .line 1556
    if-eqz v5, :cond_0

    .line 1557
    if-nez v4, :cond_5

    goto :goto_2

    .line 1547
    .restart local v18    # "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_b
    :try_start_6
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$Fun;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "val":Ljava/lang/Object;
    if-eqz v21, :cond_a

    .line 1548
    const/4 v4, 0x1

    .line 1549
    const/4 v5, 0x2

    .line 1550
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v14, v1, v2}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->putTreeNode(ILjava/lang/Object;Ljava/lang/Object;)Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    .line 1554
    .end local v18    # "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v21    # "val":Ljava/lang/Object;
    :catchall_3
    move-exception v22

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->release(I)Z

    throw v22

    .line 1563
    .end local v4    # "added":Z
    .end local v19    # "t":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    :cond_c
    check-cast v11, [Lorg/jsr166/ConcurrentHashMap8$Node;

    .end local v11    # "fk":Ljava/lang/Object;
    move-object/from16 v20, v11

    check-cast v20, [Lorg/jsr166/ConcurrentHashMap8$Node;

    goto/16 :goto_0

    .line 1565
    :cond_d
    const v22, 0x3fffffff    # 1.9999999f

    and-int v22, v22, v10

    move/from16 v0, v22

    if-ne v0, v14, :cond_f

    iget-object v12, v9, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    .local v12, "fv":Ljava/lang/Object;
    if-eqz v12, :cond_f

    iget-object v11, v9, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .restart local v11    # "fk":Ljava/lang/Object;
    move-object/from16 v0, p1

    if-eq v11, v0, :cond_e

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    :cond_e
    move-object/from16 v21, v12

    .line 1567
    goto/16 :goto_2

    .line 1569
    .end local v11    # "fk":Ljava/lang/Object;
    .end local v12    # "fv":Ljava/lang/Object;
    :cond_f
    iget-object v13, v9, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 1570
    .local v13, "g":Lorg/jsr166/ConcurrentHashMap8$Node;
    if-eqz v13, :cond_13

    .line 1571
    move-object v6, v13

    .line 1573
    .local v6, "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_10
    iget v0, v6, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    move/from16 v22, v0

    const v23, 0x3fffffff    # 1.9999999f

    and-int v22, v22, v23

    move/from16 v0, v22

    if-ne v0, v14, :cond_12

    iget-object v8, v6, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    .local v8, "ev":Ljava/lang/Object;
    if-eqz v8, :cond_12

    iget-object v7, v6, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .local v7, "ek":Ljava/lang/Object;
    move-object/from16 v0, p1

    if-eq v7, v0, :cond_11

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    :cond_11
    move-object/from16 v21, v8

    .line 1575
    goto/16 :goto_2

    .line 1576
    .end local v7    # "ek":Ljava/lang/Object;
    .end local v8    # "ev":Ljava/lang/Object;
    :cond_12
    iget-object v6, v6, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    if-nez v6, :cond_10

    .line 1577
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentHashMap8;->checkForResize()V

    .line 1582
    .end local v6    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_13
    iget v10, v9, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    const/high16 v22, 0x40000000    # 2.0f

    and-int v22, v22, v10

    if-eqz v22, :cond_14

    .line 1583
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentHashMap8;->checkForResize()V

    .line 1584
    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v15}, Lorg/jsr166/ConcurrentHashMap8$Node;->tryAwaitLock([Lorg/jsr166/ConcurrentHashMap8$Node;I)V

    goto/16 :goto_0

    .line 1586
    :cond_14
    move-object/from16 v0, v20

    invoke-static {v0, v15}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v22

    move-object/from16 v0, v22

    if-ne v0, v9, :cond_0

    const/high16 v22, 0x40000000    # 2.0f

    or-int v22, v22, v10

    move/from16 v0, v22

    invoke-virtual {v9, v10, v0}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1587
    const/4 v4, 0x0

    .line 1589
    .restart local v4    # "added":Z
    :try_start_7
    move-object/from16 v0, v20

    invoke-static {v0, v15}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v22

    move-object/from16 v0, v22

    if-ne v0, v9, :cond_16

    .line 1590
    const/4 v5, 0x1

    .line 1591
    move-object v6, v9

    .line 1593
    .restart local v6    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_4
    iget v0, v6, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    move/from16 v22, v0

    const v23, 0x3fffffff    # 1.9999999f

    and-int v22, v22, v23

    move/from16 v0, v22

    if-ne v0, v14, :cond_18

    iget-object v8, v6, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    .restart local v8    # "ev":Ljava/lang/Object;
    if-eqz v8, :cond_18

    iget-object v7, v6, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .restart local v7    # "ek":Ljava/lang/Object;
    move-object/from16 v0, p1

    if-eq v7, v0, :cond_15

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-result v22

    if-eqz v22, :cond_18

    .line 1596
    :cond_15
    move-object/from16 v21, v8

    .line 1612
    .end local v6    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v7    # "ek":Ljava/lang/Object;
    .end local v8    # "ev":Ljava/lang/Object;
    :cond_16
    :goto_5
    const/high16 v22, 0x40000000    # 2.0f

    or-int v22, v22, v10

    move/from16 v0, v22

    invoke-virtual {v9, v0, v10}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v22

    if-nez v22, :cond_17

    .line 1613
    iput v10, v9, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 1614
    monitor-enter v9

    :try_start_8
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1617
    :cond_17
    if-eqz v5, :cond_0

    .line 1618
    if-eqz v4, :cond_6

    .line 1620
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x40

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_5

    .line 1621
    const/4 v5, 0x2

    goto/16 :goto_1

    .line 1599
    .restart local v6    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_18
    move-object/from16 v16, v6

    .line 1600
    .local v16, "last":Lorg/jsr166/ConcurrentHashMap8$Node;
    :try_start_9
    iget-object v6, v6, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    if-nez v6, :cond_1a

    .line 1601
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$Fun;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "val":Ljava/lang/Object;
    if-eqz v21, :cond_16

    .line 1602
    const/4 v4, 0x1

    .line 1603
    new-instance v22, Lorg/jsr166/ConcurrentHashMap8$Node;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    invoke-direct {v0, v14, v1, v2, v3}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 1604
    const/16 v22, 0x8

    move/from16 v0, v22

    if-lt v5, v0, :cond_16

    .line 1605
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v15, v2}, Lorg/jsr166/ConcurrentHashMap8;->replaceWithTreeBin([Lorg/jsr166/ConcurrentHashMap8$Node;ILjava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_5

    .line 1612
    .end local v6    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v16    # "last":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v21    # "val":Ljava/lang/Object;
    :catchall_4
    move-exception v22

    const/high16 v23, 0x40000000    # 2.0f

    or-int v23, v23, v10

    move/from16 v0, v23

    invoke-virtual {v9, v0, v10}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v23

    if-nez v23, :cond_19

    .line 1613
    iput v10, v9, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 1614
    monitor-enter v9

    :try_start_a
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :cond_19
    throw v22

    .line 1591
    .restart local v6    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v16    # "last":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 1614
    .end local v6    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v16    # "last":Lorg/jsr166/ConcurrentHashMap8$Node;
    :catchall_5
    move-exception v22

    :try_start_b
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v22

    :catchall_6
    move-exception v22

    :try_start_c
    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v22
.end method

.method private final internalGet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "k"    # Ljava/lang/Object;

    .prologue
    .line 1174
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lorg/jsr166/ConcurrentHashMap8;->spread(I)I

    move-result v4

    .line 1175
    .local v4, "h":I
    iget-object v5, p0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;

    .local v5, "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_0
    if-eqz v5, :cond_4

    .line 1177
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v4

    invoke-static {v5, v6}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v0

    .local v0, "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_1
    if-eqz v0, :cond_4

    .line 1178
    iget v1, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .local v1, "eh":I
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_2

    .line 1179
    iget-object v2, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .local v2, "ek":Ljava/lang/Object;
    instance-of v6, v2, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    if-eqz v6, :cond_1

    .line 1180
    check-cast v2, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    .end local v2    # "ek":Ljava/lang/Object;
    invoke-virtual {v2, v4, p1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->getValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1192
    .end local v0    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v1    # "eh":I
    :cond_0
    :goto_2
    return-object v3

    .line 1182
    .restart local v0    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v1    # "eh":I
    .restart local v2    # "ek":Ljava/lang/Object;
    :cond_1
    check-cast v2, [Lorg/jsr166/ConcurrentHashMap8$Node;

    .end local v2    # "ek":Ljava/lang/Object;
    move-object v5, v2

    check-cast v5, [Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 1183
    goto :goto_0

    .line 1186
    :cond_2
    const v6, 0x3fffffff    # 1.9999999f

    and-int/2addr v6, v1

    if-ne v6, v4, :cond_3

    iget-object v3, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    .local v3, "ev":Ljava/lang/Object;
    if-eqz v3, :cond_3

    iget-object v2, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .restart local v2    # "ek":Ljava/lang/Object;
    if-eq v2, p1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1177
    .end local v2    # "ek":Ljava/lang/Object;
    .end local v3    # "ev":Ljava/lang/Object;
    :cond_3
    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    goto :goto_1

    .line 1192
    .end local v0    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v1    # "eh":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private final internalMerge(Ljava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$BiFun;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/jsr166/ConcurrentHashMap8$BiFun",
            "<-TV;-TV;+TV;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1763
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    .local p3, "mf":Lorg/jsr166/ConcurrentHashMap8$BiFun;, "Lorg/jsr166/ConcurrentHashMap8$BiFun<-TV;-TV;+TV;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lorg/jsr166/ConcurrentHashMap8;->spread(I)I

    move-result v13

    .line 1764
    .local v13, "h":I
    const/16 v19, 0x0

    .line 1765
    .local v19, "val":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1766
    .local v5, "delta":I
    const/4 v4, 0x0

    .line 1767
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;

    move-object/from16 v18, v0

    .line 1769
    .end local v19    # "val":Ljava/lang/Object;
    .local v18, "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_0
    :goto_0
    if-nez v18, :cond_1

    .line 1770
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentHashMap8;->initTable()[Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v18

    goto :goto_0

    .line 1771
    :cond_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    and-int v14, v20, v13

    .local v14, "i":I
    move-object/from16 v0, v18

    invoke-static {v0, v14}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v10

    .local v10, "f":Lorg/jsr166/ConcurrentHashMap8$Node;
    if-nez v10, :cond_4

    .line 1772
    const/16 v20, 0x0

    new-instance v21, Lorg/jsr166/ConcurrentHashMap8$Node;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    invoke-direct {v0, v13, v1, v2, v3}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v14, v1, v2}, Lorg/jsr166/ConcurrentHashMap8;->casTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;Lorg/jsr166/ConcurrentHashMap8$Node;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1773
    const/4 v5, 0x1

    .line 1774
    move-object/from16 v19, p2

    .line 1860
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 1861
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    move-object/from16 v20, v0

    int-to-long v0, v5

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 1862
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v4, v0, :cond_3

    .line 1863
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentHashMap8;->checkForResize()V

    .line 1865
    :cond_3
    return-object v19

    .line 1778
    :cond_4
    iget v11, v10, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .local v11, "fh":I
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-ne v11, v0, :cond_a

    .line 1779
    iget-object v12, v10, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .local v12, "fk":Ljava/lang/Object;
    instance-of v0, v12, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v17, v12

    .line 1780
    check-cast v17, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    .line 1781
    .local v17, "t":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->acquire(I)V

    .line 1783
    :try_start_0
    move-object/from16 v0, v18

    invoke-static {v0, v14}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v0, v10, :cond_5

    .line 1784
    const/4 v4, 0x1

    .line 1785
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->root:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->getTreeNode(ILjava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$TreeNode;)Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-result-object v15

    .line 1786
    .local v15, "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-nez v15, :cond_6

    move-object/from16 v19, p2

    .line 1787
    .restart local v19    # "val":Ljava/lang/Object;
    :goto_2
    if-eqz v19, :cond_8

    .line 1788
    if-eqz v15, :cond_7

    .line 1789
    move-object/from16 v0, v19

    iput-object v0, v15, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->val:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1802
    .end local v15    # "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v19    # "val":Ljava/lang/Object;
    :cond_5
    :goto_3
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->release(I)Z

    .line 1804
    if-eqz v4, :cond_0

    goto :goto_1

    .line 1786
    .restart local v15    # "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_6
    :try_start_1
    iget-object v0, v15, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->val:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/jsr166/ConcurrentHashMap8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    goto :goto_2

    .line 1791
    .restart local v19    # "val":Ljava/lang/Object;
    :cond_7
    const/4 v4, 0x2

    .line 1792
    const/4 v5, 0x1

    .line 1793
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v13, v1, v2}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->putTreeNode(ILjava/lang/Object;Ljava/lang/Object;)Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1802
    .end local v15    # "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v19    # "val":Ljava/lang/Object;
    :catchall_0
    move-exception v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->release(I)Z

    throw v20

    .line 1796
    .restart local v15    # "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .restart local v19    # "val":Ljava/lang/Object;
    :cond_8
    if-eqz v15, :cond_5

    .line 1797
    const/4 v5, -0x1

    .line 1798
    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->deleteTreeNode(Lorg/jsr166/ConcurrentHashMap8$TreeNode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1808
    .end local v15    # "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v17    # "t":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    .end local v19    # "val":Ljava/lang/Object;
    :cond_9
    check-cast v12, [Lorg/jsr166/ConcurrentHashMap8$Node;

    .end local v12    # "fk":Ljava/lang/Object;
    move-object/from16 v18, v12

    check-cast v18, [Lorg/jsr166/ConcurrentHashMap8$Node;

    goto/16 :goto_0

    .line 1810
    :cond_a
    const/high16 v20, 0x40000000    # 2.0f

    and-int v20, v20, v11

    if-eqz v20, :cond_b

    .line 1811
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentHashMap8;->checkForResize()V

    .line 1812
    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v14}, Lorg/jsr166/ConcurrentHashMap8$Node;->tryAwaitLock([Lorg/jsr166/ConcurrentHashMap8$Node;I)V

    goto/16 :goto_0

    .line 1814
    :cond_b
    const/high16 v20, 0x40000000    # 2.0f

    or-int v20, v20, v11

    move/from16 v0, v20

    invoke-virtual {v10, v11, v0}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1816
    :try_start_3
    move-object/from16 v0, v18

    invoke-static {v0, v14}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v0, v10, :cond_d

    .line 1817
    const/4 v4, 0x1

    .line 1818
    move-object v6, v10

    .local v6, "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    const/16 v16, 0x0

    .line 1820
    .local v16, "pred":Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_4
    iget v0, v6, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    move/from16 v20, v0

    const v21, 0x3fffffff    # 1.9999999f

    and-int v20, v20, v21

    move/from16 v0, v20

    if-ne v0, v13, :cond_12

    iget-object v9, v6, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    .local v9, "ev":Ljava/lang/Object;
    if-eqz v9, :cond_12

    iget-object v7, v6, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .local v7, "ek":Ljava/lang/Object;
    move-object/from16 v0, p1

    if-eq v7, v0, :cond_c

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 1823
    :cond_c
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v9}, Lorg/jsr166/ConcurrentHashMap8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 1824
    .restart local v19    # "val":Ljava/lang/Object;
    if-eqz v19, :cond_f

    .line 1825
    move-object/from16 v0, v19

    iput-object v0, v6, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1848
    .end local v6    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v7    # "ek":Ljava/lang/Object;
    .end local v9    # "ev":Ljava/lang/Object;
    .end local v16    # "pred":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v19    # "val":Ljava/lang/Object;
    :cond_d
    :goto_5
    const/high16 v20, 0x40000000    # 2.0f

    or-int v20, v20, v11

    move/from16 v0, v20

    invoke-virtual {v10, v0, v11}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v20

    if-nez v20, :cond_e

    .line 1849
    iput v11, v10, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 1850
    monitor-enter v10

    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1853
    :cond_e
    if-eqz v4, :cond_0

    .line 1854
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x40

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_2

    .line 1855
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 1827
    .restart local v6    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v7    # "ek":Ljava/lang/Object;
    .restart local v9    # "ev":Ljava/lang/Object;
    .restart local v16    # "pred":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v19    # "val":Ljava/lang/Object;
    :cond_f
    const/4 v5, -0x1

    .line 1828
    :try_start_5
    iget-object v8, v6, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 1829
    .local v8, "en":Lorg/jsr166/ConcurrentHashMap8$Node;
    if-eqz v16, :cond_11

    .line 1830
    move-object/from16 v0, v16

    iput-object v8, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    .line 1848
    .end local v6    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v7    # "ek":Ljava/lang/Object;
    .end local v8    # "en":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v9    # "ev":Ljava/lang/Object;
    .end local v16    # "pred":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v19    # "val":Ljava/lang/Object;
    :catchall_1
    move-exception v20

    const/high16 v21, 0x40000000    # 2.0f

    or-int v21, v21, v11

    move/from16 v0, v21

    invoke-virtual {v10, v0, v11}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v21

    if-nez v21, :cond_10

    .line 1849
    iput v11, v10, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 1850
    monitor-enter v10

    :try_start_6
    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_10
    throw v20

    .line 1832
    .restart local v6    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v7    # "ek":Ljava/lang/Object;
    .restart local v8    # "en":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v9    # "ev":Ljava/lang/Object;
    .restart local v16    # "pred":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v19    # "val":Ljava/lang/Object;
    :cond_11
    :try_start_7
    move-object/from16 v0, v18

    invoke-static {v0, v14, v8}, Lorg/jsr166/ConcurrentHashMap8;->setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V

    goto :goto_5

    .line 1836
    .end local v7    # "ek":Ljava/lang/Object;
    .end local v8    # "en":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v9    # "ev":Ljava/lang/Object;
    .end local v19    # "val":Ljava/lang/Object;
    :cond_12
    move-object/from16 v16, v6

    .line 1837
    iget-object v6, v6, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    if-nez v6, :cond_13

    .line 1838
    move-object/from16 v19, p2

    .line 1839
    .restart local v19    # "val":Ljava/lang/Object;
    new-instance v20, Lorg/jsr166/ConcurrentHashMap8$Node;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-direct {v0, v13, v1, v2, v3}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 1840
    const/4 v5, 0x1

    .line 1841
    const/16 v20, 0x8

    move/from16 v0, v20

    if-lt v4, v0, :cond_d

    .line 1842
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v14, v2}, Lorg/jsr166/ConcurrentHashMap8;->replaceWithTreeBin([Lorg/jsr166/ConcurrentHashMap8$Node;ILjava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    .line 1818
    .end local v19    # "val":Ljava/lang/Object;
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 1850
    .end local v6    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v16    # "pred":Lorg/jsr166/ConcurrentHashMap8$Node;
    :catchall_2
    move-exception v20

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v20

    :catchall_3
    move-exception v20

    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v20
.end method

.method private final internalPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .prologue
    .line 1322
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lorg/jsr166/ConcurrentHashMap8;->spread(I)I

    move-result v11

    .line 1323
    .local v11, "h":I
    const/4 v4, 0x0

    .line 1324
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;

    move-object/from16 v17, v0

    .line 1326
    .local v17, "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_0
    :goto_0
    if-nez v17, :cond_1

    .line 1327
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentHashMap8;->initTable()[Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v17

    goto :goto_0

    .line 1328
    :cond_1
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    and-int v12, v18, v11

    .local v12, "i":I
    move-object/from16 v0, v17

    invoke-static {v0, v12}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v8

    .local v8, "f":Lorg/jsr166/ConcurrentHashMap8$Node;
    if-nez v8, :cond_5

    .line 1329
    const/16 v18, 0x0

    new-instance v19, Lorg/jsr166/ConcurrentHashMap8$Node;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v20

    invoke-direct {v0, v11, v1, v2, v3}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v12, v1, v2}, Lorg/jsr166/ConcurrentHashMap8;->casTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;Lorg/jsr166/ConcurrentHashMap8$Node;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1400
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x1

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 1401
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v4, v0, :cond_3

    .line 1402
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentHashMap8;->checkForResize()V

    .line 1403
    :cond_3
    const/4 v14, 0x0

    :cond_4
    :goto_2
    return-object v14

    .line 1332
    :cond_5
    iget v9, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .local v9, "fh":I
    const/high16 v18, -0x80000000

    move/from16 v0, v18

    if-ne v9, v0, :cond_8

    .line 1333
    iget-object v10, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .local v10, "fk":Ljava/lang/Object;
    instance-of v0, v10, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v16, v10

    .line 1334
    check-cast v16, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    .line 1335
    .local v16, "t":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    const/4 v14, 0x0

    .line 1336
    .local v14, "oldVal":Ljava/lang/Object;
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->acquire(I)V

    .line 1338
    :try_start_0
    move-object/from16 v0, v17

    invoke-static {v0, v12}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v18

    move-object/from16 v0, v18

    if-ne v0, v8, :cond_6

    .line 1339
    const/4 v4, 0x2

    .line 1340
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v11, v1, v2}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->putTreeNode(ILjava/lang/Object;Ljava/lang/Object;)Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-result-object v15

    .line 1341
    .local v15, "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v15, :cond_6

    .line 1342
    iget-object v14, v15, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->val:Ljava/lang/Object;

    .line 1343
    move-object/from16 v0, p2

    iput-object v0, v15, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->val:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1347
    .end local v14    # "oldVal":Ljava/lang/Object;
    .end local v15    # "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_6
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->release(I)Z

    .line 1349
    if-eqz v4, :cond_0

    .line 1350
    if-eqz v14, :cond_2

    goto :goto_2

    .line 1347
    :catchall_0
    move-exception v18

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->release(I)Z

    throw v18

    .line 1356
    .end local v16    # "t":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    :cond_7
    check-cast v10, [Lorg/jsr166/ConcurrentHashMap8$Node;

    .end local v10    # "fk":Ljava/lang/Object;
    move-object/from16 v17, v10

    check-cast v17, [Lorg/jsr166/ConcurrentHashMap8$Node;

    goto/16 :goto_0

    .line 1358
    :cond_8
    const/high16 v18, 0x40000000    # 2.0f

    and-int v18, v18, v9

    if-eqz v18, :cond_9

    .line 1359
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentHashMap8;->checkForResize()V

    .line 1360
    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v12}, Lorg/jsr166/ConcurrentHashMap8$Node;->tryAwaitLock([Lorg/jsr166/ConcurrentHashMap8$Node;I)V

    goto/16 :goto_0

    .line 1362
    :cond_9
    const/high16 v18, 0x40000000    # 2.0f

    or-int v18, v18, v9

    move/from16 v0, v18

    invoke-virtual {v8, v9, v0}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1363
    const/4 v14, 0x0

    .line 1365
    .restart local v14    # "oldVal":Ljava/lang/Object;
    :try_start_1
    move-object/from16 v0, v17

    invoke-static {v0, v12}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v18

    move-object/from16 v0, v18

    if-ne v0, v8, :cond_b

    .line 1366
    const/4 v4, 0x1

    .line 1367
    move-object v5, v8

    .line 1369
    .local v5, "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_3
    iget v0, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    move/from16 v18, v0

    const v19, 0x3fffffff    # 1.9999999f

    and-int v18, v18, v19

    move/from16 v0, v18

    if-ne v0, v11, :cond_d

    iget-object v7, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    .local v7, "ev":Ljava/lang/Object;
    if-eqz v7, :cond_d

    iget-object v6, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .local v6, "ek":Ljava/lang/Object;
    move-object/from16 v0, p1

    if-eq v6, v0, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 1372
    :cond_a
    move-object v14, v7

    .line 1373
    move-object/from16 v0, p2

    iput-object v0, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1386
    .end local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v6    # "ek":Ljava/lang/Object;
    .end local v7    # "ev":Ljava/lang/Object;
    .end local v14    # "oldVal":Ljava/lang/Object;
    :cond_b
    :goto_4
    const/high16 v18, 0x40000000    # 2.0f

    or-int v18, v18, v9

    move/from16 v0, v18

    invoke-virtual {v8, v0, v9}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v18

    if-nez v18, :cond_c

    .line 1387
    iput v9, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 1388
    monitor-enter v8

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1391
    :cond_c
    if-eqz v4, :cond_0

    .line 1392
    if-nez v14, :cond_4

    .line 1394
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x40

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    .line 1395
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 1376
    .restart local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v14    # "oldVal":Ljava/lang/Object;
    :cond_d
    move-object v13, v5

    .line 1377
    .local v13, "last":Lorg/jsr166/ConcurrentHashMap8$Node;
    :try_start_3
    iget-object v5, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    if-nez v5, :cond_f

    .line 1378
    new-instance v18, Lorg/jsr166/ConcurrentHashMap8$Node;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-direct {v0, v11, v1, v2, v3}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    move-object/from16 v0, v18

    iput-object v0, v13, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 1379
    const/16 v18, 0x8

    move/from16 v0, v18

    if-lt v4, v0, :cond_b

    .line 1380
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v12, v2}, Lorg/jsr166/ConcurrentHashMap8;->replaceWithTreeBin([Lorg/jsr166/ConcurrentHashMap8$Node;ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 1386
    .end local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v13    # "last":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v14    # "oldVal":Ljava/lang/Object;
    :catchall_1
    move-exception v18

    const/high16 v19, 0x40000000    # 2.0f

    or-int v19, v19, v9

    move/from16 v0, v19

    invoke-virtual {v8, v0, v9}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v19

    if-nez v19, :cond_e

    .line 1387
    iput v9, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 1388
    monitor-enter v8

    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_e
    throw v18

    .line 1367
    .restart local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v13    # "last":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v14    # "oldVal":Ljava/lang/Object;
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 1388
    .end local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v13    # "last":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v14    # "oldVal":Ljava/lang/Object;
    :catchall_2
    move-exception v18

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v18

    :catchall_3
    move-exception v18

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v18
.end method

.method private final internalPutAll(Ljava/util/Map;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 1870
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/jsr166/ConcurrentHashMap8;->tryPresize(I)V

    .line 1871
    const-wide/16 v6, 0x0

    .line 1872
    .local v6, "delta":J
    const/16 v19, 0x0

    .line 1874
    .local v19, "npe":Z
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1876
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    .local v17, "k":Ljava/lang/Object;
    if-eqz v17, :cond_1

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v23

    .local v23, "v":Ljava/lang/Object;
    if-nez v23, :cond_4

    .line 1878
    .end local v17    # "k":Ljava/lang/Object;
    .end local v23    # "v":Ljava/lang/Object;
    :cond_1
    const/16 v19, 0x1

    .line 1964
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_2
    const-wide/16 v26, 0x0

    cmp-long v25, v6, v26

    if-eqz v25, :cond_3

    .line 1965
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 1967
    :cond_3
    if-eqz v19, :cond_14

    .line 1968
    new-instance v25, Ljava/lang/NullPointerException;

    invoke-direct/range {v25 .. v25}, Ljava/lang/NullPointerException;-><init>()V

    throw v25

    .line 1881
    .restart local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v17    # "k":Ljava/lang/Object;
    .restart local v23    # "v":Ljava/lang/Object;
    :cond_4
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->hashCode()I

    move-result v25

    invoke-static/range {v25 .. v25}, Lorg/jsr166/ConcurrentHashMap8;->spread(I)I

    move-result v14

    .line 1882
    .local v14, "h":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;

    move-object/from16 v22, v0

    .line 1884
    .local v22, "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_5
    :goto_1
    if-nez v22, :cond_6

    .line 1885
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentHashMap8;->initTable()[Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v22

    goto :goto_1

    .line 1886
    :cond_6
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    and-int v15, v25, v14

    .local v15, "i":I
    move-object/from16 v0, v22

    invoke-static {v0, v15}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v11

    .local v11, "f":Lorg/jsr166/ConcurrentHashMap8$Node;
    if-nez v11, :cond_7

    .line 1887
    const/16 v25, 0x0

    new-instance v26, Lorg/jsr166/ConcurrentHashMap8$Node;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    move-object/from16 v3, v27

    invoke-direct {v0, v14, v1, v2, v3}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v15, v1, v2}, Lorg/jsr166/ConcurrentHashMap8;->casTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;Lorg/jsr166/ConcurrentHashMap8$Node;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 1888
    const-wide/16 v26, 0x1

    add-long v6, v6, v26

    .line 1889
    goto :goto_0

    .line 1892
    :cond_7
    iget v12, v11, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .local v12, "fh":I
    const/high16 v25, -0x80000000

    move/from16 v0, v25

    if-ne v12, v0, :cond_c

    .line 1893
    iget-object v13, v11, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .local v13, "fk":Ljava/lang/Object;
    instance-of v0, v13, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    move/from16 v25, v0

    if-eqz v25, :cond_b

    .line 1894
    move-object v0, v13

    check-cast v0, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    move-object/from16 v21, v0

    .line 1895
    .local v21, "t":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    const/16 v24, 0x0

    .line 1896
    .local v24, "validated":Z
    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->acquire(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1898
    :try_start_2
    move-object/from16 v0, v22

    invoke-static {v0, v15}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v25

    move-object/from16 v0, v25

    if-ne v0, v11, :cond_8

    .line 1899
    const/16 v24, 0x1

    .line 1900
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->root:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v14, v1, v2}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->getTreeNode(ILjava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$TreeNode;)Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-result-object v20

    .line 1901
    .local v20, "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v20, :cond_9

    .line 1902
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->val:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1909
    .end local v20    # "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_8
    :goto_2
    const/16 v25, 0x0

    :try_start_3
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->release(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1911
    if-eqz v24, :cond_5

    goto/16 :goto_0

    .line 1904
    .restart local v20    # "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_9
    :try_start_4
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v14, v1, v2}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->putTreeNode(ILjava/lang/Object;Ljava/lang/Object;)Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1905
    const-wide/16 v26, 0x1

    add-long v6, v6, v26

    goto :goto_2

    .line 1909
    .end local v20    # "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :catchall_0
    move-exception v25

    const/16 v26, 0x0

    :try_start_5
    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->release(I)Z

    throw v25
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1964
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v11    # "f":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v12    # "fh":I
    .end local v13    # "fk":Ljava/lang/Object;
    .end local v14    # "h":I
    .end local v15    # "i":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "k":Ljava/lang/Object;
    .end local v21    # "t":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    .end local v22    # "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v23    # "v":Ljava/lang/Object;
    .end local v24    # "validated":Z
    :catchall_1
    move-exception v25

    const-wide/16 v26, 0x0

    cmp-long v26, v6, v26

    if-eqz v26, :cond_a

    .line 1965
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Lorg/jsr166/LongAdder8;->add(J)V

    :cond_a
    throw v25

    .line 1915
    .restart local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v11    # "f":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v12    # "fh":I
    .restart local v13    # "fk":Ljava/lang/Object;
    .restart local v14    # "h":I
    .restart local v15    # "i":I
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v17    # "k":Ljava/lang/Object;
    .restart local v22    # "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v23    # "v":Ljava/lang/Object;
    :cond_b
    :try_start_6
    check-cast v13, [Lorg/jsr166/ConcurrentHashMap8$Node;

    .end local v13    # "fk":Ljava/lang/Object;
    move-object v0, v13

    check-cast v0, [Lorg/jsr166/ConcurrentHashMap8$Node;

    move-object/from16 v22, v0

    goto/16 :goto_1

    .line 1917
    :cond_c
    const/high16 v25, 0x40000000    # 2.0f

    and-int v25, v25, v12

    if-eqz v25, :cond_d

    .line 1918
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 1919
    const-wide/16 v6, 0x0

    .line 1920
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentHashMap8;->checkForResize()V

    .line 1921
    move-object/from16 v0, v22

    invoke-virtual {v11, v0, v15}, Lorg/jsr166/ConcurrentHashMap8$Node;->tryAwaitLock([Lorg/jsr166/ConcurrentHashMap8$Node;I)V

    goto/16 :goto_1

    .line 1923
    :cond_d
    const/high16 v25, 0x40000000    # 2.0f

    or-int v25, v25, v12

    move/from16 v0, v25

    invoke-virtual {v11, v12, v0}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v25

    if-eqz v25, :cond_5

    .line 1924
    const/4 v4, 0x0

    .line 1926
    .local v4, "count":I
    :try_start_7
    move-object/from16 v0, v22

    invoke-static {v0, v15}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v25

    move-object/from16 v0, v25

    if-ne v0, v11, :cond_f

    .line 1927
    const/4 v4, 0x1

    .line 1928
    move-object v5, v11

    .line 1930
    .local v5, "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_3
    iget v0, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    move/from16 v25, v0

    const v26, 0x3fffffff    # 1.9999999f

    and-int v25, v25, v26

    move/from16 v0, v25

    if-ne v0, v14, :cond_11

    iget-object v10, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    .local v10, "ev":Ljava/lang/Object;
    if-eqz v10, :cond_11

    iget-object v8, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .local v8, "ek":Ljava/lang/Object;
    move-object/from16 v0, v17

    if-eq v8, v0, :cond_e

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 1933
    :cond_e
    move-object/from16 v0, v23

    iput-object v0, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1947
    .end local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v8    # "ek":Ljava/lang/Object;
    .end local v10    # "ev":Ljava/lang/Object;
    :cond_f
    :goto_4
    const/high16 v25, 0x40000000    # 2.0f

    or-int v25, v25, v12

    :try_start_8
    move/from16 v0, v25

    invoke-virtual {v11, v0, v12}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v25

    if-nez v25, :cond_10

    .line 1948
    iput v12, v11, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 1949
    monitor-enter v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1952
    :cond_10
    if-eqz v4, :cond_5

    .line 1953
    const/16 v25, 0x1

    move/from16 v0, v25

    if-le v4, v0, :cond_0

    .line 1954
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 1955
    const-wide/16 v6, 0x0

    .line 1956
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentHashMap8;->checkForResize()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    .line 1936
    .restart local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_11
    move-object/from16 v18, v5

    .line 1937
    .local v18, "last":Lorg/jsr166/ConcurrentHashMap8$Node;
    :try_start_b
    iget-object v5, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    if-nez v5, :cond_13

    .line 1938
    const-wide/16 v26, 0x1

    add-long v6, v6, v26

    .line 1939
    new-instance v25, Lorg/jsr166/ConcurrentHashMap8$Node;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    move-object/from16 v3, v26

    invoke-direct {v0, v14, v1, v2, v3}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 1940
    const/16 v25, 0x8

    move/from16 v0, v25

    if-lt v4, v0, :cond_f

    .line 1941
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v15, v2}, Lorg/jsr166/ConcurrentHashMap8;->replaceWithTreeBin([Lorg/jsr166/ConcurrentHashMap8$Node;ILjava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_4

    .line 1947
    .end local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v18    # "last":Lorg/jsr166/ConcurrentHashMap8$Node;
    :catchall_2
    move-exception v25

    const/high16 v26, 0x40000000    # 2.0f

    or-int v26, v26, v12

    :try_start_c
    move/from16 v0, v26

    invoke-virtual {v11, v0, v12}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v26

    if-nez v26, :cond_12

    .line 1948
    iput v12, v11, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 1949
    monitor-enter v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :cond_12
    :try_start_e
    throw v25
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1928
    .restart local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v18    # "last":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 1949
    .end local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v18    # "last":Lorg/jsr166/ConcurrentHashMap8$Node;
    :catchall_3
    move-exception v25

    :try_start_f
    monitor-exit v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v25
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :catchall_4
    move-exception v25

    :try_start_11
    monitor-exit v11
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v25
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 1969
    .end local v4    # "count":I
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v11    # "f":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v12    # "fh":I
    .end local v14    # "h":I
    .end local v15    # "i":I
    .end local v17    # "k":Ljava/lang/Object;
    .end local v22    # "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v23    # "v":Ljava/lang/Object;
    :cond_14
    return-void
.end method

.method private final internalPutIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .prologue
    .line 1408
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lorg/jsr166/ConcurrentHashMap8;->spread(I)I

    move-result v13

    .line 1409
    .local v13, "h":I
    const/4 v4, 0x0

    .line 1410
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;

    move-object/from16 v19, v0

    .line 1412
    .local v19, "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_0
    :goto_0
    if-nez v19, :cond_1

    .line 1413
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentHashMap8;->initTable()[Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v19

    goto :goto_0

    .line 1414
    :cond_1
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    and-int v14, v20, v13

    .local v14, "i":I
    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v8

    .local v8, "f":Lorg/jsr166/ConcurrentHashMap8$Node;
    if-nez v8, :cond_5

    .line 1415
    const/16 v20, 0x0

    new-instance v21, Lorg/jsr166/ConcurrentHashMap8$Node;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    invoke-direct {v0, v13, v1, v2, v3}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v14, v1, v2}, Lorg/jsr166/ConcurrentHashMap8;->casTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;Lorg/jsr166/ConcurrentHashMap8$Node;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1501
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 1502
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v4, v0, :cond_3

    .line 1503
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentHashMap8;->checkForResize()V

    .line 1504
    :cond_3
    const/16 v16, 0x0

    :cond_4
    :goto_2
    return-object v16

    .line 1418
    :cond_5
    iget v9, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .local v9, "fh":I
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-ne v9, v0, :cond_8

    .line 1419
    iget-object v10, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .local v10, "fk":Ljava/lang/Object;
    instance-of v0, v10, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    move/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v18, v10

    .line 1420
    check-cast v18, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    .line 1421
    .local v18, "t":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    const/16 v16, 0x0

    .line 1422
    .local v16, "oldVal":Ljava/lang/Object;
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->acquire(I)V

    .line 1424
    :try_start_0
    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v0, v8, :cond_6

    .line 1425
    const/4 v4, 0x2

    .line 1426
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v13, v1, v2}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->putTreeNode(ILjava/lang/Object;Ljava/lang/Object;)Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-result-object v17

    .line 1427
    .local v17, "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v17, :cond_6

    .line 1428
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->val:Ljava/lang/Object;

    move-object/from16 v16, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1431
    .end local v16    # "oldVal":Ljava/lang/Object;
    .end local v17    # "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    :cond_6
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->release(I)Z

    .line 1433
    if-eqz v4, :cond_0

    .line 1434
    if-eqz v16, :cond_2

    goto :goto_2

    .line 1431
    .restart local v16    # "oldVal":Ljava/lang/Object;
    :catchall_0
    move-exception v20

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->release(I)Z

    throw v20

    .line 1440
    .end local v16    # "oldVal":Ljava/lang/Object;
    .end local v18    # "t":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    :cond_7
    check-cast v10, [Lorg/jsr166/ConcurrentHashMap8$Node;

    .end local v10    # "fk":Ljava/lang/Object;
    move-object/from16 v19, v10

    check-cast v19, [Lorg/jsr166/ConcurrentHashMap8$Node;

    goto/16 :goto_0

    .line 1442
    :cond_8
    const v20, 0x3fffffff    # 1.9999999f

    and-int v20, v20, v9

    move/from16 v0, v20

    if-ne v0, v13, :cond_a

    iget-object v11, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    .local v11, "fv":Ljava/lang/Object;
    if-eqz v11, :cond_a

    iget-object v10, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .restart local v10    # "fk":Ljava/lang/Object;
    move-object/from16 v0, p1

    if-eq v10, v0, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    :cond_9
    move-object/from16 v16, v11

    .line 1444
    goto :goto_2

    .line 1446
    .end local v10    # "fk":Ljava/lang/Object;
    .end local v11    # "fv":Ljava/lang/Object;
    :cond_a
    iget-object v12, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 1447
    .local v12, "g":Lorg/jsr166/ConcurrentHashMap8$Node;
    if-eqz v12, :cond_e

    .line 1448
    move-object v5, v12

    .line 1450
    .local v5, "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_b
    iget v0, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    move/from16 v20, v0

    const v21, 0x3fffffff    # 1.9999999f

    and-int v20, v20, v21

    move/from16 v0, v20

    if-ne v0, v13, :cond_d

    iget-object v7, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    .local v7, "ev":Ljava/lang/Object;
    if-eqz v7, :cond_d

    iget-object v6, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .local v6, "ek":Ljava/lang/Object;
    move-object/from16 v0, p1

    if-eq v6, v0, :cond_c

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    :cond_c
    move-object/from16 v16, v7

    .line 1452
    goto/16 :goto_2

    .line 1453
    .end local v6    # "ek":Ljava/lang/Object;
    .end local v7    # "ev":Ljava/lang/Object;
    :cond_d
    iget-object v5, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    if-nez v5, :cond_b

    .line 1454
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentHashMap8;->checkForResize()V

    .line 1459
    .end local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_e
    iget v9, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    const/high16 v20, 0x40000000    # 2.0f

    and-int v20, v20, v9

    if-eqz v20, :cond_f

    .line 1460
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentHashMap8;->checkForResize()V

    .line 1461
    move-object/from16 v0, v19

    invoke-virtual {v8, v0, v14}, Lorg/jsr166/ConcurrentHashMap8$Node;->tryAwaitLock([Lorg/jsr166/ConcurrentHashMap8$Node;I)V

    goto/16 :goto_0

    .line 1463
    :cond_f
    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v0, v8, :cond_0

    const/high16 v20, 0x40000000    # 2.0f

    or-int v20, v20, v9

    move/from16 v0, v20

    invoke-virtual {v8, v9, v0}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1464
    const/16 v16, 0x0

    .line 1466
    .restart local v16    # "oldVal":Ljava/lang/Object;
    :try_start_1
    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v0, v8, :cond_11

    .line 1467
    const/4 v4, 0x1

    .line 1468
    move-object v5, v8

    .line 1470
    .restart local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_3
    iget v0, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    move/from16 v20, v0

    const v21, 0x3fffffff    # 1.9999999f

    and-int v20, v20, v21

    move/from16 v0, v20

    if-ne v0, v13, :cond_13

    iget-object v7, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    .restart local v7    # "ev":Ljava/lang/Object;
    if-eqz v7, :cond_13

    iget-object v6, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .restart local v6    # "ek":Ljava/lang/Object;
    move-object/from16 v0, p1

    if-eq v6, v0, :cond_10

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v20

    if-eqz v20, :cond_13

    .line 1473
    :cond_10
    move-object/from16 v16, v7

    .line 1486
    .end local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v6    # "ek":Ljava/lang/Object;
    .end local v7    # "ev":Ljava/lang/Object;
    .end local v16    # "oldVal":Ljava/lang/Object;
    :cond_11
    :goto_4
    const/high16 v20, 0x40000000    # 2.0f

    or-int v20, v20, v9

    move/from16 v0, v20

    invoke-virtual {v8, v0, v9}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v20

    if-nez v20, :cond_12

    .line 1487
    iput v9, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 1488
    monitor-enter v8

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1491
    :cond_12
    if-eqz v4, :cond_0

    .line 1492
    if-nez v16, :cond_4

    .line 1494
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x40

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_2

    .line 1495
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 1476
    .restart local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v16    # "oldVal":Ljava/lang/Object;
    :cond_13
    move-object v15, v5

    .line 1477
    .local v15, "last":Lorg/jsr166/ConcurrentHashMap8$Node;
    :try_start_3
    iget-object v5, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    if-nez v5, :cond_15

    .line 1478
    new-instance v20, Lorg/jsr166/ConcurrentHashMap8$Node;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-direct {v0, v13, v1, v2, v3}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    move-object/from16 v0, v20

    iput-object v0, v15, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 1479
    const/16 v20, 0x8

    move/from16 v0, v20

    if-lt v4, v0, :cond_11

    .line 1480
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v14, v2}, Lorg/jsr166/ConcurrentHashMap8;->replaceWithTreeBin([Lorg/jsr166/ConcurrentHashMap8$Node;ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 1486
    .end local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v15    # "last":Lorg/jsr166/ConcurrentHashMap8$Node;
    :catchall_1
    move-exception v20

    const/high16 v21, 0x40000000    # 2.0f

    or-int v21, v21, v9

    move/from16 v0, v21

    invoke-virtual {v8, v0, v9}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v21

    if-nez v21, :cond_14

    .line 1487
    iput v9, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 1488
    monitor-enter v8

    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_14
    throw v20

    .line 1468
    .restart local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v15    # "last":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 1488
    .end local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v15    # "last":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v16    # "oldVal":Ljava/lang/Object;
    :catchall_2
    move-exception v20

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v20

    .restart local v16    # "oldVal":Ljava/lang/Object;
    :catchall_3
    move-exception v20

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v20
.end method

.method private final internalReplace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;
    .param p3, "cv"    # Ljava/lang/Object;

    .prologue
    .line 1201
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v21

    invoke-static/range {v21 .. v21}, Lorg/jsr166/ConcurrentHashMap8;->spread(I)I

    move-result v12

    .line 1202
    .local v12, "h":I
    const/4 v14, 0x0

    .line 1203
    .local v14, "oldVal":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;

    move-object/from16 v19, v0

    .line 1205
    .end local v14    # "oldVal":Ljava/lang/Object;
    .local v19, "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_0
    :goto_0
    if-eqz v19, :cond_1

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    and-int v13, v21, v12

    .local v13, "i":I
    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v9

    .local v9, "f":Lorg/jsr166/ConcurrentHashMap8$Node;
    if-nez v9, :cond_2

    .line 1289
    .end local v9    # "f":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v13    # "i":I
    :cond_1
    :goto_1
    return-object v14

    .line 1208
    .restart local v9    # "f":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v13    # "i":I
    :cond_2
    iget v10, v9, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .local v10, "fh":I
    const/high16 v21, -0x80000000

    move/from16 v0, v21

    if-ne v10, v0, :cond_6

    .line 1209
    iget-object v11, v9, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .local v11, "fk":Ljava/lang/Object;
    instance-of v0, v11, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v18, v11

    .line 1210
    check-cast v18, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    .line 1211
    .local v18, "t":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    const/16 v20, 0x0

    .line 1212
    .local v20, "validated":Z
    const/4 v4, 0x0

    .line 1213
    .local v4, "deleted":Z
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->acquire(I)V

    .line 1215
    :try_start_0
    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v21

    move-object/from16 v0, v21

    if-ne v0, v9, :cond_4

    .line 1216
    const/16 v20, 0x1

    .line 1217
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->root:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v12, v1, v2}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->getTreeNode(ILjava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$TreeNode;)Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    move-result-object v15

    .line 1218
    .local v15, "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    if-eqz v15, :cond_4

    .line 1219
    iget-object v0, v15, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->val:Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 1220
    .local v17, "pv":Ljava/lang/Object;
    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1221
    :cond_3
    move-object/from16 v14, v17

    .line 1222
    .restart local v14    # "oldVal":Ljava/lang/Object;
    move-object/from16 v0, p2

    iput-object v0, v15, Lorg/jsr166/ConcurrentHashMap8$TreeNode;->val:Ljava/lang/Object;

    if-nez p2, :cond_4

    .line 1223
    const/4 v4, 0x1

    .line 1224
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->deleteTreeNode(Lorg/jsr166/ConcurrentHashMap8$TreeNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    .end local v14    # "oldVal":Ljava/lang/Object;
    .end local v15    # "p":Lorg/jsr166/ConcurrentHashMap8$TreeNode;
    .end local v17    # "pv":Ljava/lang/Object;
    :cond_4
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->release(I)Z

    .line 1232
    if-eqz v20, :cond_0

    .line 1233
    if-eqz v4, :cond_1

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    move-object/from16 v21, v0

    const-wide/16 v22, -0x1

    invoke-virtual/range {v21 .. v23}, Lorg/jsr166/LongAdder8;->add(J)V

    goto :goto_1

    .line 1230
    :catchall_0
    move-exception v21

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->release(I)Z

    throw v21

    .line 1239
    .end local v4    # "deleted":Z
    .end local v18    # "t":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    .end local v20    # "validated":Z
    :cond_5
    check-cast v11, [Lorg/jsr166/ConcurrentHashMap8$Node;

    .end local v11    # "fk":Ljava/lang/Object;
    move-object/from16 v19, v11

    check-cast v19, [Lorg/jsr166/ConcurrentHashMap8$Node;

    goto/16 :goto_0

    .line 1241
    :cond_6
    const v21, 0x3fffffff    # 1.9999999f

    and-int v21, v21, v10

    move/from16 v0, v21

    if-eq v0, v12, :cond_7

    iget-object v0, v9, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 1243
    :cond_7
    const/high16 v21, 0x40000000    # 2.0f

    and-int v21, v21, v10

    if-eqz v21, :cond_8

    .line 1244
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentHashMap8;->checkForResize()V

    .line 1245
    move-object/from16 v0, v19

    invoke-virtual {v9, v0, v13}, Lorg/jsr166/ConcurrentHashMap8$Node;->tryAwaitLock([Lorg/jsr166/ConcurrentHashMap8$Node;I)V

    goto/16 :goto_0

    .line 1247
    :cond_8
    const/high16 v21, 0x40000000    # 2.0f

    or-int v21, v21, v10

    move/from16 v0, v21

    invoke-virtual {v9, v10, v0}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1248
    const/16 v20, 0x0

    .line 1249
    .restart local v20    # "validated":Z
    const/4 v4, 0x0

    .line 1251
    .restart local v4    # "deleted":Z
    :try_start_1
    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v21

    move-object/from16 v0, v21

    if-ne v0, v9, :cond_c

    .line 1252
    const/16 v20, 0x1

    .line 1253
    move-object v5, v9

    .local v5, "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    const/16 v16, 0x0

    .line 1255
    .local v16, "pred":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_9
    iget v0, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    move/from16 v21, v0

    const v22, 0x3fffffff    # 1.9999999f

    and-int v21, v21, v22

    move/from16 v0, v21

    if-ne v0, v12, :cond_10

    iget-object v8, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    .local v8, "ev":Ljava/lang/Object;
    if-eqz v8, :cond_10

    iget-object v6, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .local v6, "ek":Ljava/lang/Object;
    move-object/from16 v0, p1

    if-eq v6, v0, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 1258
    :cond_a
    if-eqz p3, :cond_b

    move-object/from16 v0, p3

    if-eq v0, v8, :cond_b

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 1259
    :cond_b
    move-object v14, v8

    .line 1260
    .restart local v14    # "oldVal":Ljava/lang/Object;
    move-object/from16 v0, p2

    iput-object v0, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    if-nez p2, :cond_c

    .line 1261
    const/4 v4, 0x1

    .line 1262
    iget-object v7, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 1263
    .local v7, "en":Lorg/jsr166/ConcurrentHashMap8$Node;
    if-eqz v16, :cond_e

    .line 1264
    move-object/from16 v0, v16

    iput-object v7, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1277
    .end local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v6    # "ek":Ljava/lang/Object;
    .end local v7    # "en":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v8    # "ev":Ljava/lang/Object;
    .end local v14    # "oldVal":Ljava/lang/Object;
    .end local v16    # "pred":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_c
    :goto_2
    const/high16 v21, 0x40000000    # 2.0f

    or-int v21, v21, v10

    move/from16 v0, v21

    invoke-virtual {v9, v0, v10}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v21

    if-nez v21, :cond_d

    .line 1278
    iput v10, v9, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 1279
    monitor-enter v9

    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1282
    :cond_d
    if-eqz v20, :cond_0

    .line 1283
    if-eqz v4, :cond_1

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    move-object/from16 v21, v0

    const-wide/16 v22, -0x1

    invoke-virtual/range {v21 .. v23}, Lorg/jsr166/LongAdder8;->add(J)V

    goto/16 :goto_1

    .line 1266
    .restart local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v6    # "ek":Ljava/lang/Object;
    .restart local v7    # "en":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v8    # "ev":Ljava/lang/Object;
    .restart local v14    # "oldVal":Ljava/lang/Object;
    .restart local v16    # "pred":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_e
    :try_start_3
    move-object/from16 v0, v19

    invoke-static {v0, v13, v7}, Lorg/jsr166/ConcurrentHashMap8;->setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 1277
    .end local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v6    # "ek":Ljava/lang/Object;
    .end local v7    # "en":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v8    # "ev":Ljava/lang/Object;
    .end local v14    # "oldVal":Ljava/lang/Object;
    .end local v16    # "pred":Lorg/jsr166/ConcurrentHashMap8$Node;
    :catchall_1
    move-exception v21

    const/high16 v22, 0x40000000    # 2.0f

    or-int v22, v22, v10

    move/from16 v0, v22

    invoke-virtual {v9, v0, v10}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v22

    if-nez v22, :cond_f

    .line 1278
    iput v10, v9, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 1279
    monitor-enter v9

    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_f
    throw v21

    .line 1271
    .restart local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v16    # "pred":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_10
    move-object/from16 v16, v5

    .line 1272
    :try_start_5
    iget-object v5, v5, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v5, :cond_9

    goto :goto_2

    .line 1279
    .end local v5    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v16    # "pred":Lorg/jsr166/ConcurrentHashMap8$Node;
    :catchall_2
    move-exception v21

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v21

    :catchall_3
    move-exception v21

    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v21
.end method

.method public static newKeySet()Lorg/jsr166/ConcurrentHashMap8$KeySetView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/jsr166/ConcurrentHashMap8$KeySetView",
            "<TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2542
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8$KeySetView;

    new-instance v1, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v1}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lorg/jsr166/ConcurrentHashMap8$KeySetView;-><init>(Lorg/jsr166/ConcurrentHashMap8;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newKeySet(I)Lorg/jsr166/ConcurrentHashMap8$KeySetView;
    .locals 3
    .param p0, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lorg/jsr166/ConcurrentHashMap8$KeySetView",
            "<TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2557
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8$KeySetView;

    new-instance v1, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v1, p0}, Lorg/jsr166/ConcurrentHashMap8;-><init>(I)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lorg/jsr166/ConcurrentHashMap8$KeySetView;-><init>(Lorg/jsr166/ConcurrentHashMap8;Ljava/lang/Object;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 29
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 3306
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 3307
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/jsr166/ConcurrentHashMap8;->segments:[Lorg/jsr166/ConcurrentHashMap8$Segment;

    .line 3309
    sget-object v4, Lorg/jsr166/ConcurrentHashMap8;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lorg/jsr166/ConcurrentHashMap8;->counterOffset:J

    new-instance v5, Lorg/jsr166/LongAdder8;

    invoke-direct {v5}, Lorg/jsr166/LongAdder8;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3312
    const-wide/16 v24, 0x0

    .line 3313
    .local v24, "size":J
    const/16 v21, 0x0

    .line 3315
    .local v21, "p":Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v17

    .line 3316
    .local v17, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v28

    .line 3317
    .local v28, "v":Ljava/lang/Object;, "TV;"
    if-eqz v17, :cond_0

    if-eqz v28, :cond_0

    .line 3318
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Lorg/jsr166/ConcurrentHashMap8;->spread(I)I

    move-result v13

    .line 3319
    .local v13, "h":I
    new-instance v22, Lorg/jsr166/ConcurrentHashMap8$Node;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v28

    move-object/from16 v3, v21

    invoke-direct {v0, v13, v1, v2, v3}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 3320
    .end local v21    # "p":Lorg/jsr166/ConcurrentHashMap8$Node;
    .local v22, "p":Lorg/jsr166/ConcurrentHashMap8$Node;
    const-wide/16 v4, 0x1

    add-long v24, v24, v4

    move-object/from16 v21, v22

    .line 3324
    .end local v22    # "p":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v21    # "p":Lorg/jsr166/ConcurrentHashMap8$Node;
    goto :goto_0

    .line 3325
    .end local v13    # "h":I
    :cond_0
    if-eqz v21, :cond_8

    .line 3326
    const/4 v15, 0x0

    .line 3328
    .local v15, "init":Z
    const-wide/32 v4, 0x20000000

    cmp-long v4, v24, v4

    if-ltz v4, :cond_2

    .line 3329
    const/high16 v19, 0x40000000    # 2.0f

    .line 3334
    .local v19, "n":I
    :goto_1
    move-object/from16 v0, p0

    iget v8, v0, Lorg/jsr166/ConcurrentHashMap8;->sizeCtl:I

    .line 3335
    .local v8, "sc":I
    const/4 v11, 0x0

    .line 3336
    .local v11, "collide":Z
    move/from16 v0, v19

    if-le v0, v8, :cond_7

    sget-object v4, Lorg/jsr166/ConcurrentHashMap8;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lorg/jsr166/ConcurrentHashMap8;->sizeCtlOffset:J

    const/4 v9, -0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3339
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;

    if-nez v4, :cond_4

    .line 3340
    const/4 v15, 0x1

    .line 3341
    move/from16 v0, v19

    new-array v0, v0, [Lorg/jsr166/ConcurrentHashMap8$Node;

    move-object/from16 v27, v0

    .line 3342
    .local v27, "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    add-int/lit8 v18, v19, -0x1

    .line 3343
    .local v18, "mask":I
    :goto_2
    if-eqz v21, :cond_3

    .line 3344
    move-object/from16 v0, v21

    iget v4, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    and-int v16, v4, v18

    .line 3345
    .local v16, "j":I
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    move-object/from16 v20, v0

    .line 3346
    .local v20, "next":Lorg/jsr166/ConcurrentHashMap8$Node;
    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-static {v0, v1}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    iput-object v0, v1, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 3347
    .local v23, "q":Lorg/jsr166/ConcurrentHashMap8$Node;
    move-object/from16 v0, v27

    move/from16 v1, v16

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/jsr166/ConcurrentHashMap8;->setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 3348
    if-nez v11, :cond_1

    if-eqz v23, :cond_1

    move-object/from16 v0, v23

    iget v4, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    move-object/from16 v0, v21

    iget v5, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v5, :cond_1

    .line 3349
    const/4 v11, 0x1

    .line 3350
    :cond_1
    move-object/from16 v21, v20

    .line 3351
    goto :goto_2

    .line 3331
    .end local v8    # "sc":I
    .end local v11    # "collide":Z
    .end local v16    # "j":I
    .end local v18    # "mask":I
    .end local v19    # "n":I
    .end local v20    # "next":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v23    # "q":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v27    # "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_2
    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v26, v0

    .line 3332
    .local v26, "sz":I
    ushr-int/lit8 v4, v26, 0x1

    add-int v4, v4, v26

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lorg/jsr166/ConcurrentHashMap8;->tableSizeFor(I)I

    move-result v19

    .restart local v19    # "n":I
    goto :goto_1

    .line 3352
    .end local v26    # "sz":I
    .restart local v8    # "sc":I
    .restart local v11    # "collide":Z
    .restart local v18    # "mask":I
    .restart local v27    # "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_3
    :try_start_1
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 3353
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lorg/jsr166/LongAdder8;->add(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3354
    ushr-int/lit8 v4, v19, 0x2

    sub-int v8, v19, v4

    .line 3357
    .end local v18    # "mask":I
    .end local v27    # "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_4
    move-object/from16 v0, p0

    iput v8, v0, Lorg/jsr166/ConcurrentHashMap8;->sizeCtl:I

    .line 3359
    if-eqz v11, :cond_7

    .line 3360
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;

    move-object/from16 v27, v0

    .line 3361
    .restart local v27    # "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    move-object/from16 v0, v27

    array-length v4, v0

    if-ge v14, v4, :cond_7

    .line 3362
    const/4 v10, 0x0

    .line 3363
    .local v10, "c":I
    move-object/from16 v0, v27

    invoke-static {v0, v14}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v12

    .local v12, "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_4
    if-eqz v12, :cond_5

    .line 3364
    add-int/lit8 v10, v10, 0x1

    const/16 v4, 0x8

    if-le v10, v4, :cond_6

    iget-object v4, v12, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Comparable;

    if-eqz v4, :cond_6

    .line 3366
    iget-object v4, v12, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v14, v4}, Lorg/jsr166/ConcurrentHashMap8;->replaceWithTreeBin([Lorg/jsr166/ConcurrentHashMap8$Node;ILjava/lang/Object;)V

    .line 3361
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 3357
    .end local v10    # "c":I
    .end local v12    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v14    # "i":I
    .end local v27    # "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jsr166/ConcurrentHashMap8;->sizeCtl:I

    throw v4

    .line 3363
    .restart local v10    # "c":I
    .restart local v12    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v14    # "i":I
    .restart local v27    # "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_6
    iget-object v12, v12, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    goto :goto_4

    .line 3373
    .end local v10    # "c":I
    .end local v12    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v14    # "i":I
    .end local v27    # "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_7
    if-nez v15, :cond_8

    .line 3374
    :goto_5
    if-eqz v21, :cond_8

    .line 3375
    move-object/from16 v0, v21

    iget-object v4, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    move-object/from16 v0, v21

    iget-object v5, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/jsr166/ConcurrentHashMap8;->internalPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3376
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    move-object/from16 v21, v0

    goto :goto_5

    .line 3380
    .end local v8    # "sc":I
    .end local v11    # "collide":Z
    .end local v15    # "init":Z
    .end local v19    # "n":I
    :cond_8
    return-void
.end method

.method private static final rebuild([Lorg/jsr166/ConcurrentHashMap8$Node;)[Lorg/jsr166/ConcurrentHashMap8$Node;
    .locals 25
    .param p0, "tab"    # [Lorg/jsr166/ConcurrentHashMap8$Node;

    .prologue
    .line 2078
    move-object/from16 v0, p0

    array-length v15, v0

    .line 2079
    .local v15, "n":I
    shl-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Lorg/jsr166/ConcurrentHashMap8$Node;

    move-object/from16 v18, v0

    .line 2080
    .local v18, "nextTab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    new-instance v11, Lorg/jsr166/ConcurrentHashMap8$Node;

    const/high16 v22, -0x80000000

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v11, v0, v1, v2, v3}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 2081
    .local v11, "fwd":Lorg/jsr166/ConcurrentHashMap8$Node;
    const/4 v6, 0x0

    .line 2082
    .local v6, "buffer":[I
    const/16 v19, 0x0

    .line 2083
    .local v19, "rev":Lorg/jsr166/ConcurrentHashMap8$Node;
    const/16 v16, 0x0

    .line 2084
    .local v16, "nbuffered":I
    const/4 v7, 0x0

    .line 2085
    .local v7, "bufferIndex":I
    add-int/lit8 v5, v15, -0x1

    .line 2087
    .local v5, "bin":I
    move v13, v5

    .line 2089
    .local v13, "i":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v8

    .local v8, "f":Lorg/jsr166/ConcurrentHashMap8$Node;
    if-nez v8, :cond_3

    .line 2090
    if-ltz v5, :cond_2

    .line 2091
    move-object/from16 v0, p0

    invoke-static {v0, v13, v8, v11}, Lorg/jsr166/ConcurrentHashMap8;->casTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;Lorg/jsr166/ConcurrentHashMap8$Node;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 2165
    :cond_1
    :goto_1
    if-lez v5, :cond_f

    .line 2166
    add-int/lit8 v5, v5, -0x1

    move v13, v5

    goto :goto_0

    .line 2095
    :cond_2
    new-instance v12, Lorg/jsr166/ConcurrentHashMap8$Node;

    const/high16 v22, -0x40000000    # -2.0f

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v12, v0, v1, v2, v3}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 2096
    .local v12, "g":Lorg/jsr166/ConcurrentHashMap8$Node;
    move-object/from16 v0, p0

    invoke-static {v0, v13, v8, v12}, Lorg/jsr166/ConcurrentHashMap8;->casTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;Lorg/jsr166/ConcurrentHashMap8$Node;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 2098
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-static {v0, v13, v1}, Lorg/jsr166/ConcurrentHashMap8;->setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 2099
    add-int v22, v13, v15

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/jsr166/ConcurrentHashMap8;->setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 2100
    move-object/from16 v0, p0

    invoke-static {v0, v13, v11}, Lorg/jsr166/ConcurrentHashMap8;->setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 2101
    const/high16 v22, -0x40000000    # -2.0f

    const/high16 v23, -0x80000000

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v22

    if-nez v22, :cond_1

    .line 2102
    const/high16 v22, -0x80000000

    move/from16 v0, v22

    iput v0, v12, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 2103
    monitor-enter v12

    :try_start_0
    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v12

    goto :goto_1

    :catchall_0
    move-exception v22

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    .line 2107
    .end local v12    # "g":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_3
    iget v9, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .local v9, "fh":I
    const/high16 v22, -0x80000000

    move/from16 v0, v22

    if-ne v9, v0, :cond_5

    .line 2108
    iget-object v10, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .line 2109
    .local v10, "fk":Ljava/lang/Object;
    instance-of v0, v10, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v20, v10

    .line 2110
    check-cast v20, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    .line 2111
    .local v20, "t":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    const/16 v21, 0x0

    .line 2112
    .local v21, "validated":Z
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->acquire(I)V

    .line 2114
    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v22

    move-object/from16 v0, v22

    if-ne v0, v8, :cond_4

    .line 2115
    const/16 v21, 0x1

    .line 2116
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v13, v1}, Lorg/jsr166/ConcurrentHashMap8;->splitTreeBin([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$TreeBin;)V

    .line 2117
    move-object/from16 v0, p0

    invoke-static {v0, v13, v11}, Lorg/jsr166/ConcurrentHashMap8;->setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2120
    :cond_4
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->release(I)Z

    .line 2122
    if-nez v21, :cond_1

    goto/16 :goto_0

    .line 2120
    :catchall_1
    move-exception v22

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->release(I)Z

    throw v22

    .line 2126
    .end local v10    # "fk":Ljava/lang/Object;
    .end local v20    # "t":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    .end local v21    # "validated":Z
    :cond_5
    const/high16 v22, 0x40000000    # 2.0f

    and-int v22, v22, v9

    if-nez v22, :cond_9

    const/high16 v22, 0x40000000    # 2.0f

    or-int v22, v22, v9

    move/from16 v0, v22

    invoke-virtual {v8, v9, v0}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 2127
    const/16 v21, 0x0

    .line 2129
    .restart local v21    # "validated":Z
    :try_start_2
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v22

    move-object/from16 v0, v22

    if-ne v0, v8, :cond_6

    .line 2130
    const/16 v21, 0x1

    .line 2131
    move-object/from16 v0, v18

    invoke-static {v0, v13, v8}, Lorg/jsr166/ConcurrentHashMap8;->splitBin([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 2132
    move-object/from16 v0, p0

    invoke-static {v0, v13, v11}, Lorg/jsr166/ConcurrentHashMap8;->setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2135
    :cond_6
    const/high16 v22, 0x40000000    # 2.0f

    or-int v22, v22, v9

    move/from16 v0, v22

    invoke-virtual {v8, v0, v9}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v22

    if-nez v22, :cond_7

    .line 2136
    iput v9, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 2137
    monitor-enter v8

    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v8

    .line 2140
    :cond_7
    if-nez v21, :cond_1

    goto/16 :goto_0

    .line 2137
    :catchall_2
    move-exception v22

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v22

    .line 2135
    :catchall_3
    move-exception v22

    const/high16 v23, 0x40000000    # 2.0f

    or-int v23, v23, v9

    move/from16 v0, v23

    invoke-virtual {v8, v0, v9}, Lorg/jsr166/ConcurrentHashMap8$Node;->casHash(II)Z

    move-result v23

    if-nez v23, :cond_8

    .line 2136
    iput v9, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    .line 2137
    monitor-enter v8

    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_8
    throw v22

    :catchall_4
    move-exception v22

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v22

    .line 2144
    .end local v21    # "validated":Z
    :cond_9
    if-nez v6, :cond_a

    .line 2145
    const/16 v22, 0x20

    move/from16 v0, v22

    new-array v6, v0, [I

    .line 2146
    :cond_a
    if-gez v5, :cond_b

    if-lez v7, :cond_b

    .line 2147
    add-int/lit8 v7, v7, -0x1

    aget v14, v6, v7

    .line 2148
    .local v14, "j":I
    aput v13, v6, v7

    .line 2149
    move v13, v14

    .line 2150
    goto/16 :goto_0

    .line 2152
    .end local v14    # "j":I
    :cond_b
    if-ltz v5, :cond_c

    const/16 v22, 0x20

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_d

    .line 2153
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v13}, Lorg/jsr166/ConcurrentHashMap8$Node;->tryAwaitLock([Lorg/jsr166/ConcurrentHashMap8$Node;I)V

    goto/16 :goto_0

    .line 2156
    :cond_d
    if-nez v19, :cond_e

    .line 2157
    new-instance v19, Lorg/jsr166/ConcurrentHashMap8$Node;

    .end local v19    # "rev":Lorg/jsr166/ConcurrentHashMap8$Node;
    const/high16 v22, -0x80000000

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, p0

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 2158
    .restart local v19    # "rev":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_e
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v22

    move-object/from16 v0, v22

    if-ne v0, v8, :cond_0

    iget v0, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    and-int v22, v22, v23

    if-eqz v22, :cond_0

    .line 2160
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "nbuffered":I
    .local v17, "nbuffered":I
    aput v13, v6, v16

    .line 2161
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v13, v1}, Lorg/jsr166/ConcurrentHashMap8;->setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 2162
    add-int v22, v13, v15

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lorg/jsr166/ConcurrentHashMap8;->setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V

    move/from16 v16, v17

    .end local v17    # "nbuffered":I
    .restart local v16    # "nbuffered":I
    goto/16 :goto_1

    .line 2167
    .end local v9    # "fh":I
    :cond_f
    if-eqz v6, :cond_10

    if-lez v16, :cond_10

    .line 2168
    const/4 v5, -0x1

    .line 2169
    add-int/lit8 v16, v16, -0x1

    move/from16 v7, v16

    aget v13, v6, v16

    goto/16 :goto_0

    .line 2172
    :cond_10
    return-object v18
.end method

.method private final replaceWithTreeBin([Lorg/jsr166/ConcurrentHashMap8$Node;ILjava/lang/Object;)V
    .locals 7
    .param p1, "tab"    # [Lorg/jsr166/ConcurrentHashMap8$Node;
    .param p2, "index"    # I
    .param p3, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    const/4 v6, 0x0

    .line 1161
    instance-of v2, p3, Ljava/lang/Comparable;

    if-eqz v2, :cond_2

    array-length v2, p1

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    invoke-virtual {v2}, Lorg/jsr166/LongAdder8;->sum()J

    move-result-wide v2

    iget v4, p0, Lorg/jsr166/ConcurrentHashMap8;->sizeCtl:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 1163
    :cond_0
    new-instance v1, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    invoke-direct {v1}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;-><init>()V

    .line 1164
    .local v1, "t":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    invoke-static {p1, p2}, Lorg/jsr166/ConcurrentHashMap8;->tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v0

    .local v0, "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_0
    if-eqz v0, :cond_1

    .line 1165
    iget v2, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v2, v3

    iget-object v3, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    iget-object v4, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->putTreeNode(ILjava/lang/Object;Ljava/lang/Object;)Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 1164
    iget-object v0, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    goto :goto_0

    .line 1166
    :cond_1
    new-instance v2, Lorg/jsr166/ConcurrentHashMap8$Node;

    const/high16 v3, -0x80000000

    invoke-direct {v2, v3, v1, v6, v6}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    invoke-static {p1, p2, v2}, Lorg/jsr166/ConcurrentHashMap8;->setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 1168
    .end local v0    # "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v1    # "t":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    :cond_2
    return-void
.end method

.method private static final setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V
    .locals 6
    .param p0, "tab"    # [Lorg/jsr166/ConcurrentHashMap8$Node;
    .param p1, "i"    # I
    .param p2, "v"    # Lorg/jsr166/ConcurrentHashMap8$Node;

    .prologue
    .line 570
    sget-object v0, Lorg/jsr166/ConcurrentHashMap8;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v2, p1

    sget v1, Lorg/jsr166/ConcurrentHashMap8;->ASHIFT:I

    shl-long/2addr v2, v1

    sget-wide v4, Lorg/jsr166/ConcurrentHashMap8;->ABASE:J

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3, p2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 571
    return-void
.end method

.method private static splitBin([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V
    .locals 15
    .param p0, "nextTab"    # [Lorg/jsr166/ConcurrentHashMap8$Node;
    .param p1, "i"    # I
    .param p2, "e"    # Lorg/jsr166/ConcurrentHashMap8$Node;

    .prologue
    .line 2181
    array-length v13, p0

    ushr-int/lit8 v2, v13, 0x1

    .line 2182
    .local v2, "bit":I
    move-object/from16 v0, p2

    iget v13, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    and-int v12, v13, v2

    .line 2183
    .local v12, "runBit":I
    move-object/from16 v5, p2

    .local v5, "lastRun":Lorg/jsr166/ConcurrentHashMap8$Node;
    const/4 v6, 0x0

    .local v6, "lo":Lorg/jsr166/ConcurrentHashMap8$Node;
    const/4 v3, 0x0

    .line 2184
    .local v3, "hi":Lorg/jsr166/ConcurrentHashMap8$Node;
    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    .local v8, "p":Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_0
    if-eqz v8, :cond_1

    .line 2185
    iget v13, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    and-int v1, v13, v2

    .line 2186
    .local v1, "b":I
    if-eq v1, v12, :cond_0

    .line 2187
    move v12, v1

    .line 2188
    move-object v5, v8

    .line 2184
    :cond_0
    iget-object v8, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    goto :goto_0

    .line 2191
    .end local v1    # "b":I
    :cond_1
    if-nez v12, :cond_2

    .line 2192
    move-object v6, v5

    .line 2195
    :goto_1
    move-object/from16 v8, p2

    move-object v4, v3

    .end local v3    # "hi":Lorg/jsr166/ConcurrentHashMap8$Node;
    .local v4, "hi":Lorg/jsr166/ConcurrentHashMap8$Node;
    move-object v7, v6

    .end local v6    # "lo":Lorg/jsr166/ConcurrentHashMap8$Node;
    .local v7, "lo":Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_2
    if-eq v8, v5, :cond_4

    .line 2196
    iget v13, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    const v14, 0x3fffffff    # 1.9999999f

    and-int v9, v13, v14

    .line 2197
    .local v9, "ph":I
    iget-object v10, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .local v10, "pk":Ljava/lang/Object;
    iget-object v11, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    .line 2198
    .local v11, "pv":Ljava/lang/Object;
    and-int v13, v9, v2

    if-nez v13, :cond_3

    .line 2199
    new-instance v6, Lorg/jsr166/ConcurrentHashMap8$Node;

    invoke-direct {v6, v9, v10, v11, v7}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    .end local v7    # "lo":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v6    # "lo":Lorg/jsr166/ConcurrentHashMap8$Node;
    move-object v3, v4

    .line 2195
    .end local v4    # "hi":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v3    # "hi":Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_3
    iget-object v8, v8, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    move-object v4, v3

    .end local v3    # "hi":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v4    # "hi":Lorg/jsr166/ConcurrentHashMap8$Node;
    move-object v7, v6

    .end local v6    # "lo":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v7    # "lo":Lorg/jsr166/ConcurrentHashMap8$Node;
    goto :goto_2

    .line 2194
    .end local v4    # "hi":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v7    # "lo":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v9    # "ph":I
    .end local v10    # "pk":Ljava/lang/Object;
    .end local v11    # "pv":Ljava/lang/Object;
    .restart local v3    # "hi":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v6    # "lo":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_2
    move-object v3, v5

    goto :goto_1

    .line 2201
    .end local v3    # "hi":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v6    # "lo":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v4    # "hi":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v7    # "lo":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v9    # "ph":I
    .restart local v10    # "pk":Ljava/lang/Object;
    .restart local v11    # "pv":Ljava/lang/Object;
    :cond_3
    new-instance v3, Lorg/jsr166/ConcurrentHashMap8$Node;

    invoke-direct {v3, v9, v10, v11, v4}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    .end local v4    # "hi":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v3    # "hi":Lorg/jsr166/ConcurrentHashMap8$Node;
    move-object v6, v7

    .end local v7    # "lo":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v6    # "lo":Lorg/jsr166/ConcurrentHashMap8$Node;
    goto :goto_3

    .line 2203
    .end local v3    # "hi":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v6    # "lo":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v9    # "ph":I
    .end local v10    # "pk":Ljava/lang/Object;
    .end local v11    # "pv":Ljava/lang/Object;
    .restart local v4    # "hi":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v7    # "lo":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_4
    move/from16 v0, p1

    invoke-static {p0, v0, v7}, Lorg/jsr166/ConcurrentHashMap8;->setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 2204
    add-int v13, p1, v2

    invoke-static {p0, v13, v4}, Lorg/jsr166/ConcurrentHashMap8;->setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 2205
    return-void
.end method

.method private static splitTreeBin([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$TreeBin;)V
    .locals 20
    .param p0, "nextTab"    # [Lorg/jsr166/ConcurrentHashMap8$Node;
    .param p1, "i"    # I
    .param p2, "t"    # Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    .prologue
    .line 2211
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    ushr-int/lit8 v3, v17, 0x1

    .line 2212
    .local v3, "bit":I
    new-instance v14, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    invoke-direct {v14}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;-><init>()V

    .line 2213
    .local v14, "lt":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    new-instance v9, Lorg/jsr166/ConcurrentHashMap8$TreeBin;

    invoke-direct {v9}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;-><init>()V

    .line 2214
    .local v9, "ht":Lorg/jsr166/ConcurrentHashMap8$TreeBin;
    const/4 v11, 0x0

    .local v11, "lc":I
    const/4 v6, 0x0

    .line 2215
    .local v6, "hc":I
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->first:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .local v4, "e":Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_0
    if-eqz v4, :cond_1

    .line 2216
    iget v0, v4, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    move/from16 v17, v0

    const v18, 0x3fffffff    # 1.9999999f

    and-int v5, v17, v18

    .line 2217
    .local v5, "h":I
    iget-object v10, v4, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    .local v10, "k":Ljava/lang/Object;
    iget-object v0, v4, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 2218
    .local v16, "v":Ljava/lang/Object;
    and-int v17, v5, v3

    if-nez v17, :cond_0

    .line 2219
    add-int/lit8 v11, v11, 0x1

    .line 2220
    move-object/from16 v0, v16

    invoke-virtual {v14, v5, v10, v0}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->putTreeNode(ILjava/lang/Object;Ljava/lang/Object;)Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .line 2215
    :goto_1
    iget-object v4, v4, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    goto :goto_0

    .line 2223
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 2224
    move-object/from16 v0, v16

    invoke-virtual {v9, v5, v10, v0}, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->putTreeNode(ILjava/lang/Object;Ljava/lang/Object;)Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    goto :goto_1

    .line 2228
    .end local v5    # "h":I
    .end local v10    # "k":Ljava/lang/Object;
    .end local v16    # "v":Ljava/lang/Object;
    :cond_1
    const/16 v17, 0x4

    move/from16 v0, v17

    if-gt v11, v0, :cond_3

    .line 2229
    const/4 v12, 0x0

    .line 2230
    .local v12, "ln":Lorg/jsr166/ConcurrentHashMap8$Node;
    iget-object v15, v14, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->first:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .local v15, "p":Lorg/jsr166/ConcurrentHashMap8$Node;
    move-object v13, v12

    .end local v12    # "ln":Lorg/jsr166/ConcurrentHashMap8$Node;
    .local v13, "ln":Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_2
    if-eqz v15, :cond_2

    .line 2231
    new-instance v12, Lorg/jsr166/ConcurrentHashMap8$Node;

    iget v0, v15, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    move/from16 v17, v0

    iget-object v0, v15, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    move-object/from16 v18, v0

    iget-object v0, v15, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    move-object/from16 v19, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v12, v0, v1, v2, v13}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 2230
    .end local v13    # "ln":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v12    # "ln":Lorg/jsr166/ConcurrentHashMap8$Node;
    iget-object v15, v15, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    move-object v13, v12

    .end local v12    # "ln":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v13    # "ln":Lorg/jsr166/ConcurrentHashMap8$Node;
    goto :goto_2

    :cond_2
    move-object v12, v13

    .line 2235
    .end local v13    # "ln":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v15    # "p":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v12    # "ln":Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v12}, Lorg/jsr166/ConcurrentHashMap8;->setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 2236
    const/16 v17, 0x4

    move/from16 v0, v17

    if-gt v6, v0, :cond_5

    .line 2237
    const/4 v7, 0x0

    .line 2238
    .local v7, "hn":Lorg/jsr166/ConcurrentHashMap8$Node;
    iget-object v15, v9, Lorg/jsr166/ConcurrentHashMap8$TreeBin;->first:Lorg/jsr166/ConcurrentHashMap8$TreeNode;

    .restart local v15    # "p":Lorg/jsr166/ConcurrentHashMap8$Node;
    move-object v8, v7

    .end local v7    # "hn":Lorg/jsr166/ConcurrentHashMap8$Node;
    .local v8, "hn":Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_4
    if-eqz v15, :cond_4

    .line 2239
    new-instance v7, Lorg/jsr166/ConcurrentHashMap8$Node;

    iget v0, v15, Lorg/jsr166/ConcurrentHashMap8$Node;->hash:I

    move/from16 v17, v0

    iget-object v0, v15, Lorg/jsr166/ConcurrentHashMap8$Node;->key:Ljava/lang/Object;

    move-object/from16 v18, v0

    iget-object v0, v15, Lorg/jsr166/ConcurrentHashMap8$Node;->val:Ljava/lang/Object;

    move-object/from16 v19, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v7, v0, v1, v2, v8}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 2238
    .end local v8    # "hn":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v7    # "hn":Lorg/jsr166/ConcurrentHashMap8$Node;
    iget-object v15, v15, Lorg/jsr166/ConcurrentHashMap8$Node;->next:Lorg/jsr166/ConcurrentHashMap8$Node;

    move-object v8, v7

    .end local v7    # "hn":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v8    # "hn":Lorg/jsr166/ConcurrentHashMap8$Node;
    goto :goto_4

    .line 2234
    .end local v8    # "hn":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v12    # "ln":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v15    # "p":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_3
    new-instance v12, Lorg/jsr166/ConcurrentHashMap8$Node;

    const/high16 v17, -0x80000000

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v12, v0, v14, v1, v2}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    .restart local v12    # "ln":Lorg/jsr166/ConcurrentHashMap8$Node;
    goto :goto_3

    .restart local v8    # "hn":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v15    # "p":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_4
    move-object v7, v8

    .line 2243
    .end local v8    # "hn":Lorg/jsr166/ConcurrentHashMap8$Node;
    .end local v15    # "p":Lorg/jsr166/ConcurrentHashMap8$Node;
    .restart local v7    # "hn":Lorg/jsr166/ConcurrentHashMap8$Node;
    :goto_5
    add-int v17, p1, v3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1, v7}, Lorg/jsr166/ConcurrentHashMap8;->setTabAt([Lorg/jsr166/ConcurrentHashMap8$Node;ILorg/jsr166/ConcurrentHashMap8$Node;)V

    .line 2244
    return-void

    .line 2242
    .end local v7    # "hn":Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_5
    new-instance v7, Lorg/jsr166/ConcurrentHashMap8$Node;

    const/high16 v17, -0x80000000

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v7, v0, v9, v1, v2}, Lorg/jsr166/ConcurrentHashMap8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Node;)V

    .restart local v7    # "hn":Lorg/jsr166/ConcurrentHashMap8$Node;
    goto :goto_5
.end method

.method private static final spread(I)I
    .locals 2
    .param p0, "h"    # I

    .prologue
    .line 1151
    ushr-int/lit8 v0, p0, 0x12

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    .line 1152
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr v0, p0

    const v1, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, v1

    return v0
.end method

.method static final tabAt([Lorg/jsr166/ConcurrentHashMap8$Node;I)Lorg/jsr166/ConcurrentHashMap8$Node;
    .locals 6
    .param p0, "tab"    # [Lorg/jsr166/ConcurrentHashMap8$Node;
    .param p1, "i"    # I

    .prologue
    .line 562
    sget-object v0, Lorg/jsr166/ConcurrentHashMap8;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v2, p1

    sget v1, Lorg/jsr166/ConcurrentHashMap8;->ASHIFT:I

    shl-long/2addr v2, v1

    sget-wide v4, Lorg/jsr166/ConcurrentHashMap8;->ABASE:J

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsr166/ConcurrentHashMap8$Node;

    return-object v0
.end method

.method private static final tableSizeFor(I)I
    .locals 3
    .param p0, "c"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 1977
    if-gtz p0, :cond_1

    .line 1978
    const/4 v0, 0x1

    .line 1982
    :cond_0
    :goto_0
    return v0

    .line 1980
    :cond_1
    add-int/lit8 v2, p0, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    shl-int/lit8 v0, v2, 0x1

    .line 1982
    .local v0, "n":I
    if-lt v0, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private final tryPresize(I)V
    .locals 10
    .param p1, "size"    # I

    .prologue
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v5, -0x1

    .line 2038
    const/high16 v0, 0x20000000

    if-lt p1, v0, :cond_3

    move v6, v9

    .line 2041
    .local v6, "c":I
    :cond_0
    :goto_0
    iget v4, p0, Lorg/jsr166/ConcurrentHashMap8;->sizeCtl:I

    .local v4, "sc":I
    if-ltz v4, :cond_6

    .line 2042
    iget-object v8, p0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;

    .line 2043
    .local v8, "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    if-eqz v8, :cond_1

    array-length v7, v8

    .local v7, "n":I
    if-nez v7, :cond_5

    .line 2044
    .end local v7    # "n":I
    :cond_1
    if-le v4, v6, :cond_4

    move v7, v4

    .line 2045
    .restart local v7    # "n":I
    :goto_1
    sget-object v0, Lorg/jsr166/ConcurrentHashMap8;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jsr166/ConcurrentHashMap8;->sizeCtlOffset:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2047
    :try_start_0
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;

    if-ne v0, v8, :cond_2

    .line 2048
    new-array v0, v7, [Lorg/jsr166/ConcurrentHashMap8$Node;

    iput-object v0, p0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2049
    ushr-int/lit8 v0, v7, 0x2

    sub-int v4, v7, v0

    .line 2052
    :cond_2
    iput v4, p0, Lorg/jsr166/ConcurrentHashMap8;->sizeCtl:I

    goto :goto_0

    .line 2038
    .end local v4    # "sc":I
    .end local v6    # "c":I
    .end local v7    # "n":I
    .end local v8    # "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_3
    ushr-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/jsr166/ConcurrentHashMap8;->tableSizeFor(I)I

    move-result v6

    goto :goto_0

    .restart local v4    # "sc":I
    .restart local v6    # "c":I
    .restart local v8    # "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_4
    move v7, v6

    .line 2044
    goto :goto_1

    .line 2052
    .restart local v7    # "n":I
    :catchall_0
    move-exception v0

    iput v4, p0, Lorg/jsr166/ConcurrentHashMap8;->sizeCtl:I

    throw v0

    .line 2056
    :cond_5
    if-le v6, v4, :cond_6

    if-lt v7, v9, :cond_7

    .line 2069
    .end local v7    # "n":I
    .end local v8    # "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_6
    return-void

    .line 2058
    .restart local v7    # "n":I
    .restart local v8    # "tab":[Lorg/jsr166/ConcurrentHashMap8$Node;
    :cond_7
    sget-object v0, Lorg/jsr166/ConcurrentHashMap8;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jsr166/ConcurrentHashMap8;->sizeCtlOffset:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2060
    :try_start_1
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;

    if-ne v0, v8, :cond_8

    .line 2061
    invoke-static {v8}, Lorg/jsr166/ConcurrentHashMap8;->rebuild([Lorg/jsr166/ConcurrentHashMap8$Node;)[Lorg/jsr166/ConcurrentHashMap8$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/jsr166/ConcurrentHashMap8;->table:[Lorg/jsr166/ConcurrentHashMap8$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2062
    shl-int/lit8 v0, v7, 0x1

    ushr-int/lit8 v1, v7, 0x1

    sub-int v4, v0, v1

    .line 2065
    :cond_8
    iput v4, p0, Lorg/jsr166/ConcurrentHashMap8;->sizeCtl:I

    goto :goto_0

    :catchall_1
    move-exception v0

    iput v4, p0, Lorg/jsr166/ConcurrentHashMap8;->sizeCtl:I

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 7
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    const/4 v6, 0x0

    .line 3282
    iget-object v3, p0, Lorg/jsr166/ConcurrentHashMap8;->segments:[Lorg/jsr166/ConcurrentHashMap8$Segment;

    if-nez v3, :cond_0

    .line 3283
    const/16 v3, 0x10

    new-array v3, v3, [Lorg/jsr166/ConcurrentHashMap8$Segment;

    check-cast v3, [Lorg/jsr166/ConcurrentHashMap8$Segment;

    iput-object v3, p0, Lorg/jsr166/ConcurrentHashMap8;->segments:[Lorg/jsr166/ConcurrentHashMap8$Segment;

    .line 3285
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/jsr166/ConcurrentHashMap8;->segments:[Lorg/jsr166/ConcurrentHashMap8$Segment;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 3286
    iget-object v3, p0, Lorg/jsr166/ConcurrentHashMap8;->segments:[Lorg/jsr166/ConcurrentHashMap8$Segment;

    new-instance v4, Lorg/jsr166/ConcurrentHashMap8$Segment;

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-direct {v4, v5}, Lorg/jsr166/ConcurrentHashMap8$Segment;-><init>(F)V

    aput-object v4, v3, v0

    .line 3285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3288
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 3289
    new-instance v1, Lorg/jsr166/ConcurrentHashMap8$Traverser;

    invoke-direct {v1, p0}, Lorg/jsr166/ConcurrentHashMap8$Traverser;-><init>(Lorg/jsr166/ConcurrentHashMap8;)V

    .line 3291
    .local v1, "it":Lorg/jsr166/ConcurrentHashMap8$Traverser;, "Lorg/jsr166/ConcurrentHashMap8$Traverser<TK;TV;Ljava/lang/Object;>;"
    :goto_1
    invoke-virtual {v1}, Lorg/jsr166/ConcurrentHashMap8$Traverser;->advance()Ljava/lang/Object;

    move-result-object v2

    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 3292
    iget-object v3, v1, Lorg/jsr166/ConcurrentHashMap8$Traverser;->nextKey:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3293
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 3295
    :cond_1
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3296
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3297
    iput-object v6, p0, Lorg/jsr166/ConcurrentHashMap8;->segments:[Lorg/jsr166/ConcurrentHashMap8$Segment;

    .line 3298
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 2947
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    invoke-direct {p0}, Lorg/jsr166/ConcurrentHashMap8;->internalClear()V

    .line 2948
    return-void
.end method

.method public compute(Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$BiFun;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/jsr166/ConcurrentHashMap8$BiFun",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2854
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Lorg/jsr166/ConcurrentHashMap8$BiFun;, "Lorg/jsr166/ConcurrentHashMap8$BiFun<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2855
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2856
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/jsr166/ConcurrentHashMap8;->internalCompute(Ljava/lang/Object;ZLorg/jsr166/ConcurrentHashMap8$BiFun;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public computeIfAbsent(Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Fun;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/jsr166/ConcurrentHashMap8$Fun",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2766
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Lorg/jsr166/ConcurrentHashMap8$Fun;, "Lorg/jsr166/ConcurrentHashMap8$Fun<-TK;+TV;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2767
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2768
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/jsr166/ConcurrentHashMap8;->internalComputeIfAbsent(Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$Fun;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public computeIfPresent(Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$BiFun;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/jsr166/ConcurrentHashMap8$BiFun",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2807
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Lorg/jsr166/ConcurrentHashMap8$BiFun;, "Lorg/jsr166/ConcurrentHashMap8$BiFun<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2808
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2809
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/jsr166/ConcurrentHashMap8;->internalCompute(Ljava/lang/Object;ZLorg/jsr166/ConcurrentHashMap8$BiFun;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 2679
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/jsr166/ConcurrentHashMap8;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2636
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    if-nez p1, :cond_0

    .line 2637
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2638
    :cond_0
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentHashMap8;->internalGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 2652
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    if-nez p1, :cond_0

    .line 2653
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 2655
    :cond_0
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8$Traverser;

    invoke-direct {v0, p0}, Lorg/jsr166/ConcurrentHashMap8$Traverser;-><init>(Lorg/jsr166/ConcurrentHashMap8;)V

    .line 2656
    .local v0, "it":Lorg/jsr166/ConcurrentHashMap8$Traverser;, "Lorg/jsr166/ConcurrentHashMap8$Traverser<TK;TV;Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {v0}, Lorg/jsr166/ConcurrentHashMap8$Traverser;->advance()Ljava/lang/Object;

    move-result-object v1

    .local v1, "v":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 2657
    if-eq v1, p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2658
    :cond_2
    const/4 v2, 0x1

    .line 2660
    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3028
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8$ValueIterator;

    invoke-direct {v0, p0}, Lorg/jsr166/ConcurrentHashMap8$ValueIterator;-><init>(Lorg/jsr166/ConcurrentHashMap8;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
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
    .line 3007
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8;->entrySet:Lorg/jsr166/ConcurrentHashMap8$EntrySetView;

    .line 3008
    .local v0, "es":Lorg/jsr166/ConcurrentHashMap8$EntrySetView;, "Lorg/jsr166/ConcurrentHashMap8$EntrySetView<TK;TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "es":Lorg/jsr166/ConcurrentHashMap8$EntrySetView;, "Lorg/jsr166/ConcurrentHashMap8$EntrySetView<TK;TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "es":Lorg/jsr166/ConcurrentHashMap8$EntrySetView;, "Lorg/jsr166/ConcurrentHashMap8$EntrySetView<TK;TV;>;"
    :cond_0
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8$EntrySetView;

    .end local v0    # "es":Lorg/jsr166/ConcurrentHashMap8$EntrySetView;, "Lorg/jsr166/ConcurrentHashMap8$EntrySetView<TK;TV;>;"
    invoke-direct {v0, p0}, Lorg/jsr166/ConcurrentHashMap8$EntrySetView;-><init>(Lorg/jsr166/ConcurrentHashMap8;)V

    iput-object v0, p0, Lorg/jsr166/ConcurrentHashMap8;->entrySet:Lorg/jsr166/ConcurrentHashMap8$EntrySetView;

    goto :goto_0
.end method

.method public entrySpliterator()Lorg/jsr166/ConcurrentHashMap8$Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsr166/ConcurrentHashMap8$Spliterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3055
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8$EntryIterator;

    invoke-direct {v0, p0}, Lorg/jsr166/ConcurrentHashMap8$EntryIterator;-><init>(Lorg/jsr166/ConcurrentHashMap8;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    const/4 v8, 0x0

    .line 3116
    if-eq p1, p0, :cond_5

    .line 3117
    instance-of v9, p1, Ljava/util/Map;

    if-nez v9, :cond_1

    .line 3136
    :cond_0
    :goto_0
    return v8

    :cond_1
    move-object v3, p1

    .line 3119
    check-cast v3, Ljava/util/Map;

    .line 3120
    .local v3, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v2, Lorg/jsr166/ConcurrentHashMap8$Traverser;

    invoke-direct {v2, p0}, Lorg/jsr166/ConcurrentHashMap8$Traverser;-><init>(Lorg/jsr166/ConcurrentHashMap8;)V

    .line 3122
    .local v2, "it":Lorg/jsr166/ConcurrentHashMap8$Traverser;, "Lorg/jsr166/ConcurrentHashMap8$Traverser<TK;TV;Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {v2}, Lorg/jsr166/ConcurrentHashMap8$Traverser;->advance()Ljava/lang/Object;

    move-result-object v7

    .local v7, "val":Ljava/lang/Object;
    if-eqz v7, :cond_3

    .line 3123
    iget-object v9, v2, Lorg/jsr166/ConcurrentHashMap8$Traverser;->nextKey:Ljava/lang/Object;

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 3124
    .local v6, "v":Ljava/lang/Object;
    if-eqz v6, :cond_0

    if-eq v6, v7, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    .line 3127
    .end local v6    # "v":Ljava/lang/Object;
    :cond_3
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3129
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .local v4, "mk":Ljava/lang/Object;
    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "mv":Ljava/lang/Object;
    if-eqz v5, :cond_0

    invoke-direct {p0, v4}, Lorg/jsr166/ConcurrentHashMap8;->internalGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "v":Ljava/lang/Object;
    if-eqz v6, :cond_0

    if-eq v5, v6, :cond_4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_0

    .line 3136
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "it":Lorg/jsr166/ConcurrentHashMap8$Traverser;, "Lorg/jsr166/ConcurrentHashMap8$Traverser<TK;TV;Ljava/lang/Object;>;"
    .end local v3    # "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v4    # "mk":Ljava/lang/Object;
    .end local v5    # "mv":Ljava/lang/Object;
    .end local v6    # "v":Ljava/lang/Object;
    .end local v7    # "val":Ljava/lang/Object;
    :cond_5
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 2604
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    if-nez p1, :cond_0

    .line 2605
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2606
    :cond_0
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentHashMap8;->internalGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2620
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    .line 2621
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2622
    :cond_0
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentHashMap8;->internalGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2623
    .local v0, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_1

    .end local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_1
    move-object p2, v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 3066
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    const/4 v0, 0x0

    .line 3067
    .local v0, "h":I
    new-instance v1, Lorg/jsr166/ConcurrentHashMap8$Traverser;

    invoke-direct {v1, p0}, Lorg/jsr166/ConcurrentHashMap8$Traverser;-><init>(Lorg/jsr166/ConcurrentHashMap8;)V

    .line 3069
    .local v1, "it":Lorg/jsr166/ConcurrentHashMap8$Traverser;, "Lorg/jsr166/ConcurrentHashMap8$Traverser<TK;TV;Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {v1}, Lorg/jsr166/ConcurrentHashMap8$Traverser;->advance()Ljava/lang/Object;

    move-result-object v2

    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 3070
    iget-object v3, v1, Lorg/jsr166/ConcurrentHashMap8$Traverser;->nextKey:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    xor-int/2addr v3, v4

    add-int/2addr v0, v3

    goto :goto_0

    .line 3072
    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    .line 2565
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->sum()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 183
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8;->keySet()Lorg/jsr166/ConcurrentHashMap8$KeySetView;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lorg/jsr166/ConcurrentHashMap8$KeySetView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsr166/ConcurrentHashMap8$KeySetView",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2958
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8;->keySet:Lorg/jsr166/ConcurrentHashMap8$KeySetView;

    .line 2959
    .local v0, "ks":Lorg/jsr166/ConcurrentHashMap8$KeySetView;, "Lorg/jsr166/ConcurrentHashMap8$KeySetView<TK;TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "ks":Lorg/jsr166/ConcurrentHashMap8$KeySetView;, "Lorg/jsr166/ConcurrentHashMap8$KeySetView<TK;TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "ks":Lorg/jsr166/ConcurrentHashMap8$KeySetView;, "Lorg/jsr166/ConcurrentHashMap8$KeySetView<TK;TV;>;"
    :cond_0
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8$KeySetView;

    .end local v0    # "ks":Lorg/jsr166/ConcurrentHashMap8$KeySetView;, "Lorg/jsr166/ConcurrentHashMap8$KeySetView<TK;TV;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jsr166/ConcurrentHashMap8$KeySetView;-><init>(Lorg/jsr166/ConcurrentHashMap8;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/jsr166/ConcurrentHashMap8;->keySet:Lorg/jsr166/ConcurrentHashMap8$KeySetView;

    goto :goto_0
.end method

.method public keySet(Ljava/lang/Object;)Lorg/jsr166/ConcurrentHashMap8$KeySetView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lorg/jsr166/ConcurrentHashMap8$KeySetView",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2975
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .local p1, "mappedValue":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    .line 2976
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2977
    :cond_0
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8$KeySetView;

    invoke-direct {v0, p0, p1}, Lorg/jsr166/ConcurrentHashMap8$KeySetView;-><init>(Lorg/jsr166/ConcurrentHashMap8;Ljava/lang/Object;)V

    return-object v0
.end method

.method public keySpliterator()Lorg/jsr166/ConcurrentHashMap8$Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsr166/ConcurrentHashMap8$Spliterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3037
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8$KeyIterator;

    invoke-direct {v0, p0}, Lorg/jsr166/ConcurrentHashMap8$KeyIterator;-><init>(Lorg/jsr166/ConcurrentHashMap8;)V

    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3018
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8$KeyIterator;

    invoke-direct {v0, p0}, Lorg/jsr166/ConcurrentHashMap8$KeyIterator;-><init>(Lorg/jsr166/ConcurrentHashMap8;)V

    return-object v0
.end method

.method public mappingCount()J
    .locals 5

    .prologue
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    const-wide/16 v2, 0x0

    .line 2588
    iget-object v4, p0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    invoke-virtual {v4}, Lorg/jsr166/LongAdder8;->sum()J

    move-result-wide v0

    .line 2589
    .local v0, "n":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .end local v0    # "n":J
    :cond_0
    return-wide v0
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$BiFun;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/jsr166/ConcurrentHashMap8$BiFun",
            "<-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2886
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Lorg/jsr166/ConcurrentHashMap8$BiFun;, "Lorg/jsr166/ConcurrentHashMap8$BiFun<-TV;-TV;+TV;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 2887
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2888
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/jsr166/ConcurrentHashMap8;->internalMerge(Ljava/lang/Object;Ljava/lang/Object;Lorg/jsr166/ConcurrentHashMap8$BiFun;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2696
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2697
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2698
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/jsr166/ConcurrentHashMap8;->internalPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2722
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentHashMap8;->internalPutAll(Ljava/util/Map;)V

    .line 2723
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2709
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2710
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2711
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/jsr166/ConcurrentHashMap8;->internalPutIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    const/4 v0, 0x0

    .line 2901
    if-nez p1, :cond_0

    .line 2902
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2903
    :cond_0
    invoke-direct {p0, p1, v0, v0}, Lorg/jsr166/ConcurrentHashMap8;->internalReplace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    const/4 v0, 0x0

    .line 2912
    if-nez p1, :cond_0

    .line 2913
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2914
    :cond_0
    if-nez p2, :cond_2

    .line 2916
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Lorg/jsr166/ConcurrentHashMap8;->internalReplace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2938
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2939
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2940
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsr166/ConcurrentHashMap8;->internalReplace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 2925
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 2926
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2927
    :cond_1
    invoke-direct {p0, p1, p3, p2}, Lorg/jsr166/ConcurrentHashMap8;->internalReplace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 2572
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    iget-object v2, p0, Lorg/jsr166/ConcurrentHashMap8;->counter:Lorg/jsr166/LongAdder8;

    invoke-virtual {v2}, Lorg/jsr166/LongAdder8;->sum()J

    move-result-wide v0

    .line 2573
    .local v0, "n":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const v2, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int v2, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 3087
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8$Traverser;

    invoke-direct {v0, p0}, Lorg/jsr166/ConcurrentHashMap8$Traverser;-><init>(Lorg/jsr166/ConcurrentHashMap8;)V

    .line 3088
    .local v0, "it":Lorg/jsr166/ConcurrentHashMap8$Traverser;, "Lorg/jsr166/ConcurrentHashMap8$Traverser<TK;TV;Ljava/lang/Object;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3089
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3091
    invoke-virtual {v0}, Lorg/jsr166/ConcurrentHashMap8$Traverser;->advance()Ljava/lang/Object;

    move-result-object v3

    .local v3, "v":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 3093
    :goto_0
    iget-object v1, v0, Lorg/jsr166/ConcurrentHashMap8$Traverser;->nextKey:Ljava/lang/Object;

    .line 3094
    .local v1, "k":Ljava/lang/Object;
    if-ne v1, p0, :cond_0

    const-string v1, "(this Map)"

    .end local v1    # "k":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3095
    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3096
    if-ne v3, p0, :cond_1

    const-string v3, "(this Map)"

    .end local v3    # "v":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3097
    invoke-virtual {v0}, Lorg/jsr166/ConcurrentHashMap8$Traverser;->advance()Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "v":Ljava/lang/Object;
    if-nez v3, :cond_3

    .line 3102
    :cond_2
    const/16 v4, 0x7d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3099
    :cond_3
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public valueSpliterator()Lorg/jsr166/ConcurrentHashMap8$Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsr166/ConcurrentHashMap8$Spliterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3046
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8$ValueIterator;

    invoke-direct {v0, p0}, Lorg/jsr166/ConcurrentHashMap8$ValueIterator;-><init>(Lorg/jsr166/ConcurrentHashMap8;)V

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 183
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentHashMap8;->values()Lorg/jsr166/ConcurrentHashMap8$ValuesView;

    move-result-object v0

    return-object v0
.end method

.method public values()Lorg/jsr166/ConcurrentHashMap8$ValuesView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsr166/ConcurrentHashMap8$ValuesView",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2986
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8;, "Lorg/jsr166/ConcurrentHashMap8<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentHashMap8;->values:Lorg/jsr166/ConcurrentHashMap8$ValuesView;

    .line 2987
    .local v0, "vs":Lorg/jsr166/ConcurrentHashMap8$ValuesView;, "Lorg/jsr166/ConcurrentHashMap8$ValuesView<TK;TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "vs":Lorg/jsr166/ConcurrentHashMap8$ValuesView;, "Lorg/jsr166/ConcurrentHashMap8$ValuesView<TK;TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "vs":Lorg/jsr166/ConcurrentHashMap8$ValuesView;, "Lorg/jsr166/ConcurrentHashMap8$ValuesView<TK;TV;>;"
    :cond_0
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8$ValuesView;

    .end local v0    # "vs":Lorg/jsr166/ConcurrentHashMap8$ValuesView;, "Lorg/jsr166/ConcurrentHashMap8$ValuesView<TK;TV;>;"
    invoke-direct {v0, p0}, Lorg/jsr166/ConcurrentHashMap8$ValuesView;-><init>(Lorg/jsr166/ConcurrentHashMap8;)V

    iput-object v0, p0, Lorg/jsr166/ConcurrentHashMap8;->values:Lorg/jsr166/ConcurrentHashMap8$ValuesView;

    goto :goto_0
.end method
