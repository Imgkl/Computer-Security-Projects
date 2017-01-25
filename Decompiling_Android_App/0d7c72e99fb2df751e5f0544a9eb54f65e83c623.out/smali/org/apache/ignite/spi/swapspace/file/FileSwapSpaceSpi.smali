.class public Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;
.super Lorg/apache/ignite/spi/IgniteSpiAdapter;
.source "FileSwapSpaceSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;
.implements Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpiMBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;,
        Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapFile;,
        Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$StripedFileChannel;,
        Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;,
        Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;,
        Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    }
.end annotation

.annotation runtime Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;
    value = true
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_BASE_DIR:Ljava/lang/String; = "swapspace"

.field public static final DFLT_BUF_SIZE:I = 0x10000

.field public static final DFLT_MAX_SPARSITY:F = 0.5f

.field public static final DFLT_QUE_SIZE:I = 0x100000

.field public static final DFLT_SPACE_NAME:Ljava/lang/String; = "gg-dflt-space"


# instance fields
.field private baseDir:Ljava/lang/String;

.field private dir:Ljava/io/File;

.field private volatile evictLsnr:Lorg/apache/ignite/spi/swapspace/SwapSpaceSpiListener;

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private maxSparsity:F

.field private maxWriteQueSize:I

.field private readStripesNum:I

.field private final spaces:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;",
            ">;"
        }
    .end annotation
.end field

.field private writeBufSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-class v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;-><init>()V

    .line 127
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->spaces:Ljava/util/concurrent/ConcurrentMap;

    .line 130
    const-string v0, "swapspace"

    iput-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->baseDir:Ljava/lang/String;

    .line 133
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->maxSparsity:F

    .line 142
    const/high16 v0, 0x10000

    iput v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->writeBufSize:I

    .line 145
    const/high16 v0, 0x100000

    iput v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->maxWriteQueSize:I

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->readStripesNum:I

    .line 1369
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;Lorg/apache/ignite/spi/swapspace/SwapKey;)[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;
    .param p1, "x1"    # Lorg/apache/ignite/spi/swapspace/SwapKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->keyBytes(Lorg/apache/ignite/spi/swapspace/SwapKey;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    .prologue
    .line 104
    iget v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->writeBufSize:I

    return v0
.end method

.method static synthetic access$1600(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    .prologue
    .line 104
    iget v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->maxWriteQueSize:I

    return v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->dir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    .prologue
    .line 104
    iget v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->readStripesNum:I

    return v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;)F
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    .prologue
    .line 104
    iget v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->maxSparsity:F

    return v0
.end method

.method private keyBytes(Lorg/apache/ignite/spi/swapspace/SwapKey;)[B
    .locals 5
    .param p1, "key"    # Lorg/apache/ignite/spi/swapspace/SwapKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 556
    sget-boolean v2, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 558
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/spi/swapspace/SwapKey;->keyBytes()[B

    move-result-object v1

    .line 560
    .local v1, "keyBytes":[B
    if-nez v1, :cond_1

    .line 562
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v2}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/spi/swapspace/SwapKey;->key()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 568
    invoke-virtual {p1, v1}, Lorg/apache/ignite/spi/swapspace/SwapKey;->keyBytes([B)V

    .line 571
    :cond_1
    return-object v1

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to marshal key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/spi/swapspace/SwapKey;->key()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private notifyListener(ILjava/lang/String;)V
    .locals 2
    .param p1, "evtType"    # I
    .param p2, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 581
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->evictLsnr:Lorg/apache/ignite/spi/swapspace/SwapSpaceSpiListener;

    .line 583
    .local v0, "lsnr":Lorg/apache/ignite/spi/swapspace/SwapSpaceSpiListener;
    if-eqz v0, :cond_0

    .line 584
    invoke-interface {v0, p1, p2, v1, v1}, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpiListener;->onSwapEvent(ILjava/lang/String;[B[B)V

    .line 585
    :cond_0
    return-void
.end method

.method private rawIterator(Ljava/util/Iterator;)Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "[B>;>;)",
            "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;"
        }
    .end annotation

    .prologue
    .line 531
    .local p1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/ignite/spi/swapspace/SwapKey;[B>;>;"
    new-instance v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$2;-><init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;Ljava/util/Iterator;)V

    return-object v0
.end method

.method private space(Ljava/lang/String;Z)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 596
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 598
    .local v0, "masked":Ljava/lang/String;
    :goto_0
    sget-boolean v3, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 596
    .end local v0    # "masked":Ljava/lang/String;
    :cond_0
    const-string v0, "gg-dflt-space"

    goto :goto_0

    .line 600
    .restart local v0    # "masked":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->spaces:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    .line 602
    .local v2, "space":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    .line 603
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->validateName(Ljava/lang/String;)V

    .line 605
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->spaces:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    .end local v2    # "space":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v4}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;-><init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$1;)V

    .restart local v2    # "space":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    invoke-interface {v3, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    .line 607
    .local v1, "old":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    if-eqz v1, :cond_2

    .line 608
    move-object v2, v1

    .line 611
    .end local v1    # "old":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    :cond_2
    if-eqz v2, :cond_3

    .line 612
    invoke-virtual {v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->initialize()V

    .line 614
    :cond_3
    return-object v2
.end method

.method private validateName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 624
    if-nez p1, :cond_1

    .line 633
    :cond_0
    return-void

    .line 627
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 628
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Space name cannot be empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_2
    const-string v0, "gg-dflt-space"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 630
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Space name is reserved for default space: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_3
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    :cond_4
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Space name contains invalid characters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .locals 2
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 297
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->space(Ljava/lang/String;Z)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    move-result-object v0

    .line 299
    .local v0, "space":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    if-nez v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->clear()V

    .line 304
    const/16 v1, 0x4a

    invoke-direct {p0, v1, p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->notifyListener(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public count(Ljava/lang/String;)J
    .locals 4
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 319
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->space(Ljava/lang/String;Z)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    move-result-object v0

    .line 321
    .local v0, "space":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    if-nez v0, :cond_0

    .line 322
    const-wide/16 v2, 0x0

    .line 324
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->count()J

    move-result-wide v2

    goto :goto_0
.end method

.method public count(Ljava/lang/String;Ljava/util/Set;)J
    .locals 4
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 329
    .local p2, "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->space(Ljava/lang/String;Z)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    move-result-object v0

    .line 331
    .local v0, "space":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    if-nez v0, :cond_0

    .line 332
    const-wide/16 v2, 0x0

    .line 334
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0, p2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->count(Ljava/util/Set;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getBaseDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->baseDir:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxWriteQueueSize()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->maxWriteQueSize:I

    return v0
.end method

.method public getMaximumSparsity()F
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->maxSparsity:F

    return v0
.end method

.method public getReadStripesNumber()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->readStripesNum:I

    return v0
.end method

.method public getWriteBufferSize()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->writeBufSize:I

    return v0
.end method

.method public keyIterator(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapContext;)Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;
    .locals 3
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "ctx"    # Lorg/apache/ignite/spi/swapspace/SwapContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/spi/swapspace/SwapContext;",
            ")",
            "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator",
            "<TK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 479
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->space(Ljava/lang/String;Z)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    move-result-object v1

    .line 481
    .local v1, "space":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    if-nez v1, :cond_0

    .line 482
    const/4 v2, 0x0

    .line 486
    :goto_0
    return-object v2

    .line 484
    :cond_0
    invoke-virtual {v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->entriesIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 486
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/ignite/spi/swapspace/SwapKey;[B>;>;"
    new-instance v2, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$1;

    invoke-direct {v2, p0, v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$1;-><init>(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public partitions(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 468
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->space(Ljava/lang/String;Z)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    move-result-object v0

    .line 470
    .local v0, "space":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    if-nez v0, :cond_0

    .line 471
    const/4 v1, 0x0

    .line 473
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->partitions()Ljava/util/Collection;

    move-result-object v1

    goto :goto_0
.end method

.method public rawIterator(Ljava/lang/String;)Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;
    .locals 2
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 504
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->space(Ljava/lang/String;Z)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    move-result-object v0

    .line 506
    .local v0, "space":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    if-nez v0, :cond_0

    .line 507
    const/4 v1, 0x0

    .line 509
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->entriesIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->rawIterator(Ljava/util/Iterator;)Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;

    move-result-object v1

    goto :goto_0
.end method

.method public rawIterator(Ljava/lang/String;I)Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;
    .locals 2
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "part"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 515
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->space(Ljava/lang/String;Z)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    move-result-object v0

    .line 517
    .local v0, "space":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    if-nez v0, :cond_0

    .line 518
    const/4 v1, 0x0

    .line 520
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->entriesIterator(I)Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->rawIterator(Ljava/util/Iterator;)Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;

    move-result-object v1

    goto :goto_0
.end method

.method public read(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/spi/swapspace/SwapContext;)[B
    .locals 3
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Lorg/apache/ignite/spi/swapspace/SwapKey;
    .param p3, "ctx"    # Lorg/apache/ignite/spi/swapspace/SwapContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 340
    sget-boolean v2, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 341
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 343
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->space(Ljava/lang/String;Z)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    move-result-object v0

    .line 345
    .local v0, "space":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    if-nez v0, :cond_2

    .line 346
    const/4 v1, 0x0

    .line 352
    :goto_0
    return-object v1

    .line 348
    :cond_2
    invoke-virtual {v0, p2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->read(Lorg/apache/ignite/spi/swapspace/SwapKey;)[B

    move-result-object v1

    .line 350
    .local v1, "val":[B
    const/16 v2, 0x47

    invoke-direct {p0, v2, p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->notifyListener(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public readAll(Ljava/lang/String;Ljava/lang/Iterable;Lorg/apache/ignite/spi/swapspace/SwapContext;)Ljava/util/Map;
    .locals 6
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "ctx"    # Lorg/apache/ignite/spi/swapspace/SwapContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            ">;",
            "Lorg/apache/ignite/spi/swapspace/SwapContext;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 358
    .local p2, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/spi/swapspace/SwapKey;>;"
    sget-boolean v5, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p2, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 359
    :cond_0
    sget-boolean v5, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez p3, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 361
    :cond_1
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->space(Ljava/lang/String;Z)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    move-result-object v3

    .line 363
    .local v3, "space":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    if-nez v3, :cond_3

    .line 364
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 379
    :cond_2
    return-object v2

    .line 366
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 368
    .local v2, "res":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/spi/swapspace/SwapKey;[B>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/swapspace/SwapKey;

    .line 369
    .local v1, "key":Lorg/apache/ignite/spi/swapspace/SwapKey;
    if-eqz v1, :cond_4

    .line 370
    invoke-virtual {v3, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->read(Lorg/apache/ignite/spi/swapspace/SwapKey;)[B

    move-result-object v4

    .line 372
    .local v4, "val":[B
    if-eqz v4, :cond_5

    .line 373
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_5
    const/16 v5, 0x47

    invoke-direct {p0, v5, p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->notifyListener(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/lang/IgniteInClosure;Lorg/apache/ignite/spi/swapspace/SwapContext;)V
    .locals 4
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Lorg/apache/ignite/spi/swapspace/SwapKey;
    .param p3    # Lorg/apache/ignite/lang/IgniteInClosure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ctx"    # Lorg/apache/ignite/spi/swapspace/SwapContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<[B>;",
            "Lorg/apache/ignite/spi/swapspace/SwapContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .local p3, "c":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<[B>;"
    const/4 v2, 0x0

    .line 385
    sget-boolean v3, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 386
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p4, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 388
    :cond_1
    invoke-direct {p0, p1, v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->space(Ljava/lang/String;Z)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    move-result-object v0

    .line 390
    .local v0, "space":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    if-nez v0, :cond_2

    .line 399
    :goto_0
    return-void

    .line 393
    :cond_2
    if-eqz p3, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v0, p2, v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->remove(Lorg/apache/ignite/spi/swapspace/SwapKey;Z)[B

    move-result-object v1

    .line 395
    .local v1, "val":[B
    if-eqz p3, :cond_4

    .line 396
    invoke-interface {p3, v1}, Lorg/apache/ignite/lang/IgniteInClosure;->apply(Ljava/lang/Object;)V

    .line 398
    :cond_4
    const/16 v2, 0x49

    invoke-direct {p0, v2, p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->notifyListener(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public removeAll(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;Lorg/apache/ignite/spi/swapspace/SwapContext;)V
    .locals 6
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/apache/ignite/lang/IgniteBiInClosure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ctx"    # Lorg/apache/ignite/spi/swapspace/SwapContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            ">;",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "[B>;",
            "Lorg/apache/ignite/spi/swapspace/SwapContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/swapspace/SwapKey;>;"
    .local p3, "c":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Lorg/apache/ignite/spi/swapspace/SwapKey;[B>;"
    const/4 v5, 0x0

    .line 404
    sget-boolean v4, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p2, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 405
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez p4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 407
    :cond_1
    invoke-direct {p0, p1, v5}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->space(Ljava/lang/String;Z)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    move-result-object v2

    .line 409
    .local v2, "space":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    if-nez v2, :cond_3

    .line 422
    :cond_2
    return-void

    .line 412
    :cond_3
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/swapspace/SwapKey;

    .line 413
    .local v1, "key":Lorg/apache/ignite/spi/swapspace/SwapKey;
    if-eqz v1, :cond_4

    .line 414
    if-eqz p3, :cond_6

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v2, v1, v4}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->remove(Lorg/apache/ignite/spi/swapspace/SwapKey;Z)[B

    move-result-object v3

    .line 416
    .local v3, "val":[B
    if-eqz p3, :cond_5

    .line 417
    invoke-interface {p3, v1, v3}, Lorg/apache/ignite/lang/IgniteBiInClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    :cond_5
    const/16 v4, 0x49

    invoke-direct {p0, v4, p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->notifyListener(ILjava/lang/String;)V

    goto :goto_0

    .end local v3    # "val":[B
    :cond_6
    move v4, v5

    .line 414
    goto :goto_1
.end method

.method public setBaseDirectory(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseDir"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 166
    iput-object p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->baseDir:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setListener(Lorg/apache/ignite/spi/swapspace/SwapSpaceSpiListener;)V
    .locals 0
    .param p1, "evictLsnr"    # Lorg/apache/ignite/spi/swapspace/SwapSpaceSpiListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 462
    iput-object p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->evictLsnr:Lorg/apache/ignite/spi/swapspace/SwapSpaceSpiListener;

    .line 463
    return-void
.end method

.method public setMaxWriteQueueSize(I)V
    .locals 0
    .param p1, "maxWriteQueSize"    # I

    .prologue
    .line 212
    iput p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->maxWriteQueSize:I

    .line 213
    return-void
.end method

.method public setMaximumSparsity(F)V
    .locals 0
    .param p1, "maxSparsity"    # F

    .prologue
    .line 181
    iput p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->maxSparsity:F

    .line 182
    return-void
.end method

.method public setReadStripesNumber(I)V
    .locals 2
    .param p1, "readStripesNum"    # I

    .prologue
    .line 227
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "readStripesNum must be positive and power of two"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 230
    iput p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->readStripesNum:I

    .line 231
    return-void

    .line 227
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWriteBufferSize(I)V
    .locals 0
    .param p1, "writeBufSize"    # I

    .prologue
    .line 196
    iput p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->writeBufSize:I

    .line 197
    return-void
.end method

.method public size(Ljava/lang/String;)J
    .locals 4
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 309
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->space(Ljava/lang/String;Z)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    move-result-object v0

    .line 311
    .local v0, "space":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    if-nez v0, :cond_0

    .line 312
    const-wide/16 v2, 0x0

    .line 314
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->size()J

    move-result-wide v2

    goto :goto_0
.end method

.method public spiStart(Ljava/lang/String;)V
    .locals 9
    .param p1, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 235
    iget-object v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->baseDir:Ljava/lang/String;

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_0
    const-string v7, "!F.isEmpty(baseDir)"

    invoke-virtual {p0, v4, v7}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->assertParameter(ZLjava/lang/String;)V

    .line 236
    iget v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->maxSparsity:F

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_3

    iget v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->maxSparsity:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v7

    if-gez v4, :cond_3

    move v4, v5

    :goto_1
    const-string v7, "maxSparsity >= 0 && maxSparsity < 1"

    invoke-virtual {p0, v4, v7}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->assertParameter(ZLjava/lang/String;)V

    .line 237
    iget v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->readStripesNum:I

    if-eq v4, v8, :cond_0

    iget v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->readStripesNum:I

    iget v7, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->readStripesNum:I

    add-int/lit8 v7, v7, -0x1

    and-int/2addr v4, v7

    if-nez v4, :cond_1

    :cond_0
    move v6, v5

    :cond_1
    const-string v4, "readStripesNum must be positive and power of two."

    invoke-virtual {p0, v6, v4}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->assertParameter(ZLjava/lang/String;)V

    .line 240
    iget v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->readStripesNum:I

    if-ne v4, v8, :cond_8

    .line 242
    const/4 v3, 0x1

    .line 243
    .local v3, "readStripesNum0":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 245
    .local v0, "cpuCnt":I
    :goto_2
    if-gt v3, v0, :cond_4

    .line 246
    shl-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "cpuCnt":I
    .end local v3    # "readStripesNum0":I
    :cond_2
    move v4, v6

    .line 235
    goto :goto_0

    :cond_3
    move v4, v6

    .line 236
    goto :goto_1

    .line 248
    .restart local v0    # "cpuCnt":I
    .restart local v3    # "readStripesNum0":I
    :cond_4
    if-le v3, v0, :cond_5

    .line 249
    shr-int/lit8 v3, v3, 0x1

    .line 251
    :cond_5
    sget-boolean v4, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->$assertionsDisabled:Z

    if-nez v4, :cond_7

    if-lez v3, :cond_6

    add-int/lit8 v4, v3, -0x1

    and-int/2addr v4, v3

    if-eqz v4, :cond_7

    :cond_6
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 253
    :cond_7
    iput v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->readStripesNum:I

    .line 256
    .end local v0    # "cpuCnt":I
    .end local v3    # "readStripesNum0":I
    :cond_8
    invoke-virtual {p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->startStopwatch()V

    .line 258
    const-class v4, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpiMBean;

    invoke-virtual {p0, p1, p0, v4}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->registerMBean(Ljava/lang/String;Lorg/apache/ignite/spi/IgniteSpiManagementMBean;Ljava/lang/Class;)V

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->baseDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v5}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "path":Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v2, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveWorkDirectory(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->dir:Ljava/io/File;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    iget-object v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 270
    iget-object v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->startInfo()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 271
    :cond_9
    return-void

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v4, Lorg/apache/ignite/spi/IgniteSpiException;

    invoke-direct {v4, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public spiStop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->unregisterMBean()V

    .line 277
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->spaces:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    .line 278
    .local v2, "space":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    invoke-virtual {v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->initialize()V

    .line 281
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->stop()V
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v4, "Interrupted."

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 288
    .end local v0    # "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    .end local v2    # "space":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->dir:Ljava/io/File;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->dir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->dir:Ljava/io/File;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->delete(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 289
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete swap directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->dir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 291
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 292
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->stopInfo()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 293
    :cond_2
    return-void
.end method

.method public store(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;[BLorg/apache/ignite/spi/swapspace/SwapContext;)V
    .locals 2
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Lorg/apache/ignite/spi/swapspace/SwapKey;
    .param p3, "val"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ctx"    # Lorg/apache/ignite/spi/swapspace/SwapContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 427
    sget-boolean v1, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 428
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p4, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 430
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->space(Ljava/lang/String;Z)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    move-result-object v0

    .line 432
    .local v0, "space":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    sget-boolean v1, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 434
    :cond_2
    invoke-virtual {v0, p2, p3}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->store(Lorg/apache/ignite/spi/swapspace/SwapKey;[B)V

    .line 436
    const/16 v1, 0x48

    invoke-direct {p0, v1, p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->notifyListener(ILjava/lang/String;)V

    .line 437
    return-void
.end method

.method public storeAll(Ljava/lang/String;Ljava/util/Map;Lorg/apache/ignite/spi/swapspace/SwapContext;)V
    .locals 5
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "ctx"    # Lorg/apache/ignite/spi/swapspace/SwapContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "[B>;",
            "Lorg/apache/ignite/spi/swapspace/SwapContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 442
    .local p2, "pairs":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/spi/swapspace/SwapKey;[B>;"
    sget-boolean v4, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p2, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 443
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez p3, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 445
    :cond_1
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->space(Ljava/lang/String;Z)Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;

    move-result-object v3

    .line 447
    .local v3, "space":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;
    sget-boolean v4, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 449
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 450
    .local v2, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/spi/swapspace/SwapKey;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/swapspace/SwapKey;

    .line 452
    .local v1, "key":Lorg/apache/ignite/spi/swapspace/SwapKey;
    if-eqz v1, :cond_3

    .line 453
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v3, v1, v4}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$Space;->store(Lorg/apache/ignite/spi/swapspace/SwapKey;[B)V

    .line 455
    const/16 v4, 0x48

    invoke-direct {p0, v4, p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;->notifyListener(ILjava/lang/String;)V

    goto :goto_0

    .line 458
    .end local v1    # "key":Lorg/apache/ignite/spi/swapspace/SwapKey;
    .end local v2    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/spi/swapspace/SwapKey;[B>;"
    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    const-class v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
