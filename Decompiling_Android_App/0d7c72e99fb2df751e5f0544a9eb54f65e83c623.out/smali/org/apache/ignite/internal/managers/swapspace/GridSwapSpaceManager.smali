.class public Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;
.super Lorg/apache/ignite/internal/managers/GridManagerAdapter;
.source "GridSwapSpaceManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/managers/GridManagerAdapter",
        "<",
        "Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/SkipDaemon;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private marsh:Lorg/apache/ignite/marshaller/Marshaller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 3
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSwapSpaceSpi()Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/managers/GridManagerAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;[Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method private context(Ljava/lang/ClassLoader;)Lorg/apache/ignite/spi/swapspace/SwapContext;
    .locals 1
    .param p1, "clsLdr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 444
    new-instance v0, Lorg/apache/ignite/spi/swapspace/SwapContext;

    invoke-direct {v0}, Lorg/apache/ignite/spi/swapspace/SwapContext;-><init>()V

    .line 446
    .local v0, "ctx":Lorg/apache/ignite/spi/swapspace/SwapContext;
    if-eqz p1, :cond_0

    .end local p1    # "clsLdr":Ljava/lang/ClassLoader;
    :goto_0
    invoke-virtual {v0, p1}, Lorg/apache/ignite/spi/swapspace/SwapContext;->classLoader(Ljava/lang/ClassLoader;)V

    .line 448
    return-object v0

    .line 446
    .restart local p1    # "clsLdr":Ljava/lang/ClassLoader;
    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_0
.end method

.method private marshal(Ljava/lang/Object;)[B
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method private unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .param p1, "swapBytes"    # [B
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 422
    if-nez p1, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 425
    .end local p2    # "ldr":Ljava/lang/ClassLoader;
    :goto_0
    return-object v0

    .restart local p2    # "ldr":Ljava/lang/ClassLoader;
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    if-eqz p2, :cond_1

    .end local p2    # "ldr":Ljava/lang/ClassLoader;
    :goto_1
    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .restart local p2    # "ldr":Ljava/lang/ClassLoader;
    :cond_1
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    goto :goto_1
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .locals 4
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 347
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    invoke-interface {v1, p1}, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;->clear(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clear swap space [space="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public keysIterator(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 5
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<TK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 405
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->context(Ljava/lang/ClassLoader;)Lorg/apache/ignite/spi/swapspace/SwapContext;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;->keyIterator(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapContext;)Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;

    move-result-object v1

    .line 407
    .local v1, "it":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<TK;>;"
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper;

    invoke-direct {v2, v1}, Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper;-><init>(Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;)V
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    .end local v1    # "it":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<TK;>;"
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get iterator over swap space [space="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected onKernalStop0(Z)V
    .locals 2
    .param p1, "cancel"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;->setListener(Lorg/apache/ignite/spi/swapspace/SwapSpaceSpiListener;)V

    goto :goto_0
.end method

.method public rawIterator(Ljava/lang/String;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 5
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 364
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    invoke-interface {v2, p1}, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;->rawIterator(Ljava/lang/String;)Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;

    move-result-object v1

    .line 366
    .local v1, "it":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<Ljava/util/Map$Entry<[B[B>;>;"
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper;

    invoke-direct {v2, v1}, Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper;-><init>(Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;)V
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    .end local v1    # "it":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<Ljava/util/Map$Entry<[B[B>;>;"
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get iterator over swap space [space="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public rawIterator(Ljava/lang/String;I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 5
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
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 384
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    invoke-interface {v2, p1, p2}, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;->rawIterator(Ljava/lang/String;I)Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;

    move-result-object v1

    .line 386
    .local v1, "it":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<Ljava/util/Map$Entry<[B[B>;>;"
    if-nez v1, :cond_0

    new-instance v2, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;-><init>()V

    :goto_0
    check-cast v2, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    return-object v2

    :cond_0
    new-instance v2, Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper;

    invoke-direct {v2, v1}, Lorg/apache/ignite/internal/util/GridSpiCloseableIteratorWrapper;-><init>(Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;)V
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    .end local v1    # "it":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<Ljava/util/Map$Entry<[B[B>;>;"
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get iterator over swap space [space="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public read(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;Ljava/lang/ClassLoader;)[B
    .locals 4
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Lorg/apache/ignite/spi/swapspace/SwapKey;
    .param p3, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 148
    sget-boolean v1, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 151
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->context(Ljava/lang/ClassLoader;)Lorg/apache/ignite/spi/swapspace/SwapContext;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;->read(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/spi/swapspace/SwapContext;)[B
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read from swap space [space="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readValue(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Lorg/apache/ignite/spi/swapspace/SwapKey;
    .param p3, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 170
    sget-boolean v0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 172
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->read(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;Ljava/lang/ClassLoader;)[B

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteInClosure;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/Object;
    .param p3    # Lorg/apache/ignite/lang/IgniteInClosure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<[B>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 287
    .local p3, "c":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<[B>;"
    sget-boolean v0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 289
    :cond_0
    new-instance v0, Lorg/apache/ignite/spi/swapspace/SwapKey;

    invoke-direct {v0, p2}, Lorg/apache/ignite/spi/swapspace/SwapKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->remove(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/lang/IgniteInClosure;Ljava/lang/ClassLoader;)V

    .line 290
    return-void
.end method

.method public remove(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/lang/IgniteInClosure;Ljava/lang/ClassLoader;)V
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
    .param p4, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<[B>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 240
    .local p3, "c":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<[B>;"
    sget-boolean v1, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 243
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    invoke-direct {p0, p4}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->context(Ljava/lang/ClassLoader;)Lorg/apache/ignite/spi/swapspace/SwapContext;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;->remove(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/lang/IgniteInClosure;Lorg/apache/ignite/spi/swapspace/SwapContext;)V
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove from swap space [space="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeAll(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;Ljava/lang/ClassLoader;)V
    .locals 4
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 263
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/swapspace/SwapKey;>;"
    .local p3, "c":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Lorg/apache/ignite/spi/swapspace/SwapKey;[B>;"
    sget-boolean v1, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 266
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    invoke-direct {p0, p4}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->context(Ljava/lang/ClassLoader;)Lorg/apache/ignite/spi/swapspace/SwapContext;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;->removeAll(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;Lorg/apache/ignite/spi/swapspace/SwapContext;)V
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove from swap space [space="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "keysCnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    new-instance v1, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager$1;-><init>(Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;->setListener(Lorg/apache/ignite/spi/swapspace/SwapSpaceSpiListener;)V

    .line 110
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->startSpi()V

    .line 112
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    .line 114
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method public stop(Z)V
    .locals 2
    .param p1, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->stopSpi()V

    .line 133
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public swapKeys(Ljava/lang/String;)J
    .locals 4
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 317
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    invoke-interface {v1, p1}, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;->count(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get swap keys count for space: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public swapKeys(Ljava/lang/String;Ljava/util/Set;)J
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
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 334
    .local p2, "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;->count(Ljava/lang/String;Ljava/util/Set;)J
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get swap keys count for space: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public swapSize(Ljava/lang/String;)J
    .locals 4
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 301
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    invoke-interface {v1, p1}, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;->size(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get swap size for space: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "val"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 222
    sget-boolean v0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 224
    :cond_0
    new-instance v0, Lorg/apache/ignite/spi/swapspace/SwapKey;

    invoke-direct {v0, p2}, Lorg/apache/ignite/spi/swapspace/SwapKey;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->marshal(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p4}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->write(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;[BLjava/lang/ClassLoader;)V

    .line 225
    return-void
.end method

.method public write(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;[BLjava/lang/ClassLoader;)V
    .locals 4
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Lorg/apache/ignite/spi/swapspace/SwapKey;
    .param p3, "val"    # [B
    .param p4, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 186
    sget-boolean v1, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 187
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 190
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    invoke-direct {p0, p4}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->context(Ljava/lang/ClassLoader;)Lorg/apache/ignite/spi/swapspace/SwapContext;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;->store(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;[BLorg/apache/ignite/spi/swapspace/SwapContext;)V
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write to swap space [space="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", valLen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeAll(Ljava/lang/String;Ljava/util/Map;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "spaceName"    # Ljava/lang/String;
    .param p3, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "[B>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 208
    .local p2, "batch":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/spi/swapspace/SwapKey;[B>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->context(Ljava/lang/ClassLoader;)Lorg/apache/ignite/spi/swapspace/SwapContext;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;->storeAll(Ljava/lang/String;Ljava/util/Map;Lorg/apache/ignite/spi/swapspace/SwapContext;)V

    .line 209
    return-void
.end method
