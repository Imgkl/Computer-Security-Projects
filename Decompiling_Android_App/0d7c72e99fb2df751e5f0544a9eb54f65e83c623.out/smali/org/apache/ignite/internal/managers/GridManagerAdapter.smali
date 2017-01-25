.class public abstract Lorg/apache/ignite/internal/managers/GridManagerAdapter;
.super Ljava/lang/Object;
.source "GridManagerAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/GridManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/ignite/spi/IgniteSpi;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/managers/GridManager;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final ctx:Lorg/apache/ignite/internal/GridKernalContext;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final enabled:Z

.field protected final log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final spis:[Lorg/apache/ignite/spi/IgniteSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected varargs constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;[Lorg/apache/ignite/spi/IgniteSpi;)V
    .locals 4
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    .local p2, "spis":[Lorg/apache/ignite/spi/IgniteSpi;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-boolean v2, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 73
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    array-length v2, p2

    if-gtz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 74
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 76
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 77
    iput-object p2, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->spis:[Lorg/apache/ignite/spi/IgniteSpi;

    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, "enabled":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_4

    .line 82
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->spis:[Lorg/apache/ignite/spi/IgniteSpi;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/apache/ignite/spi/IgniteSpiNoop;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->hasAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 83
    const/4 v0, 0x1

    .line 81
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_4
    iput-boolean v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->enabled:Z

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    .line 89
    return-void
.end method

.method private cleanup(Lorg/apache/ignite/spi/IgniteSpi;)V
    .locals 4
    .param p1, "spi"    # Lorg/apache/ignite/spi/IgniteSpi;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    instance-of v3, p1, Lorg/apache/ignite/spi/IgniteSpiAdapter;

    if-eqz v3, :cond_0

    .line 151
    check-cast p1, Lorg/apache/ignite/spi/IgniteSpiAdapter;

    .end local p1    # "spi":Lorg/apache/ignite/spi/IgniteSpi;
    invoke-virtual {p1}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->injectables()Ljava/util/Collection;

    move-result-object v1

    .line 153
    .local v1, "injectables":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 155
    .local v2, "o":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->cleanupGeneric(Ljava/lang/Object;)V

    goto :goto_0

    .line 157
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "injectables":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private inject(Lorg/apache/ignite/spi/IgniteSpi;)V
    .locals 4
    .param p1, "spi"    # Lorg/apache/ignite/spi/IgniteSpi;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    instance-of v3, p1, Lorg/apache/ignite/spi/IgniteSpiAdapter;

    if-eqz v3, :cond_0

    .line 137
    check-cast p1, Lorg/apache/ignite/spi/IgniteSpiAdapter;

    .end local p1    # "spi":Lorg/apache/ignite/spi/IgniteSpi;
    invoke-virtual {p1}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->injectables()Ljava/util/Collection;

    move-result-object v1

    .line 139
    .local v1, "injectables":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 141
    .local v2, "o":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->injectGeneric(Ljava/lang/Object;)V

    goto :goto_0

    .line 143
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "injectables":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    return-void
.end method


# virtual methods
.method protected final assertParameter(ZLjava/lang/String;)V
    .locals 3
    .param p1, "cond"    # Z
    .param p2, "condDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 601
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    if-nez p1, :cond_0

    .line 602
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grid configuration parameter failed condition check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_0
    return-void
.end method

.method public collectDiscoveryData(Ljava/util/UUID;)Ljava/lang/Object;
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 561
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public discoveryDataType()Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 556
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public enabled()Z
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->enabled:Z

    return v0
.end method

.method protected final getSpi()Lorg/apache/ignite/spi/IgniteSpi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->spis:[Lorg/apache/ignite/spi/IgniteSpi;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected final getSpi(Ljava/lang/String;)Lorg/apache/ignite/spi/IgniteSpi;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->spis:[Lorg/apache/ignite/spi/IgniteSpi;

    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 113
    :cond_0
    return-object v3

    .line 111
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->spis:[Lorg/apache/ignite/spi/IgniteSpi;

    .local v0, "arr$":[Lorg/apache/ignite/spi/IgniteSpi;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 112
    .local v3, "t":Lorg/apache/ignite/spi/IgniteSpi;, "TT;"
    invoke-interface {v3}, Lorg/apache/ignite/spi/IgniteSpi;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v3    # "t":Lorg/apache/ignite/spi/IgniteSpi;, "TT;"
    :cond_2
    new-instance v4, Lorg/apache/ignite/IgniteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find SPI for name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected final getSpis()[Lorg/apache/ignite/spi/IgniteSpi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->spis:[Lorg/apache/ignite/spi/IgniteSpi;

    return-object v0
.end method

.method public onAfterSpiStart()V
    .locals 0

    .prologue
    .line 167
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    return-void
.end method

.method public onBeforeSpiStart()V
    .locals 0

    .prologue
    .line 162
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    return-void
.end method

.method public onDiscoveryDataReceived(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 0
    .param p1, "joiningNodeId"    # Ljava/util/UUID;
    .param p2, "rmtNodeId"    # Ljava/util/UUID;
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 567
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    return-void
.end method

.method public final onKernalStart()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->spis:[Lorg/apache/ignite/spi/IgniteSpi;

    .local v0, "arr$":[Lorg/apache/ignite/spi/IgniteSpi;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 283
    .local v4, "spi":Lorg/apache/ignite/spi/IgniteSpi;
    :try_start_0
    new-instance v5, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;

    invoke-direct {v5, p0, v4}, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;-><init>(Lorg/apache/ignite/internal/managers/GridManagerAdapter;Lorg/apache/ignite/spi/IgniteSpi;)V

    invoke-interface {v4, v5}, Lorg/apache/ignite/spi/IgniteSpi;->onContextInitialized(Lorg/apache/ignite/spi/IgniteSpiContext;)V
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 538
    :catch_0
    move-exception v1

    .line 539
    .local v1, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    const-string v6, "Failed to initialize SPI context."

    invoke-direct {v5, v6, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 543
    .end local v1    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    .end local v4    # "spi":Lorg/apache/ignite/spi/IgniteSpi;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->onKernalStart0()V

    .line 544
    return-void
.end method

.method protected onKernalStart0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 574
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    return-void
.end method

.method public final onKernalStop(Z)V
    .locals 4
    .param p1, "cancel"    # Z

    .prologue
    .line 548
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->onKernalStop0(Z)V

    .line 550
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->spis:[Lorg/apache/ignite/spi/IgniteSpi;

    .local v0, "arr$":[Lorg/apache/ignite/spi/IgniteSpi;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 551
    .local v3, "spi":Lorg/apache/ignite/spi/IgniteSpi;
    invoke-interface {v3}, Lorg/apache/ignite/spi/IgniteSpi;->onContextDestroyed()V

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    .end local v3    # "spi":Lorg/apache/ignite/spi/IgniteSpi;
    :cond_0
    return-void
.end method

.method protected onKernalStop0(Z)V
    .locals 0
    .param p1, "cancel"    # Z

    .prologue
    .line 581
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    return-void
.end method

.method public printMemoryStats()V
    .locals 0

    .prologue
    .line 608
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    return-void
.end method

.method protected final startInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Manager started ok: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final startSpi()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    iget-object v9, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->spis:[Lorg/apache/ignite/spi/IgniteSpi;

    array-length v9, v9

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashSet(I)Ljava/util/HashSet;

    move-result-object v6

    .line 177
    .local v6, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->spis:[Lorg/apache/ignite/spi/IgniteSpi;

    .local v0, "arr$":[Lorg/apache/ignite/spi/IgniteSpi;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_6

    aget-object v8, v0, v4

    .line 179
    .local v8, "spi":Lorg/apache/ignite/spi/IgniteSpi;, "TT;"
    iget-object v9, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v9}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->inject(Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 182
    invoke-direct {p0, v8}, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->inject(Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 185
    :try_start_0
    invoke-interface {v8}, Lorg/apache/ignite/spi/IgniteSpi;->getNodeAttributes()Ljava/util/Map;

    move-result-object v7

    .line 187
    .local v7, "retval":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v7, :cond_1

    .line 188
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 189
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v10, v9}, Lorg/apache/ignite/internal/GridKernalContext;->hasNodeAttribute(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 190
    new-instance v10, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SPI attribute collision for attribute [spi="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", attr="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v11, 0x5d

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ". Attribute set by one SPI implementation has the same name (name collision) as "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "attribute set by other SPI implementation. Such overriding is not allowed. "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "Please check your Ignite configuration and/or SPI implementation to avoid "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "attribute name collisions."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "retval":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v9, Lorg/apache/ignite/IgniteCheckedException;

    const-string v10, "Failed to get SPI attributes."

    invoke-direct {v9, v10, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 197
    .end local v1    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    .restart local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v7    # "retval":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :try_start_1
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v9, v11}, Lorg/apache/ignite/internal/GridKernalContext;->addNodeAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 206
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v9, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 207
    iget-object v9, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting SPI: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 209
    :cond_2
    invoke-interface {v8}, Lorg/apache/ignite/spi/IgniteSpi;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 210
    new-instance v9, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Duplicate SPI name (need to explicitly configure \'setName()\' property): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v8}, Lorg/apache/ignite/spi/IgniteSpi;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 213
    :cond_3
    invoke-interface {v8}, Lorg/apache/ignite/spi/IgniteSpi;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v9, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 216
    iget-object v9, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting SPI implementation: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 218
    :cond_4
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->onBeforeSpiStart()V

    .line 221
    :try_start_2
    iget-object v9, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v9}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/spi/IgniteSpi;->spiStart(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_2 .. :try_end_2} :catch_1

    .line 227
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->onAfterSpiStart()V

    .line 229
    iget-object v9, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 230
    iget-object v9, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SPI module started OK: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 177
    :cond_5
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto/16 :goto_0

    .line 223
    .end local v4    # "i$":I
    :catch_1
    move-exception v1

    .line 224
    .restart local v1    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v9, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to start SPI: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 232
    .end local v1    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    .end local v7    # "retval":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "spi":Lorg/apache/ignite/spi/IgniteSpi;, "TT;"
    .restart local v4    # "i$":I
    :cond_6
    return-void
.end method

.method protected final stopInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Manager stopped ok: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final stopSpi()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->spis:[Lorg/apache/ignite/spi/IgniteSpi;

    .local v0, "arr$":[Lorg/apache/ignite/spi/IgniteSpi;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 241
    .local v4, "spi":Lorg/apache/ignite/spi/IgniteSpi;, "TT;"
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 242
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping SPI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 245
    :cond_0
    :try_start_0
    invoke-interface {v4}, Lorg/apache/ignite/spi/IgniteSpi;->spiStop()V

    .line 247
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 248
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SPI module stopped OK: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_1
    :try_start_1
    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->cleanup(Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 257
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->cleanup(Lorg/apache/ignite/spi/IgniteSpi;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to stop SPI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 259
    .end local v1    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    :catch_1
    move-exception v1

    .line 260
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to remove injected resources from SPI (ignoring): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 263
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v4    # "spi":Lorg/apache/ignite/spi/IgniteSpi;, "TT;"
    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 617
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    const-class v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    const-string v1, "name"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateNode(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 612
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method
