.class public Lorg/apache/ignite/internal/IgniteKernal;
.super Ljava/lang/Object;
.source "IgniteKernal.java"

# interfaces
.implements Lorg/apache/ignite/internal/IgniteEx;
.implements Lorg/apache/ignite/mxbean/IgniteMXBean;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/IgniteKernal$5;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final COMPATIBLE_VERS:Ljava/lang/String;

.field private static final NL:Ljava/lang/String;

.field private static final PERIODIC_STARVATION_CHECK_FREQ:J = 0x7530L

.field private static final PERIODIC_VER_CHECK_CONN_TIMEOUT:J = 0x2710L

.field private static final PERIODIC_VER_CHECK_DELAY:J = 0x36ee80L

.field static final SITE:Ljava/lang/String; = "ignite.incubator.apache.org"

.field private static final serialVersionUID:J


# instance fields
.field private cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

.field private final compatibleVers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private errOnStop:Z
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private gridName:Ljava/lang/String;

.field private final gw:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/internal/GridKernalGateway;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private kernalMBean:Ljavax/management/ObjectName;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private locNodeMBean:Ljavax/management/ObjectName;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private log:Lorg/apache/ignite/internal/GridLoggerProxy;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private metricsLogTimer:Ljava/util/Timer;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private mgmtExecSvcMBean:Ljavax/management/ObjectName;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private p2PExecSvcMBean:Ljavax/management/ObjectName;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private pubExecSvcMBean:Ljavax/management/ObjectName;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private restExecSvcMBean:Ljavax/management/ObjectName;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private rsrcCtx:Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;

.field private scheduler:Lorg/apache/ignite/IgniteScheduler;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private startTime:J

.field private starveTimer:Ljava/util/Timer;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final stopGuard:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private sysExecSvcMBean:Ljavax/management/ObjectName;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private updateNtfTimer:Ljava/util/Timer;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private verChecker:Lorg/apache/ignite/internal/GridUpdateNotifier;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-class v0, Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    .line 102
    const-string v0, "ignite.compatible.vers"

    invoke-static {v0}, Lorg/apache/ignite/internal/IgniteProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/IgniteKernal;->COMPATIBLE_VERS:Ljava/lang/String;

    .line 108
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/IgniteKernal;-><init>(Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;)V

    .line 209
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;)V
    .locals 4
    .param p1, "rsrcCtx"    # Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->startTime:J

    .line 189
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->gw:Ljava/util/concurrent/atomic/AtomicReference;

    .line 197
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->stopGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 215
    iput-object p1, p0, Lorg/apache/ignite/internal/IgniteKernal;->rsrcCtx:Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;

    .line 217
    sget-object v2, Lorg/apache/ignite/internal/IgniteKernal;->COMPATIBLE_VERS:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "compatibleVers":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 220
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->compatibleVers:Ljava/util/Collection;

    .line 223
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/IgniteKernal;)Lorg/apache/ignite/internal/GridLoggerProxy;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/IgniteKernal;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    return-object v0
.end method

.method private ackAsciiLogo()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1491
    sget-boolean v2, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1493
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridLoggerProxy;->fileName()Ljava/lang/String;

    move-result-object v0

    .line 1495
    .local v0, "fileName":Ljava/lang/String;
    const-string v2, "IGNITE_NO_ASCII"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ver. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/IgniteVersionUtils;->ACK_VER_STR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1500
    .local v1, "ver":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridLoggerProxy;->isQuiet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1501
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "   __________  ________________ "

    aput-object v3, v2, v5

    const-string v3, "  /  _/ ___/ |/ /  _/_  __/ __/ "

    aput-object v3, v2, v6

    const-string v3, " _/ // (7 7    // /  / / / _/   "

    aput-object v3, v2, v7

    const/4 v3, 0x3

    const-string v4, "/___/\\___/_/|_/___/ /_/ /___/  "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v1, v2, v3

    const/4 v3, 0x6

    const-string v4, "2015 Copyright(C) Apache Software Foundation"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Quiet mode."

    aput-object v4, v2, v3

    invoke-static {v5, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quiet(Z[Ljava/lang/Object;)V

    .line 1512
    if-eqz v0, :cond_1

    .line 1513
    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ^-- Logging to file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v5, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quiet(Z[Ljava/lang/Object;)V

    .line 1515
    :cond_1
    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "  ^-- To see **FULL** console log here add -DIGNITE_QUIET=false or \"-v\" to ignite.{sh|bat}"

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    invoke-static {v5, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quiet(Z[Ljava/lang/Object;)V

    .line 1520
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridLoggerProxy;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1521
    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">>>    __________  ________________  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">>>   /  _/ ___/ |/ /  _/_  __/ __/  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">>>  _/ // (7 7    // /  / / / _/    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">>> /___/\\___/_/|_/___/ /_/ /___/   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "2015 Copyright(C) Apache Software Foundation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/GridLoggerProxy;->info(Ljava/lang/String;)V

    .line 1532
    .end local v1    # "ver":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private ackCacheConfiguration()V
    .locals 12

    .prologue
    .line 2028
    iget-object v8, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCacheConfiguration()[Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    .line 2030
    .local v2, "cacheCfgs":[Lorg/apache/ignite/configuration/CacheConfiguration;
    if-eqz v2, :cond_0

    array-length v8, v2

    if-nez v8, :cond_1

    .line 2031
    :cond_0
    iget-object v8, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    const-string v9, "Cache is not configured - in-memory data grid is off."

    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 2048
    :goto_0
    return-void

    .line 2033
    :cond_1
    new-instance v7, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v7}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    .line 2035
    .local v7, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    move-object v0, v2

    .local v0, "arr$":[Lorg/apache/ignite/configuration/CacheConfiguration;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 2036
    .local v1, "c":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2038
    .local v5, "name":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 2039
    const-string v5, "<default>"

    .line 2041
    :cond_2
    const-string v8, "\'"

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v8

    const-string v9, "\', "

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 2035
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2044
    .end local v1    # "c":Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v5    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2046
    .local v6, "names":Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Configured caches ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x2

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->log(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private ackClassPaths(Ljava/lang/management/RuntimeMXBean;)V
    .locals 3
    .param p1, "rtBean"    # Ljava/lang/management/RuntimeMXBean;

    .prologue
    .line 2096
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2099
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridLoggerProxy;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2100
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Boot class path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/management/RuntimeMXBean;->getBootClassPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    .line 2101
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/management/RuntimeMXBean;->getClassPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    .line 2102
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Library path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/management/RuntimeMXBean;->getLibraryPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    .line 2104
    :cond_1
    return-void
.end method

.method private ackConfigUrl()V
    .locals 4

    .prologue
    .line 1481
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1483
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridLoggerProxy;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1484
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "IGNITE_CONFIG_URL"

    const-string v3, "n/a"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->info(Ljava/lang/String;)V

    .line 1485
    :cond_1
    return-void
.end method

.method private ackDaemon()V
    .locals 3

    .prologue
    .line 1961
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1963
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridLoggerProxy;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1964
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Daemon mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->isDaemon()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "on"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/GridLoggerProxy;->info(Ljava/lang/String;)V

    .line 1965
    :cond_1
    return-void

    .line 1964
    :cond_2
    const-string v0, "off"

    goto :goto_0
.end method

.method private ackEnvironmentVariables()V
    .locals 5

    .prologue
    .line 1950
    sget-boolean v2, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1952
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridLoggerProxy;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1953
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1954
    .local v0, "envVar":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Environment variable ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1955
    .end local v0    # "envVar":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private ackLanguageRuntime()V
    .locals 4

    .prologue
    .line 1599
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1601
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridLoggerProxy;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1602
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Language runtime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->info(Ljava/lang/String;)V

    .line 1603
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VM information: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->jdkString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->info(Ljava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VM total memory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->heapSize(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->info(Ljava/lang/String;)V

    .line 1606
    :cond_1
    return-void
.end method

.method private ackOsInfo()V
    .locals 3

    .prologue
    .line 1587
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1589
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridLoggerProxy;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1590
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->osString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->info(Ljava/lang/String;)V

    .line 1591
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OS user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "user.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->info(Ljava/lang/String;)V

    .line 1593
    :cond_1
    return-void
.end method

.method private ackP2pConfiguration()V
    .locals 3

    .prologue
    .line 2054
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2056
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2057
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    const-string v1, "Peer class loading is enabled (disable it in production for performance and deployment consistency reasons)"

    const-string v2, "Peer class loading is enabled (disable it for better performance)"

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2063
    :cond_1
    return-void
.end method

.method private ackRemoteManagement()V
    .locals 5

    .prologue
    .line 1442
    sget-boolean v2, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1444
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridLoggerProxy;->isInfoEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1475
    :goto_0
    return-void

    .line 1447
    :cond_1
    new-instance v1, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    .line 1449
    .local v1, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    const-string v2, "Remote Management ["

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1451
    invoke-virtual {p0}, Lorg/apache/ignite/internal/IgniteKernal;->isJmxRemoteEnabled()Z

    move-result v0

    .line 1453
    .local v0, "on":Z
    const-string v2, "restart: "

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/IgniteKernal;->isRestartEnabled()Z

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/IgniteKernal;->onOff(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1454
    const-string v2, "REST: "

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->isRestEnabled()Z

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/IgniteKernal;->onOff(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1455
    const-string v2, "JMX ("

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1456
    const-string v2, "remote: "

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/IgniteKernal;->onOff(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1458
    if-eqz v0, :cond_3

    .line 1459
    const-string v2, ", "

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1461
    const-string v2, "port: "

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v2

    const-string v3, "com.sun.management.jmxremote.port"

    const-string v4, "<n/a>"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1462
    const-string v2, "auth: "

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v2

    const-string v3, "com.sun.management.jmxremote.authenticate"

    invoke-static {v3}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/IgniteKernal;->onOff(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1466
    const-string v2, "ssl: "

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v3

    const-string v2, "com.sun.management.jmxremote.ssl"

    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.sun.management.jmxremote.ssl"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_2
    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/IgniteKernal;->onOff(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1470
    :cond_3
    const-string v2, ")"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1472
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1474
    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/GridLoggerProxy;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1466
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private ackSecurity()V
    .locals 3

    .prologue
    .line 2069
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2071
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridLoggerProxy;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2072
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security status [authentication="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridKernalContextImpl;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->enabled()Z

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/IgniteKernal;->onOff(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->info(Ljava/lang/String;)V

    .line 2073
    :cond_1
    return-void
.end method

.method private ackSpis()V
    .locals 3

    .prologue
    .line 2006
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2008
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridLoggerProxy;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2009
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    const-string v1, "+-------------+"

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    .line 2010
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    const-string v1, "START SPI LIST:"

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    .line 2011
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    const-string v1, "+-------------+"

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    .line 2012
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grid checkpoint SPI     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCheckpointSpi()[Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    .line 2013
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grid collision SPI      : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCollisionSpi()Lorg/apache/ignite/spi/collision/CollisionSpi;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    .line 2014
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grid communication SPI  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCommunicationSpi()Lorg/apache/ignite/spi/communication/CommunicationSpi;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    .line 2015
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grid deployment SPI     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentSpi()Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    .line 2016
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grid discovery SPI      : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDiscoverySpi()Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    .line 2017
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grid event storage SPI  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getEventStorageSpi()Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    .line 2018
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grid failover SPI       : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getFailoverSpi()[Lorg/apache/ignite/spi/failover/FailoverSpi;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    .line 2019
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grid load balancing SPI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLoadBalancingSpi()[Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    .line 2020
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grid swap space SPI     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSwapSpaceSpi()Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    .line 2022
    :cond_1
    return-void
.end method

.method private ackStart(Ljava/lang/management/RuntimeMXBean;)V
    .locals 12
    .param p1, "rtBean"    # Ljava/lang/management/RuntimeMXBean;

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 1540
    invoke-virtual {p0}, Lorg/apache/ignite/internal/IgniteKernal;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    .line 1542
    .local v3, "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v7, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/GridLoggerProxy;->isQuiet()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1543
    new-array v7, v9, [Ljava/lang/Object;

    const-string v8, ""

    aput-object v8, v7, v11

    invoke-static {v11, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quiet(Z[Ljava/lang/Object;)V

    .line 1544
    new-array v8, v9, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignite node started OK (id="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, ""

    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0x29

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v11

    invoke-static {v11, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quiet(Z[Ljava/lang/Object;)V

    .line 1548
    :cond_0
    iget-object v7, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/GridLoggerProxy;->isInfoEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1549
    iget-object v7, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    const-string v8, ""

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/GridLoggerProxy;->info(Ljava/lang/String;)V

    .line 1551
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignite ver. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/IgniteVersionUtils;->VER_STR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x23

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/IgniteVersionUtils;->BUILD_TSTAMP_STR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-sha1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/IgniteVersionUtils;->REV_HASH_STR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1553
    .local v0, "ack":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->dash(I)Ljava/lang/String;

    move-result-object v1

    .line 1555
    .local v1, "dash":Ljava/lang/String;
    new-instance v5, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v5}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    .line 1557
    .local v5, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    iget-object v7, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/GridKernalContextImpl;->ports()Lorg/apache/ignite/internal/processors/port/GridPortProcessor;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->records()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/port/GridPortRecord;

    .line 1558
    .local v4, "rec":Lorg/apache/ignite/internal/processors/port/GridPortRecord;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/port/GridPortRecord;->protocol()Lorg/apache/ignite/spi/IgnitePortProtocol;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/port/GridPortRecord;->port()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(I)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto :goto_1

    .line 1544
    .end local v0    # "ack":Ljava/lang/String;
    .end local v1    # "dash":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "rec":Lorg/apache/ignite/internal/processors/port/GridPortRecord;
    .end local v5    # "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", grid="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 1560
    .restart local v0    # "ack":Ljava/lang/String;
    .restart local v1    # "dash":Ljava/lang/String;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">>> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">>> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">>> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">>> OS name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->osString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">>> CPU(s): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalCpus()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">>> Heap: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v3, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->heapSize(Lorg/apache/ignite/cluster/ClusterNode;I)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "GB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">>> VM name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Ljava/lang/management/RuntimeMXBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">>> Grid name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">>> Local node ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", order="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">>> Local node addresses: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">>> Local ports: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1577
    .local v6, "str":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">>> Ignite documentation: http://ignite.incubator.apache.org"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1579
    iget-object v7, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v7, v6}, Lorg/apache/ignite/internal/GridLoggerProxy;->info(Ljava/lang/String;)V

    .line 1581
    .end local v0    # "ack":Ljava/lang/String;
    .end local v1    # "dash":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    .end local v6    # "str":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private ackSystemProperties()V
    .locals 5

    .prologue
    .line 1928
    sget-boolean v2, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1930
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridLoggerProxy;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1931
    invoke-static {}, Lorg/apache/ignite/IgniteSystemProperties;->snapshot()Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1932
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System property ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1933
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private ackVmArguments(Ljava/lang/management/RuntimeMXBean;)V
    .locals 3
    .param p1, "rtBean"    # Ljava/lang/management/RuntimeMXBean;

    .prologue
    .line 2081
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2084
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridLoggerProxy;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2085
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGNITE_HOME="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIgniteHome()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->info(Ljava/lang/String;)V

    .line 2086
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VM arguments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/management/RuntimeMXBean;->getInputArguments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->info(Ljava/lang/String;)V

    .line 2088
    :cond_1
    return-void
.end method

.method private add(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/io/Serializable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 481
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 483
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/GridKernalContextImpl;->addNodeAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 484
    const-string v0, "org.apache.ignite.spi.class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set SPI attribute. Duplicated SPI name found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "org.apache.ignite.spi.class"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 492
    :cond_2
    return-void
.end method

.method private addHelper(Ljava/lang/Object;)V
    .locals 1
    .param p1, "helper"    # Ljava/lang/Object;

    .prologue
    .line 1415
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->addHelper(Ljava/lang/Object;)V

    .line 1416
    return-void
.end method

.method private varargs addSpiAttributes([Lorg/apache/ignite/spi/IgniteSpi;)V
    .locals 7
    .param p1, "spiList"    # [Lorg/apache/ignite/spi/IgniteSpi;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1256
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/ignite/spi/IgniteSpi;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1257
    .local v3, "spi":Lorg/apache/ignite/spi/IgniteSpi;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 1259
    .local v4, "spiCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ignite/spi/IgniteSpi;>;"
    const-string v5, "org.apache.ignite.spi.class"

    invoke-static {v3, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->spiAttribute(Lorg/apache/ignite/spi/IgniteSpi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lorg/apache/ignite/internal/IgniteKernal;->add(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1261
    .end local v3    # "spi":Lorg/apache/ignite/spi/IgniteSpi;
    .end local v4    # "spiCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ignite/spi/IgniteSpi;>;"
    :cond_0
    return-void
.end method

.method private checkPhysicalRam()V
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    .line 1049
    iget-object v5, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/GridKernalContextImpl;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    const-string v10, "org.apache.ignite.phy.ram"

    invoke-interface {v5, v10}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1051
    .local v6, "ram":J
    cmp-long v5, v6, v12

    if-eqz v5, :cond_2

    .line 1052
    iget-object v5, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/GridKernalContextImpl;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    const-string v10, "org.apache.ignite.macs"

    invoke-interface {v5, v10}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1054
    .local v3, "macs":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 1056
    .local v8, "totalHeap":J
    iget-object v5, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/GridKernalContextImpl;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->allNodes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/cluster/ClusterNode;

    .line 1057
    .local v4, "node":Lorg/apache/ignite/cluster/ClusterNode;
    const-string v5, "org.apache.ignite.macs"

    invoke-interface {v4, v5}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1058
    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryMaximum()J

    move-result-wide v0

    .line 1060
    .local v0, "heap":J
    cmp-long v5, v0, v12

    if-eqz v5, :cond_0

    .line 1061
    add-long/2addr v8, v0

    goto :goto_0

    .line 1065
    .end local v0    # "heap":J
    .end local v4    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1
    cmp-long v5, v8, v6

    if-lez v5, :cond_2

    .line 1066
    iget-object v5, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    const-string v10, "Attempting to start more nodes than physical RAM available on current host (this can cause significant slowdown)"

    invoke-static {v5, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndWarn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1070
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "macs":Ljava/lang/String;
    .end local v8    # "totalHeap":J
    :cond_2
    return-void
.end method

.method private static componentClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2785
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".os."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Grid"

    const-string v3, "GridOs"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createComponent(Ljava/lang/Class;Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/GridComponent;
    .locals 8
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/internal/GridComponent;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v7, 0x5d

    .line 2736
    sget-boolean v4, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 2738
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->plugins()Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->createComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/GridComponent;

    .line 2740
    .local v0, "comp":Lorg/apache/ignite/internal/GridComponent;, "TT;"
    if-eqz v0, :cond_1

    .line 2772
    .end local v0    # "comp":Lorg/apache/ignite/internal/GridComponent;, "TT;"
    :goto_0
    return-object v0

    .line 2743
    .restart local v0    # "comp":Lorg/apache/ignite/internal/GridComponent;, "TT;"
    :cond_1
    const-class v4, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2744
    new-instance v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;

    .end local v0    # "comp":Lorg/apache/ignite/internal/GridComponent;, "TT;"
    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    goto :goto_0

    .line 2746
    .restart local v0    # "comp":Lorg/apache/ignite/internal/GridComponent;, "TT;"
    :cond_2
    const/4 v3, 0x0

    .line 2749
    .local v3, "implCls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p0}, Lorg/apache/ignite/internal/IgniteKernal;->componentClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 2755
    :goto_1
    if-nez v3, :cond_3

    .line 2756
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find component implementation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2758
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2759
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Component implementation does not implement component interface [component="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", implementation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2765
    :cond_4
    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/apache/ignite/internal/GridKernalContext;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 2772
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v4, 0x1

    :try_start_2
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/GridComponent;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v4

    goto/16 :goto_0

    .line 2767
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catch_0
    move-exception v2

    .line 2768
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Component does not have expected constructor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2774
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catch_1
    move-exception v2

    .line 2775
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create component [component="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", implementation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2751
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_2
    move-exception v4

    goto/16 :goto_1
.end method

.method private fillNodeAttributes()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIncludeProperties()[Ljava/lang/String;

    move-result-object v8

    .line 1109
    .local v8, "incProps":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1110
    .local v15, "sysEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1112
    .local v13, "name":Ljava/lang/String;
    if-eqz v8, :cond_1

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v8, v13, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->containsStringArray([Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_1

    invoke-static {v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isVisorNodeStartProperty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    invoke-static {v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isVisorRequiredProperty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1114
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    move-object/from16 v17, v0

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->addNodeAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1120
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "sysEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 1121
    .local v4, "e":Ljava/lang/SecurityException;
    new-instance v17, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to add environment properties to node attributes due to security violation: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1117
    .end local v4    # "e":Ljava/lang/SecurityException;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/GridLoggerProxy;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    move-object/from16 v17, v0

    const-string v18, "Added environment properties to node attributes."

    invoke-virtual/range {v17 .. v18}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1128
    :cond_3
    :try_start_2
    invoke-static {}, Lorg/apache/ignite/IgniteSystemProperties;->snapshot()Ljava/util/Properties;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1129
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1131
    .local v11, "key":Ljava/lang/String;
    if-eqz v8, :cond_5

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v8, v11, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->containsStringArray([Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_5

    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isVisorRequiredProperty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1133
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/apache/ignite/internal/GridKernalContextImpl;->nodeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 1135
    .local v16, "val":Ljava/lang/Object;
    if-eqz v16, :cond_6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "System property will override environment variable with the same name: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1138
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    move-object/from16 v17, v0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->addNodeAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1145
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v11    # "key":Ljava/lang/String;
    .end local v16    # "val":Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 1146
    .restart local v4    # "e":Ljava/lang/SecurityException;
    new-instance v17, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to add system properties to node attributes due to security violation: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1142
    .end local v4    # "e":Ljava/lang/SecurityException;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/GridLoggerProxy;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    move-object/from16 v17, v0

    const-string v18, "Added system properties to node attributes."

    invoke-virtual/range {v17 .. v18}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1151
    :cond_8
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->allLocalIps()Ljava/util/Collection;

    move-result-object v17

    const-string v18, ", "

    invoke-static/range {v17 .. v18}, Lorg/apache/ignite/internal/util/typedef/F;->concat(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1152
    .local v9, "ips":Ljava/lang/String;
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->allLocalMACs()Ljava/util/Collection;

    move-result-object v17

    const-string v18, ", "

    invoke-static/range {v17 .. v18}, Lorg/apache/ignite/internal/util/typedef/F;->concat(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1155
    .local v12, "macs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/GridLoggerProxy;->isInfoEnabled()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    move-object/from16 v18, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Non-loopback local IPs: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    const-string v17, "N/A"

    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->info(Ljava/lang/String;)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    move-object/from16 v18, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Enabled local MACs: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v12}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    const-string v17, "N/A"

    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->info(Ljava/lang/String;)V

    .line 1161
    :cond_9
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    move-object/from16 v17, v0

    const-string v18, "Ignite is starting on loopback address... Only nodes on the same physical computer can participate in topology."

    const-string v19, "Ignite is starting on loopback address..."

    invoke-static/range {v17 .. v19}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1167
    :cond_a
    const-string v17, "org.apache.ignite.ips"

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_b

    const-string v9, ""

    .end local v9    # "ips":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lorg/apache/ignite/internal/IgniteKernal;->add(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1168
    const-string v17, "org.apache.ignite.macs"

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_c

    const-string v12, ""

    .end local v12    # "macs":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v12}, Lorg/apache/ignite/internal/IgniteKernal;->add(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1171
    const-string v18, "org.apache.ignite.jit.name"

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getCompilerMx()Ljava/lang/management/CompilationMXBean;

    move-result-object v17

    if-nez v17, :cond_f

    const-string v17, ""

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/IgniteKernal;->add(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1172
    const-string v17, "org.apache.ignite.build.ver"

    sget-object v18, Lorg/apache/ignite/internal/IgniteVersionUtils;->VER_STR:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/IgniteKernal;->add(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1173
    const-string v17, "org.apache.ignite.build.date"

    sget-object v18, Lorg/apache/ignite/internal/IgniteVersionUtils;->BUILD_TSTAMP_STR:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/IgniteKernal;->add(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1174
    const-string v18, "org.apache.ignite.compatible.vers"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->compatibleVersions()Ljava/util/Collection;

    move-result-object v17

    check-cast v17, Ljava/io/Serializable;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/IgniteKernal;->add(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1175
    const-string v17, "org.apache.ignite.marshaller"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/IgniteKernal;->add(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1176
    const-string v17, "org.apache.ignite.user.name"

    const-string/jumbo v18, "user.name"

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/IgniteKernal;->add(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1177
    const-string v17, "org.apache.ignite.ignite.name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/IgniteKernal;->add(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1179
    const-string v17, "org.apache.ignite.peer.classloading.enabled"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/IgniteKernal;->add(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1180
    const-string v17, "org.apache.ignite.ignite.dep.mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/IgniteKernal;->add(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1181
    const-string v17, "org.apache.ignite.lang.rt"

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->getLanguage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/IgniteKernal;->add(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1183
    const-string v17, "org.apache.ignite.jvm.pid"

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->jvmPid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/IgniteKernal;->add(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1185
    const-string v17, "org.apache.ignite.cache.client"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isClientMode()Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/IgniteKernal;->add(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1188
    new-instance v10, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    const/16 v17, 0x200

    move/from16 v0, v17

    invoke-direct {v10, v0}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>(I)V

    .line 1190
    .local v10, "jvmArgs":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->jvmArgs()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1191
    .local v3, "arg":Ljava/lang/String;
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1192
    const-string v17, "@@@"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1196
    :goto_6
    invoke-virtual {v10, v3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto :goto_5

    .end local v3    # "arg":Ljava/lang/String;
    .end local v10    # "jvmArgs":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    .restart local v9    # "ips":Ljava/lang/String;
    .restart local v12    # "macs":Ljava/lang/String;
    :cond_d
    move-object/from16 v17, v9

    .line 1156
    goto/16 :goto_2

    :cond_e
    move-object/from16 v17, v12

    .line 1157
    goto/16 :goto_3

    .line 1171
    .end local v9    # "ips":Ljava/lang/String;
    .end local v12    # "macs":Ljava/lang/String;
    :cond_f
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getCompilerMx()Ljava/lang/management/CompilationMXBean;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/management/CompilationMXBean;->getName()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    .line 1194
    .restart local v3    # "arg":Ljava/lang/String;
    .restart local v10    # "jvmArgs":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    :cond_10
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto :goto_6

    .line 1199
    .end local v3    # "arg":Ljava/lang/String;
    :cond_11
    const-string v17, "org.apache.ignite.jvm.args"

    invoke-virtual {v10}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/IgniteKernal;->add(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1202
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->isDaemon()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 1203
    const-string v17, "org.apache.ignite.daemon"

    const-string/jumbo v18, "true"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/IgniteKernal;->add(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1207
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->isJmxRemoteEnabled()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 1208
    const-string v17, "com.sun.management.jmxremote.port"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1210
    .local v14, "portStr":Ljava/lang/String;
    if-eqz v14, :cond_13

    .line 1212
    :try_start_4
    const-string v17, "org.apache.ignite.jmx.port"

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/IgniteKernal;->add(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1220
    .end local v14    # "portStr":Ljava/lang/String;
    :cond_13
    :goto_7
    const-string v17, "org.apache.ignite.restart.enabled"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->isRestartEnabled()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/IgniteKernal;->add(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v17

    if-eqz v17, :cond_14

    .line 1224
    const-string v17, "org.apache.ignite.rest.port.range"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getPortRange()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/IgniteKernal;->add(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1227
    :cond_14
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lorg/apache/ignite/spi/IgniteSpi;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCollisionSpi()Lorg/apache/ignite/spi/collision/CollisionSpi;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->addSpiAttributes([Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 1228
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lorg/apache/ignite/spi/IgniteSpi;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSwapSpaceSpi()Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->addSpiAttributes([Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 1229
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lorg/apache/ignite/spi/IgniteSpi;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDiscoverySpi()Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->addSpiAttributes([Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getFailoverSpi()[Lorg/apache/ignite/spi/failover/FailoverSpi;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->addSpiAttributes([Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 1231
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lorg/apache/ignite/spi/IgniteSpi;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCommunicationSpi()Lorg/apache/ignite/spi/communication/CommunicationSpi;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->addSpiAttributes([Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 1232
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lorg/apache/ignite/spi/IgniteSpi;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getEventStorageSpi()Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->addSpiAttributes([Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCheckpointSpi()[Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->addSpiAttributes([Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLoadBalancingSpi()[Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->addSpiAttributes([Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 1235
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Lorg/apache/ignite/spi/IgniteSpi;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentSpi()Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->addSpiAttributes([Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getUserAttributes()Ljava/util/Map;

    move-result-object v17

    if-eqz v17, :cond_16

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getUserAttributes()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1240
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    move-object/from16 v18, v0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->hasNodeAttribute(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    move-object/from16 v18, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "User or internal attribute has the same name as environment or system property and will take precedence: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1244
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    move-object/from16 v18, v0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/GridKernalContextImpl;->addNodeAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 1247
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_16
    return-void

    .line 1214
    .restart local v14    # "portStr":Ljava/lang/String;
    :catch_2
    move-exception v17

    goto/16 :goto_7
.end method

.method private getLanguage()Ljava/lang/String;
    .locals 17

    .prologue
    .line 1613
    const/4 v10, 0x0

    .line 1614
    .local v10, "scala":Z
    const/4 v3, 0x0

    .line 1615
    .local v3, "groovy":Z
    const/4 v1, 0x0

    .line 1617
    .local v1, "clojure":Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v2, v0, v4

    .line 1618
    .local v2, "elem":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 1620
    .local v9, "s":Ljava/lang/String;
    const-string v12, "scala"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1621
    const/4 v10, 0x1

    .line 1637
    .end local v2    # "elem":Ljava/lang/StackTraceElement;
    .end local v9    # "s":Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v10, :cond_9

    .line 1638
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "/library.properties"

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .local v6, "in":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 1639
    :try_start_1
    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    .line 1641
    .local v8, "props":Ljava/util/Properties;
    if-eqz v6, :cond_1

    .line 1642
    invoke-virtual {v8, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1644
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Scala ver. "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, "version.number"

    const-string v15, "<unknown>"

    invoke-virtual {v8, v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v12

    .line 1645
    if-eqz v6, :cond_2

    if-eqz v13, :cond_6

    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1652
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v8    # "props":Ljava/util/Properties;
    :cond_2
    :goto_2
    return-object v12

    .line 1625
    .restart local v2    # "elem":Ljava/lang/StackTraceElement;
    .restart local v9    # "s":Ljava/lang/String;
    :cond_3
    const-string v12, "groovy"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1626
    const/4 v3, 0x1

    .line 1628
    goto :goto_1

    .line 1630
    :cond_4
    const-string v12, "clojure"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1631
    const/4 v1, 0x1

    .line 1633
    goto :goto_1

    .line 1617
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1645
    .end local v2    # "elem":Ljava/lang/StackTraceElement;
    .end local v9    # "s":Ljava/lang/String;
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v8    # "props":Ljava/util/Properties;
    :catch_0
    move-exception v11

    .local v11, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1646
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v8    # "props":Ljava/util/Properties;
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    .line 1647
    .local v5, "ignore":Ljava/lang/Throwable;
    const-string v12, "Scala ver. <unknown>"

    goto :goto_2

    .line 1645
    .end local v5    # "ignore":Ljava/lang/Throwable;
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v8    # "props":Ljava/util/Properties;
    :cond_6
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1638
    .end local v8    # "props":Ljava/util/Properties;
    :catch_2
    move-exception v12

    :try_start_5
    throw v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1645
    :catchall_0
    move-exception v13

    move-object/from16 v16, v13

    move-object v13, v12

    move-object/from16 v12, v16

    :goto_3
    if-eqz v6, :cond_7

    if-eqz v13, :cond_8

    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_7
    :goto_4
    :try_start_7
    throw v12

    :catch_3
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 1652
    .end local v6    # "in":Ljava/io/InputStream;
    :cond_9
    if-eqz v3, :cond_a

    const-string v12, "Groovy"

    goto :goto_2

    :cond_a
    if-eqz v1, :cond_b

    const-string v12, "Clojure"

    goto :goto_2

    :cond_b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->jdkName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ver. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->jdkVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 1645
    .restart local v6    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v12

    goto :goto_3
.end method

.method private guard()V
    .locals 1

    .prologue
    .line 2712
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2714
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 2715
    return-void
.end method

.method private isDaemon()Z
    .locals 2

    .prologue
    .line 1972
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1974
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "true"

    const-string v1, "IGNITE_DAEMON"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRestEnabled()Z
    .locals 1

    .prologue
    .line 1433
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1435
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lifecycleAwares(Lorg/apache/ignite/configuration/IgniteConfiguration;)Ljava/lang/Iterable;
    .locals 6
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/IgniteConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/configuration/IgniteConfiguration;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2113
    .local v0, "objs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLifecycleBeans()[Lorg/apache/ignite/lifecycle/LifecycleBean;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2114
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLifecycleBeans()[Lorg/apache/ignite/lifecycle/LifecycleBean;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->copy(Ljava/util/Collection;[Ljava/lang/Object;)Ljava/util/Collection;

    .line 2116
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSegmentationResolvers()[Lorg/apache/ignite/plugin/segmentation/GridSegmentationResolver;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2117
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSegmentationResolvers()[Lorg/apache/ignite/plugin/segmentation/GridSegmentationResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->copy(Ljava/util/Collection;[Ljava/lang/Object;)Ljava/util/Collection;

    .line 2119
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2120
    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getMessageInterceptor()Lorg/apache/ignite/configuration/ConnectorMessageInterceptor;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getSslContextFactory()Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->copy(Ljava/util/Collection;[Ljava/lang/Object;)Ljava/util/Collection;

    .line 2123
    :cond_2
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridLogger()Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->copy(Ljava/util/Collection;[Ljava/lang/Object;)Ljava/util/Collection;

    .line 2125
    return-object v0
.end method

.method private logNodeUserAttributes()V
    .locals 5

    .prologue
    .line 1939
    sget-boolean v2, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1941
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridLoggerProxy;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1942
    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getUserAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1943
    .local v0, "attr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local node user attribute ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/GridLoggerProxy;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1944
    .end local v0    # "attr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private notifyLifecycleBeans(Lorg/apache/ignite/lifecycle/LifecycleEventType;)V
    .locals 6
    .param p1, "evt"    # Lorg/apache/ignite/lifecycle/LifecycleEventType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v5, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLifecycleBeans()[Lorg/apache/ignite/lifecycle/LifecycleBean;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 503
    iget-object v5, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLifecycleBeans()[Lorg/apache/ignite/lifecycle/LifecycleBean;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/ignite/lifecycle/LifecycleBean;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 504
    .local v1, "bean":Lorg/apache/ignite/lifecycle/LifecycleBean;
    if-eqz v1, :cond_0

    .line 506
    :try_start_0
    invoke-interface {v1, p1}, Lorg/apache/ignite/lifecycle/LifecycleBean;->onLifecycleEvent(Lorg/apache/ignite/lifecycle/LifecycleEventType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 508
    :catch_0
    move-exception v2

    .line 509
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v5, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 513
    .end local v0    # "arr$":[Lorg/apache/ignite/lifecycle/LifecycleBean;
    .end local v1    # "bean":Lorg/apache/ignite/lifecycle/LifecycleBean;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    return-void
.end method

.method private notifyLifecycleBeansEx(Lorg/apache/ignite/lifecycle/LifecycleEventType;)V
    .locals 4
    .param p1, "evt"    # Lorg/apache/ignite/lifecycle/LifecycleEventType;

    .prologue
    .line 523
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/IgniteKernal;->notifyLifecycleBeans(Lorg/apache/ignite/lifecycle/LifecycleEventType;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to notify lifecycle bean (safely ignored) [evt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", gridName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onOff(Z)Ljava/lang/String;
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 1425
    if-eqz p1, :cond_0

    const-string v0, "on"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method

.method private registerExecutorMBean(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)Ljavax/management/ObjectName;
    .locals 8
    .param p1, "exec"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1328
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1331
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Thread Pools"

    new-instance v4, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;

    invoke-direct {v4, p1}, Lorg/apache/ignite/internal/ThreadPoolMXBeanAdapter;-><init>(Ljava/util/concurrent/ExecutorService;)V

    const-class v5, Lorg/apache/ignite/mxbean/ThreadPoolMXBean;

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->registerMBean(Ljavax/management/MBeanServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljavax/management/ObjectName;

    move-result-object v7

    .line 1339
    .local v7, "res":Ljavax/management/ObjectName;
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridLoggerProxy;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1340
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered executor service MBean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1342
    :cond_1
    return-object v7

    .line 1344
    .end local v7    # "res":Ljavax/management/ObjectName;
    :catch_0
    move-exception v6

    .line 1345
    .local v6, "e":Ljavax/management/JMException;
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register executor service MBean [name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", exec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private registerExecutorMBeans(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1, "execSvc"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "sysExecSvc"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "p2pExecSvc"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "mgmtExecSvc"    # Ljava/util/concurrent/ExecutorService;
    .param p5, "restExecSvc"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1310
    const-string v1, "GridExecutionExecutor"

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/IgniteKernal;->registerExecutorMBean(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->pubExecSvcMBean:Ljavax/management/ObjectName;

    .line 1311
    const-string v1, "GridSystemExecutor"

    invoke-direct {p0, p2, v1}, Lorg/apache/ignite/internal/IgniteKernal;->registerExecutorMBean(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->sysExecSvcMBean:Ljavax/management/ObjectName;

    .line 1312
    const-string v1, "GridManagementExecutor"

    invoke-direct {p0, p4, v1}, Lorg/apache/ignite/internal/IgniteKernal;->registerExecutorMBean(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->mgmtExecSvcMBean:Ljavax/management/ObjectName;

    .line 1313
    const-string v1, "GridClassLoadingExecutor"

    invoke-direct {p0, p3, v1}, Lorg/apache/ignite/internal/IgniteKernal;->registerExecutorMBean(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->p2PExecSvcMBean:Ljavax/management/ObjectName;

    .line 1315
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v0

    .line 1317
    .local v0, "clientCfg":Lorg/apache/ignite/configuration/ConnectorConfiguration;
    if-eqz v0, :cond_0

    .line 1318
    const-string v1, "GridRestExecutor"

    invoke-direct {p0, p5, v1}, Lorg/apache/ignite/internal/IgniteKernal;->registerExecutorMBean(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->restExecSvcMBean:Ljavax/management/ObjectName;

    .line 1319
    :cond_0
    return-void
.end method

.method private registerKernalMBean()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1266
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Kernal"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lorg/apache/ignite/mxbean/IgniteMXBean;

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->registerMBean(Ljavax/management/MBeanServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljavax/management/ObjectName;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->kernalMBean:Ljavax/management/ObjectName;

    .line 1274
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridLoggerProxy;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered kernal MBean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->kernalMBean:Ljavax/management/ObjectName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    :cond_0
    return-void

    .line 1277
    :catch_0
    move-exception v6

    .line 1278
    .local v6, "e":Ljavax/management/JMException;
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->kernalMBean:Ljavax/management/ObjectName;

    .line 1280
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v1, "Failed to register kernal MBean."

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private registerLocalNodeMBean()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1286
    new-instance v4, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/apache/ignite/internal/ClusterLocalNodeMetricsMXBeanImpl;-><init>(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 1289
    .local v4, "mbean":Lorg/apache/ignite/mxbean/ClusterLocalNodeMetricsMXBean;
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Kernal"

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lorg/apache/ignite/mxbean/ClusterLocalNodeMetricsMXBean;

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->registerMBean(Ljavax/management/MBeanServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljavax/management/ObjectName;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->locNodeMBean:Ljavax/management/ObjectName;

    .line 1297
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridLoggerProxy;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered local node MBean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->locNodeMBean:Ljavax/management/ObjectName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1305
    :cond_0
    return-void

    .line 1300
    :catch_0
    move-exception v6

    .line 1301
    .local v6, "e":Ljavax/management/JMException;
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->locNodeMBean:Ljavax/management/ObjectName;

    .line 1303
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v1, "Failed to register local node MBean."

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private skipDaemon(Lorg/apache/ignite/internal/GridComponent;)Z
    .locals 2
    .param p1, "comp"    # Lorg/apache/ignite/internal/GridComponent;

    .prologue
    .line 2817
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->isDaemon()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/SkipDaemon;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->hasAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startManager(Lorg/apache/ignite/internal/managers/GridManager;)V
    .locals 4
    .param p1, "mgr"    # Lorg/apache/ignite/internal/managers/GridManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1382
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->add(Lorg/apache/ignite/internal/GridComponent;)V

    .line 1385
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/IgniteKernal;->skipDaemon(Lorg/apache/ignite/internal/GridComponent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1386
    invoke-interface {p1}, Lorg/apache/ignite/internal/managers/GridManager;->start()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1391
    :cond_0
    return-void

    .line 1388
    :catch_0
    move-exception v0

    .line 1389
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start manager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V
    .locals 4
    .param p1, "proc"    # Lorg/apache/ignite/internal/processors/GridProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1398
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->add(Lorg/apache/ignite/internal/GridComponent;)V

    .line 1401
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/IgniteKernal;->skipDaemon(Lorg/apache/ignite/internal/GridComponent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1402
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/GridProcessor;->start()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1407
    :cond_0
    return-void

    .line 1404
    :catch_0
    move-exception v0

    .line 1405
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start processor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private stop0(Z)V
    .locals 24
    .param p1, "cancel"    # Z

    .prologue
    .line 1677
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->gw:Ljava/util/concurrent/atomic/AtomicReference;

    const/16 v16, 0x0

    new-instance v17, Lorg/apache/ignite/internal/GridKernalGatewayImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lorg/apache/ignite/internal/GridKernalGatewayImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v17}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1679
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->gw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/GridKernalGateway;

    .line 1681
    .local v10, "gw":Lorg/apache/ignite/internal/GridKernalGateway;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->stopGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 1683
    const/4 v9, 0x0

    .line 1685
    .local v9, "firstStop":Z
    invoke-interface {v10}, Lorg/apache/ignite/internal/GridKernalGateway;->getState()Lorg/apache/ignite/internal/GridKernalState;

    move-result-object v14

    .line 1687
    .local v14, "state":Lorg/apache/ignite/internal/GridKernalState;
    sget-object v15, Lorg/apache/ignite/internal/GridKernalState;->STARTED:Lorg/apache/ignite/internal/GridKernalState;

    if-ne v14, v15, :cond_4

    .line 1688
    const/4 v9, 0x1

    .line 1693
    :cond_0
    :goto_0
    if-eqz v9, :cond_2

    .line 1695
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/GridLoggerProxy;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1696
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    const-string v16, "Notifying lifecycle beans."

    invoke-virtual/range {v15 .. v16}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    .line 1698
    :cond_1
    sget-object v15, Lorg/apache/ignite/lifecycle/LifecycleEventType;->BEFORE_NODE_STOP:Lorg/apache/ignite/lifecycle/LifecycleEventType;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/ignite/internal/IgniteKernal;->notifyLifecycleBeansEx(Lorg/apache/ignite/lifecycle/LifecycleEventType;)V

    .line 1701
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v4

    .line 1703
    .local v4, "cacheProcessor":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/GridKernalContextImpl;->components()Ljava/util/List;

    move-result-object v6

    .line 1707
    .local v6, "comps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/GridComponent;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    invoke-interface {v6, v15}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v13

    .local v13, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/GridComponent;>;"
    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1708
    invoke-interface {v13}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/GridComponent;

    .line 1711
    .local v5, "comp":Lorg/apache/ignite/internal/GridComponent;
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/ignite/internal/IgniteKernal;->skipDaemon(Lorg/apache/ignite/internal/GridComponent;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1712
    move/from16 v0, p1

    invoke-interface {v5, v0}, Lorg/apache/ignite/internal/GridComponent;->onKernalStop(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1714
    :catch_0
    move-exception v8

    .line 1715
    .local v8, "e":Ljava/lang/Throwable;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->errOnStop:Z

    .line 1717
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to pre-stop processor: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1689
    .end local v4    # "cacheProcessor":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
    .end local v5    # "comp":Lorg/apache/ignite/internal/GridComponent;
    .end local v6    # "comps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/GridComponent;>;"
    .end local v8    # "e":Ljava/lang/Throwable;
    .end local v13    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/GridComponent;>;"
    :cond_4
    sget-object v15, Lorg/apache/ignite/internal/GridKernalState;->STARTING:Lorg/apache/ignite/internal/GridKernalState;

    if-ne v14, v15, :cond_0

    .line 1690
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    const-string v16, "Attempt to stop starting grid. This operation cannot be guaranteed to be successful."

    invoke-static/range {v15 .. v16}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0

    .line 1722
    .restart local v4    # "cacheProcessor":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
    .restart local v6    # "comps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/GridComponent;>;"
    .restart local v13    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/GridComponent;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->updateNtfTimer:Ljava/util/Timer;

    if-eqz v15, :cond_6

    .line 1723
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->updateNtfTimer:Ljava/util/Timer;

    invoke-virtual {v15}, Ljava/util/Timer;->cancel()V

    .line 1725
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->starveTimer:Ljava/util/Timer;

    if-eqz v15, :cond_7

    .line 1726
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->starveTimer:Ljava/util/Timer;

    invoke-virtual {v15}, Ljava/util/Timer;->cancel()V

    .line 1729
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->metricsLogTimer:Ljava/util/Timer;

    if-eqz v15, :cond_8

    .line 1730
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->metricsLogTimer:Ljava/util/Timer;

    invoke-virtual {v15}, Ljava/util/Timer;->cancel()V

    .line 1732
    :cond_8
    const/4 v12, 0x0

    .line 1736
    .local v12, "interrupted":Z
    :cond_9
    :goto_2
    const-wide/16 v16, 0xa

    :try_start_1
    move-wide/from16 v0, v16

    invoke-interface {v10, v0, v1}, Lorg/apache/ignite/internal/GridKernalGateway;->tryWriteLock(J)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v15

    if-eqz v15, :cond_d

    .line 1746
    if-eqz v4, :cond_a

    .line 1747
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cancelUserOperations()V

    .line 1751
    :cond_a
    if-eqz v12, :cond_b

    .line 1752
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->interrupt()V

    .line 1755
    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v3

    .line 1757
    .local v3, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
    if-eqz v3, :cond_c

    .line 1758
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->blockGateways()V

    .line 1760
    :cond_c
    sget-boolean v15, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v15, :cond_f

    invoke-interface {v10}, Lorg/apache/ignite/internal/GridKernalGateway;->getState()Lorg/apache/ignite/internal/GridKernalState;

    move-result-object v15

    sget-object v16, Lorg/apache/ignite/internal/GridKernalState;->STARTED:Lorg/apache/ignite/internal/GridKernalState;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_f

    invoke-interface {v10}, Lorg/apache/ignite/internal/GridKernalGateway;->getState()Lorg/apache/ignite/internal/GridKernalState;

    move-result-object v15

    sget-object v16, Lorg/apache/ignite/internal/GridKernalState;->STARTING:Lorg/apache/ignite/internal/GridKernalState;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_f

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1771
    .end local v3    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
    :catchall_0
    move-exception v15

    invoke-interface {v10}, Lorg/apache/ignite/internal/GridKernalGateway;->writeUnlock()V

    throw v15

    .line 1746
    :cond_d
    if-eqz v4, :cond_9

    .line 1747
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cancelUserOperations()V

    goto :goto_2

    .line 1739
    :catch_1
    move-exception v11

    .line 1742
    .local v11, "ignored":Ljava/lang/InterruptedException;
    const/4 v12, 0x1

    .line 1746
    if-eqz v4, :cond_9

    .line 1747
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cancelUserOperations()V

    goto :goto_2

    .line 1746
    .end local v11    # "ignored":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v15

    if-eqz v4, :cond_e

    .line 1747
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cancelUserOperations()V

    :cond_e
    throw v15

    .line 1763
    .restart local v3    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
    :cond_f
    :try_start_3
    sget-object v15, Lorg/apache/ignite/internal/GridKernalState;->STOPPING:Lorg/apache/ignite/internal/GridKernalState;

    invoke-interface {v10, v15}, Lorg/apache/ignite/internal/GridKernalGateway;->setState(Lorg/apache/ignite/internal/GridKernalState;)V

    .line 1765
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cluster()Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;->get()Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->clearNodeMap()V

    .line 1767
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/GridLoggerProxy;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 1768
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    move-object/from16 v16, v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Grid "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    if-nez v15, :cond_13

    const-string v15, ""

    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "is stopping."

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1771
    :cond_10
    invoke-interface {v10}, Lorg/apache/ignite/internal/GridKernalGateway;->writeUnlock()V

    .line 1775
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->pubExecSvcMBean:Ljavax/management/ObjectName;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/ignite/internal/IgniteKernal;->unregisterMBean(Ljavax/management/ObjectName;)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->sysExecSvcMBean:Ljavax/management/ObjectName;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->unregisterMBean(Ljavax/management/ObjectName;)Z

    move-result v16

    and-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->mgmtExecSvcMBean:Ljavax/management/ObjectName;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->unregisterMBean(Ljavax/management/ObjectName;)Z

    move-result v16

    and-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->p2PExecSvcMBean:Ljavax/management/ObjectName;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->unregisterMBean(Ljavax/management/ObjectName;)Z

    move-result v16

    and-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->kernalMBean:Ljavax/management/ObjectName;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->unregisterMBean(Ljavax/management/ObjectName;)Z

    move-result v16

    and-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->locNodeMBean:Ljavax/management/ObjectName;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->unregisterMBean(Ljavax/management/ObjectName;)Z

    move-result v16

    and-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->restExecSvcMBean:Ljavax/management/ObjectName;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->unregisterMBean(Ljavax/management/ObjectName;)Z

    move-result v16

    and-int v15, v15, v16

    if-nez v15, :cond_11

    .line 1784
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->errOnStop:Z

    .line 1787
    :cond_11
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    invoke-interface {v6, v15}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v13

    :cond_12
    :goto_4
    invoke-interface {v13}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v15

    if-eqz v15, :cond_14

    .line 1788
    invoke-interface {v13}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/GridComponent;

    .line 1791
    .restart local v5    # "comp":Lorg/apache/ignite/internal/GridComponent;
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/ignite/internal/IgniteKernal;->skipDaemon(Lorg/apache/ignite/internal/GridComponent;)Z

    move-result v15

    if-nez v15, :cond_12

    .line 1792
    move/from16 v0, p1

    invoke-interface {v5, v0}, Lorg/apache/ignite/internal/GridComponent;->stop(Z)V

    .line 1794
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/GridLoggerProxy;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 1795
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Component stopped: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 1798
    :catch_2
    move-exception v8

    .line 1799
    .restart local v8    # "e":Ljava/lang/Throwable;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->errOnStop:Z

    .line 1801
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to stop component (ignoring): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 1768
    .end local v5    # "comp":Lorg/apache/ignite/internal/GridComponent;
    .end local v8    # "e":Ljava/lang/Throwable;
    :cond_13
    :try_start_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x27

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "\' "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v15

    goto/16 :goto_3

    .line 1806
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->lifecycleAwares(Lorg/apache/ignite/configuration/IgniteConfiguration;)Ljava/lang/Iterable;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/apache/ignite/internal/util/typedef/internal/U;->stopLifecycleAware(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Iterable;)V

    .line 1809
    sget-object v15, Lorg/apache/ignite/lifecycle/LifecycleEventType;->AFTER_NODE_STOP:Lorg/apache/ignite/lifecycle/LifecycleEventType;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/apache/ignite/internal/IgniteKernal;->notifyLifecycleBeansEx(Lorg/apache/ignite/lifecycle/LifecycleEventType;)V

    .line 1812
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->clearClassCache()V

    .line 1813
    invoke-static {}, Lorg/apache/ignite/marshaller/MarshallerExclusions;->clearCache()V

    .line 1814
    invoke-static {}, Lorg/apache/ignite/internal/util/GridEnumCache;->clear()V

    .line 1816
    invoke-interface {v10}, Lorg/apache/ignite/internal/GridKernalGateway;->writeLock()V

    .line 1819
    :try_start_6
    sget-object v15, Lorg/apache/ignite/internal/GridKernalState;->STOPPED:Lorg/apache/ignite/internal/GridKernalState;

    invoke-interface {v10, v15}, Lorg/apache/ignite/internal/GridKernalGateway;->setState(Lorg/apache/ignite/internal/GridKernalState;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1822
    invoke-interface {v10}, Lorg/apache/ignite/internal/GridKernalGateway;->writeUnlock()V

    .line 1826
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/GridLoggerProxy;->isQuiet()Z

    move-result v15

    if-eqz v15, :cond_15

    .line 1827
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->errOnStop:Z

    if-nez v15, :cond_18

    .line 1828
    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Ignite node stopped OK [uptime="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->startTime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Lorg/apache/ignite/internal/util/typedef/X;->timeSpan2HMSM(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x5d

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quiet(Z[Ljava/lang/Object;)V

    .line 1835
    :cond_15
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/GridLoggerProxy;->isInfoEnabled()Z

    move-result v15

    if-eqz v15, :cond_16

    .line 1836
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->errOnStop:Z

    if-nez v15, :cond_19

    .line 1837
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Ignite ver. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lorg/apache/ignite/internal/IgniteVersionUtils;->VER_STR:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x23

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lorg/apache/ignite/internal/IgniteVersionUtils;->BUILD_TSTAMP_STR:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "-sha1:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lorg/apache/ignite/internal/IgniteVersionUtils;->REV_HASH_STR:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " stopped OK"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1840
    .local v2, "ack":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v15}, Lorg/apache/ignite/internal/util/typedef/internal/U;->dash(I)Ljava/lang/String;

    move-result-object v7

    .line 1842
    .local v7, "dash":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">>> "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">>> "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">>> "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">>> Grid name: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">>> Grid uptime: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->startTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Lorg/apache/ignite/internal/util/typedef/X;->timeSpan2HMSM(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/apache/ignite/internal/GridLoggerProxy;->info(Ljava/lang/String;)V

    .line 1871
    .end local v2    # "ack":Ljava/lang/String;
    .end local v7    # "dash":Ljava/lang/String;
    :cond_16
    :goto_6
    :try_start_7
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->onGridStop()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1888
    .end local v3    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
    .end local v4    # "cacheProcessor":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
    .end local v6    # "comps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/GridComponent;>;"
    .end local v9    # "firstStop":Z
    .end local v12    # "interrupted":Z
    .end local v13    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/GridComponent;>;"
    .end local v14    # "state":Lorg/apache/ignite/internal/GridKernalState;
    :cond_17
    :goto_7
    return-void

    .line 1822
    .restart local v3    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
    .restart local v4    # "cacheProcessor":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
    .restart local v6    # "comps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/GridComponent;>;"
    .restart local v9    # "firstStop":Z
    .restart local v12    # "interrupted":Z
    .restart local v13    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/GridComponent;>;"
    .restart local v14    # "state":Lorg/apache/ignite/internal/GridKernalState;
    :catchall_2
    move-exception v15

    invoke-interface {v10}, Lorg/apache/ignite/internal/GridKernalGateway;->writeUnlock()V

    throw v15

    .line 1831
    :cond_18
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Ignite node stopped wih ERRORS [uptime="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->startTime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Lorg/apache/ignite/internal/util/typedef/X;->timeSpan2HMSM(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x5d

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quiet(Z[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1852
    :cond_19
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Ignite ver. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lorg/apache/ignite/internal/IgniteVersionUtils;->VER_STR:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x23

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lorg/apache/ignite/internal/IgniteVersionUtils;->BUILD_TSTAMP_STR:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "-sha1:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lorg/apache/ignite/internal/IgniteVersionUtils;->REV_HASH_STR:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " stopped with ERRORS"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1855
    .restart local v2    # "ack":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v15}, Lorg/apache/ignite/internal/util/typedef/internal/U;->dash(I)Ljava/lang/String;

    move-result-object v7

    .line 1857
    .restart local v7    # "dash":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">>> "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">>> "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">>> Grid name: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">>> Grid uptime: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->startTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Lorg/apache/ignite/internal/util/typedef/X;->timeSpan2HMSM(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">>> See log above for detailed error message."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">>> Note that some errors during stop can prevent grid from"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">>> maintaining correct topology since this node may have"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">>> not exited grid properly."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lorg/apache/ignite/internal/IgniteKernal;->NL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/apache/ignite/internal/GridLoggerProxy;->info(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1873
    .end local v2    # "ack":Ljava/lang/String;
    .end local v7    # "dash":Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 1875
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_7

    .line 1880
    .end local v3    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
    .end local v4    # "cacheProcessor":Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
    .end local v6    # "comps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/GridComponent;>;"
    .end local v8    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "firstStop":Z
    .end local v12    # "interrupted":Z
    .end local v13    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/GridComponent;>;"
    .end local v14    # "state":Lorg/apache/ignite/internal/GridKernalState;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/GridLoggerProxy;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_17

    .line 1881
    invoke-interface {v10}, Lorg/apache/ignite/internal/GridKernalGateway;->getState()Lorg/apache/ignite/internal/GridKernalState;

    move-result-object v15

    sget-object v16, Lorg/apache/ignite/internal/GridKernalState;->STOPPED:Lorg/apache/ignite/internal/GridKernalState;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1b

    .line 1882
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    const-string v16, "Grid is already stopped. Nothing to do."

    invoke-virtual/range {v15 .. v16}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1884
    :cond_1b
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    const-string v16, "Grid is being stopped by another thread. Aborting this stop sequence allowing other thread to finish."

    invoke-virtual/range {v15 .. v16}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method private suggestOptimizations(Lorg/apache/ignite/configuration/IgniteConfiguration;)V
    .locals 3
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/IgniteConfiguration;

    .prologue
    .line 1076
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->performance()Lorg/apache/ignite/internal/GridPerformanceSuggestions;

    move-result-object v0

    .line 1078
    .local v0, "perf":Lorg/apache/ignite/internal/GridPerformanceSuggestions;
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->collision()Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1079
    const-string v1, "Disable collision resolution (remove \'collisionSpi\' from configuration)"

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->add(Ljava/lang/String;)V

    .line 1081
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->checkpoint()Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->enabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1082
    const-string v1, "Disable checkpoints (remove \'checkpointSpi\' from configuration)"

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->add(Ljava/lang/String;)V

    .line 1084
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1085
    const-string v1, "Disable peer class loading (set \'peerClassLoadingEnabled\' to false)"

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->add(Ljava/lang/String;)V

    .line 1087
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isMarshalLocalJobs()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1088
    const-string v1, "Disable local jobs marshalling (set \'marshalLocalJobs\' to false)"

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->add(Ljava/lang/String;)V

    .line 1090
    :cond_3
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIncludeEventTypes()[I

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIncludeEventTypes()[I

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_4

    .line 1091
    const-string v1, "Disable grid events (remove \'includeEventTypes\' from configuration)"

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->add(Ljava/lang/String;)V

    .line 1093
    :cond_4
    invoke-static {}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->available()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;

    if-nez v1, :cond_5

    .line 1094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enable optimized marshaller (set \'marshaller\' to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->add(Ljava/lang/String;)V

    .line 1096
    :cond_5
    return-void
.end method

.method private unguard()V
    .locals 1

    .prologue
    .line 2721
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2723
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    .line 2724
    return-void
.end method

.method private unregisterMBean(Ljavax/management/ObjectName;)Z
    .locals 5
    .param p1, "mbean"    # Ljavax/management/ObjectName;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 1357
    if-eqz p1, :cond_0

    .line 1359
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v2

    invoke-interface {v2, p1}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V

    .line 1361
    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridLoggerProxy;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1362
    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregistered MBean: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1372
    :cond_0
    :goto_0
    return v1

    .line 1366
    :catch_0
    move-exception v0

    .line 1367
    .local v0, "e":Ljavax/management/JMException;
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    const-string v2, "Failed to unregister MBean."

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1369
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private validateCommon(Lorg/apache/ignite/configuration/IgniteConfiguration;)V
    .locals 12
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/IgniteConfiguration;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1014
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v4

    const-string v7, "cfg.getNodeId()"

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v4

    const-string v7, "cfg.getMBeanServer()"

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridLogger()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    const-string v7, "cfg.getGridLogger()"

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v4

    const-string v7, "cfg.getMarshaller()"

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPublicThreadPoolSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "cfg.getPublicThreadPoolSize()"

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getUserAttributes()Ljava/util/Map;

    move-result-object v4

    const-string v7, "cfg.getUserAttributes()"

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSwapSpaceSpi()Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    move-result-object v4

    const-string v7, "cfg.getSwapSpaceSpi()"

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCheckpointSpi()[Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    move-result-object v4

    const-string v7, "cfg.getCheckpointSpi()"

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCommunicationSpi()Lorg/apache/ignite/spi/communication/CommunicationSpi;

    move-result-object v4

    const-string v7, "cfg.getCommunicationSpi()"

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentSpi()Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    move-result-object v4

    const-string v7, "cfg.getDeploymentSpi()"

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1027
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDiscoverySpi()Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    move-result-object v4

    const-string v7, "cfg.getDiscoverySpi()"

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getEventStorageSpi()Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;

    move-result-object v4

    const-string v7, "cfg.getEventStorageSpi()"

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1029
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCollisionSpi()Lorg/apache/ignite/spi/collision/CollisionSpi;

    move-result-object v4

    const-string v7, "cfg.getCollisionSpi()"

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getFailoverSpi()[Lorg/apache/ignite/spi/failover/FailoverSpi;

    move-result-object v4

    const-string v7, "cfg.getFailoverSpi()"

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLoadBalancingSpi()[Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;

    move-result-object v4

    const-string v7, "cfg.getLoadBalancingSpi()"

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIndexingSpi()Lorg/apache/ignite/spi/indexing/IndexingSpi;

    move-result-object v4

    const-string v7, "cfg.getIndexingSpi()"

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v8

    cmp-long v4, v8, v10

    if-lez v4, :cond_0

    move v4, v5

    :goto_0
    const-string v7, "cfg.getNetworkTimeout() > 0"

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 1035
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkSendRetryDelay()J

    move-result-wide v8

    cmp-long v4, v8, v10

    if-lez v4, :cond_1

    move v4, v5

    :goto_1
    const-string v7, "cfg.getNetworkSendRetryDelay() > 0"

    invoke-static {v4, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 1036
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkSendRetryCount()I

    move-result v4

    if-lez v4, :cond_2

    :goto_2
    const-string v4, "cfg.getNetworkSendRetryCount() > 0"

    invoke-static {v5, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 1038
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPluginConfigurations()[Lorg/apache/ignite/plugin/PluginConfiguration;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1039
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPluginConfigurations()[Lorg/apache/ignite/plugin/PluginConfiguration;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/ignite/plugin/PluginConfiguration;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 1040
    .local v3, "pluginCfg":Lorg/apache/ignite/plugin/PluginConfiguration;
    invoke-interface {v3}, Lorg/apache/ignite/plugin/PluginConfiguration;->providerClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "PluginConfiguration.providerClass()"

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1039
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "arr$":[Lorg/apache/ignite/plugin/PluginConfiguration;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pluginCfg":Lorg/apache/ignite/plugin/PluginConfiguration;
    :cond_0
    move v4, v6

    .line 1034
    goto :goto_0

    :cond_1
    move v4, v6

    .line 1035
    goto :goto_1

    :cond_2
    move v5, v6

    .line 1036
    goto :goto_2

    .line 1042
    :cond_3
    return-void
.end method


# virtual methods
.method public affinity(Ljava/lang/String;)Lorg/apache/ignite/cache/affinity/Affinity;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/cache/affinity/Affinity",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2579
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    .line 2581
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;*>;"
    if-eqz v0, :cond_0

    .line 2582
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->affinity()Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v1

    .line 2584
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->affinity()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->affinityProxy(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;

    move-result-object v1

    goto :goto_0
.end method

.method public allEventsUserRecordable([I)Z
    .locals 1
    .param p1, "types"    # [I

    .prologue
    .line 2212
    const-string/jumbo v0, "types"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2214
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2217
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isAllUserRecordable([I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2220
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v0
.end method

.method public atomicLong(Ljava/lang/String;JZ)Lorg/apache/ignite/IgniteAtomicLong;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initVal"    # J
    .param p4, "create"    # Z
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2604
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2607
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->dataStructures()Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->atomicLong(Ljava/lang/String;JZ)Lorg/apache/ignite/IgniteAtomicLong;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2613
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v1

    .line 2609
    :catch_0
    move-exception v0

    .line 2610
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2613
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v1
.end method

.method public atomicReference(Ljava/lang/String;Ljava/lang/Object;Z)Lorg/apache/ignite/IgniteAtomicReference;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;Z)",
            "Lorg/apache/ignite/IgniteAtomicReference",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2622
    .local p2, "initVal":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2625
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->dataStructures()Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->atomicReference(Ljava/lang/String;Ljava/lang/Object;Z)Lorg/apache/ignite/IgniteAtomicReference;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2631
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v1

    .line 2627
    :catch_0
    move-exception v0

    .line 2628
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2631
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v1
.end method

.method public atomicSequence(Ljava/lang/String;JZ)Lorg/apache/ignite/IgniteAtomicSequence;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initVal"    # J
    .param p4, "create"    # Z
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2589
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2592
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->dataStructures()Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->sequence(Ljava/lang/String;JZ)Lorg/apache/ignite/IgniteAtomicSequence;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2598
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v1

    .line 2594
    :catch_0
    move-exception v0

    .line 2595
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2598
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v1
.end method

.method public atomicStamped(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)Lorg/apache/ignite/IgniteAtomicStamped;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;TS;Z)",
            "Lorg/apache/ignite/IgniteAtomicStamped",
            "<TT;TS;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2641
    .local p2, "initVal":Ljava/lang/Object;, "TT;"
    .local p3, "initStamp":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2644
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->dataStructures()Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->atomicStamped(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)Lorg/apache/ignite/IgniteAtomicStamped;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2650
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v1

    .line 2646
    :catch_0
    move-exception v0

    .line 2647
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2650
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v1
.end method

.method public cache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
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
            ")",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2253
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2256
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->publicJCache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2259
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v0
.end method

.method public caches()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 2409
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2412
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->publicCaches()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2415
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v0
.end method

.method public cachesx([Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-",
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<**>;>;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 2458
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-Lorg/apache/ignite/internal/processors/cache/GridCache<**>;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2461
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/typedef/F;->retain(Ljava/util/Collection;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2464
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v0
.end method

.method public cachex()Lorg/apache/ignite/internal/processors/cache/GridCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2446
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2449
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cache()Lorg/apache/ignite/internal/processors/cache/GridCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2452
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v0
.end method

.method public cachex(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
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
            ")",
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2434
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2437
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2440
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 2574
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/ignite/Ignition;->stop(Ljava/lang/String;Z)Z

    .line 2575
    return-void
.end method

.method public bridge synthetic cluster()Lorg/apache/ignite/IgniteCluster;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/ignite/internal/IgniteKernal;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v0

    return-object v0
.end method

.method public cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cluster()Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;->get()Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    move-result-object v0

    return-object v0
.end method

.method public compatibleVersions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2569
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->compatibleVers:Ljava/util/Collection;

    return-object v0
.end method

.method public compute()Lorg/apache/ignite/IgniteCompute;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cluster()Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;->get()Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->compute()Lorg/apache/ignite/IgniteCompute;

    move-result-object v0

    return-object v0
.end method

.method public final compute(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/IgniteCompute;
    .locals 1
    .param p1, "grp"    # Lorg/apache/ignite/cluster/ClusterGroup;

    .prologue
    .line 262
    check-cast p1, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    .end local p1    # "grp":Lorg/apache/ignite/cluster/ClusterGroup;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->compute()Lorg/apache/ignite/IgniteCompute;

    move-result-object v0

    return-object v0
.end method

.method public configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;
    .locals 1

    .prologue
    .line 2130
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    return-object v0
.end method

.method public context()Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1

    .prologue
    .line 1921
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    return-object v0
.end method

.method public countDownLatch(Ljava/lang/String;IZZ)Lorg/apache/ignite/IgniteCountDownLatch;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cnt"    # I
    .param p3, "autoDel"    # Z
    .param p4, "create"    # Z
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2660
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2663
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->dataStructures()Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->countDownLatch(Ljava/lang/String;IZZ)Lorg/apache/ignite/IgniteCountDownLatch;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2669
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v1

    .line 2665
    :catch_0
    move-exception v0

    .line 2666
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2669
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v1
.end method

.method public createCache(Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/IgniteCache;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/configuration/CacheConfiguration",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2265
    .local p1, "cacheCfg":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    const-string v1, "cacheCfg"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2267
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2270
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, p1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->dynamicStartCache(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/String;Lorg/apache/ignite/configuration/NearCacheConfiguration;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 2272
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->publicJCache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2278
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v1

    .line 2274
    :catch_0
    move-exception v0

    .line 2275
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->convertToCacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2278
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v1
.end method

.method public createCache(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/configuration/NearCacheConfiguration;)Lorg/apache/ignite/IgniteCache;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/configuration/CacheConfiguration",
            "<TK;TV;>;",
            "Lorg/apache/ignite/configuration/NearCacheConfiguration",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2306
    .local p1, "cacheCfg":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    .local p2, "nearCfg":Lorg/apache/ignite/configuration/NearCacheConfiguration;, "Lorg/apache/ignite/configuration/NearCacheConfiguration<TK;TV;>;"
    const-string v1, "cacheCfg"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2307
    const-string v1, "nearCfg"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2309
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2312
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, p2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->dynamicStartCache(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/String;Lorg/apache/ignite/configuration/NearCacheConfiguration;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 2314
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->publicJCache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2320
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v1

    .line 2316
    :catch_0
    move-exception v0

    .line 2317
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->convertToCacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2320
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v1
.end method

.method public createNearCache(Ljava/lang/String;Lorg/apache/ignite/configuration/NearCacheConfiguration;)Lorg/apache/ignite/IgniteCache;
    .locals 4
    .param p1, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/configuration/NearCacheConfiguration",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2347
    .local p2, "nearCfg":Lorg/apache/ignite/configuration/NearCacheConfiguration;, "Lorg/apache/ignite/configuration/NearCacheConfiguration<TK;TV;>;"
    const-string v1, "nearCfg"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2349
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2352
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, p2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->dynamicStartCache(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/String;Lorg/apache/ignite/configuration/NearCacheConfiguration;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 2354
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->publicJCache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2360
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v1

    .line 2356
    :catch_0
    move-exception v0

    .line 2357
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->convertToCacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2360
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v1
.end method

.method public dataStreamer(Ljava/lang/String;)Lorg/apache/ignite/IgniteDataStreamer;
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
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
            ")",
            "Lorg/apache/ignite/IgniteDataStreamer",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2470
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2473
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->dataStream()Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->dataStreamer(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2476
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v0
.end method

.method public destroyCache(Ljava/lang/String;)V
    .locals 3
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 2386
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2391
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->dynamicStopCache(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2394
    .local v1, "stopFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    .line 2398
    :try_start_1
    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2403
    return-void

    .line 2394
    .end local v1    # "stopFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v2

    .line 2400
    .restart local v1    # "stopFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :catch_0
    move-exception v0

    .line 2401
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->convertToCacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public eventUserRecordable(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2200
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2203
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isUserRecordable(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2206
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v0
.end method

.method public events()Lorg/apache/ignite/IgniteEvents;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cluster()Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;->get()Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->events()Lorg/apache/ignite/IgniteEvents;

    move-result-object v0

    return-object v0
.end method

.method public final events(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/IgniteEvents;
    .locals 1
    .param p1, "grp"    # Lorg/apache/ignite/cluster/ClusterGroup;

    .prologue
    .line 272
    check-cast p1, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    .end local p1    # "grp":Lorg/apache/ignite/cluster/ClusterGroup;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->events()Lorg/apache/ignite/IgniteEvents;

    move-result-object v0

    return-object v0
.end method

.method public executeTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "taskName"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/JMException;
        }
    .end annotation

    .prologue
    .line 2175
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/IgniteKernal;->compute()Lorg/apache/ignite/IgniteCompute;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/IgniteCompute;->execute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2177
    :catch_0
    move-exception v0

    .line 2178
    .local v0, "e":Lorg/apache/ignite/IgniteException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->jmException(Ljava/lang/Throwable;)Ljavax/management/JMException;

    move-result-object v1

    throw v1
.end method

.method public executorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cluster()Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;->get()Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public executorService(Lorg/apache/ignite/cluster/ClusterGroup;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p1, "grp"    # Lorg/apache/ignite/cluster/ClusterGroup;

    .prologue
    .line 282
    check-cast p1, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    .end local p1    # "grp":Lorg/apache/ignite/cluster/ClusterGroup;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public fileSystem(Ljava/lang/String;)Lorg/apache/ignite/IgniteFileSystem;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2482
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2485
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->igfs()Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;->igfs(Ljava/lang/String;)Lorg/apache/ignite/IgniteFileSystem;

    move-result-object v0

    .line 2487
    .local v0, "fs":Lorg/apache/ignite/IgniteFileSystem;
    if-nez v0, :cond_0

    .line 2488
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IGFS is not configured: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2493
    .end local v0    # "fs":Lorg/apache/ignite/IgniteFileSystem;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v1

    .restart local v0    # "fs":Lorg/apache/ignite/IgniteFileSystem;
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v0
.end method

.method public fileSystems()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/IgniteFileSystem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2511
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2514
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->igfs()Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;->igfss()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2517
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v0
.end method

.method public getCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
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
            ")",
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2241
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2244
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->publicCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2247
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v0
.end method

.method public getCheckpointSpiFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 324
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCheckpointSpi()[Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCollisionSpiFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 366
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCollisionSpi()Lorg/apache/ignite/spi/collision/CollisionSpi;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommunicationSpiFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 338
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCommunicationSpi()Lorg/apache/ignite/spi/communication/CommunicationSpi;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    const-string v0, "2015 Copyright(C) Apache Software Foundation"

    return-object v0
.end method

.method public getDeploymentSpiFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 345
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentSpi()Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiscoverySpiFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 352
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDiscoverySpi()Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventStorageSpiFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 359
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getEventStorageSpi()Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExecutorServiceFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 417
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPublicThreadPoolSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFailoverSpiFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 373
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getFailoverSpi()[Lorg/apache/ignite/spi/failover/FailoverSpi;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/ignite/internal/IgniteVersionUtils;->VER_STR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/IgniteVersionUtils;->BUILD_TSTAMP_STR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGridLoggerFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 431
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridLogger()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIgniteHome()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 424
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIgniteHome()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    return-object v0
.end method

.method public getJdkInformation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->jdkString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycleBeansFormatted()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLifecycleBeans()[Lorg/apache/ignite/lifecycle/LifecycleBean;

    move-result-object v0

    .line 472
    .local v0, "beans":[Lorg/apache/ignite/lifecycle/LifecycleBean;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->string()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->transform([Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0
.end method

.method public getLoadBalancingSpiFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 380
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLoadBalancingSpi()[Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 443
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 445
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getMBeanServerFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 438
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateCache(Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/IgniteCache;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/configuration/CacheConfiguration",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2284
    .local p1, "cacheCfg":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    const-string v1, "cacheCfg"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2286
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2289
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->dynamicStartCache(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/String;Lorg/apache/ignite/configuration/NearCacheConfiguration;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 2291
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->publicJCache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2297
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v1

    .line 2293
    :catch_0
    move-exception v0

    .line 2294
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->convertToCacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2297
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v1
.end method

.method public getOrCreateCache(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/configuration/NearCacheConfiguration;)Lorg/apache/ignite/IgniteCache;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/configuration/CacheConfiguration",
            "<TK;TV;>;",
            "Lorg/apache/ignite/configuration/NearCacheConfiguration",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2327
    .local p1, "cacheCfg":Lorg/apache/ignite/configuration/CacheConfiguration;, "Lorg/apache/ignite/configuration/CacheConfiguration<TK;TV;>;"
    .local p2, "nearCfg":Lorg/apache/ignite/configuration/NearCacheConfiguration;, "Lorg/apache/ignite/configuration/NearCacheConfiguration<TK;TV;>;"
    const-string v1, "cacheCfg"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2328
    const-string v1, "nearCfg"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2330
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2333
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, p2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->dynamicStartCache(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/String;Lorg/apache/ignite/configuration/NearCacheConfiguration;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 2335
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->publicJCache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2341
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v1

    .line 2337
    :catch_0
    move-exception v0

    .line 2338
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->convertToCacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2341
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v1
.end method

.method public getOrCreateNearCache(Ljava/lang/String;Lorg/apache/ignite/configuration/NearCacheConfiguration;)Lorg/apache/ignite/IgniteCache;
    .locals 4
    .param p1, "cacheName"    # Ljava/lang/String;
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
            "Lorg/apache/ignite/configuration/NearCacheConfiguration",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2367
    .local p2, "nearCfg":Lorg/apache/ignite/configuration/NearCacheConfiguration;, "Lorg/apache/ignite/configuration/NearCacheConfiguration<TK;TV;>;"
    const-string v1, "nearCfg"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2369
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2372
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, p2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->dynamicStartCache(Lorg/apache/ignite/configuration/CacheConfiguration;Ljava/lang/String;Lorg/apache/ignite/configuration/NearCacheConfiguration;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 2374
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->publicJCache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2380
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v1

    .line 2376
    :catch_0
    move-exception v0

    .line 2377
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->convertToCacheException(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2380
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v1
.end method

.method public getOsInformation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->osString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    const-string/jumbo v0, "user.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartTimestamp()J
    .locals 2

    .prologue
    .line 297
    iget-wide v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->startTime:J

    return-wide v0
.end method

.method public getStartTimestampFormatted()Ljava/lang/String;
    .locals 4

    .prologue
    .line 302
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->startTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwapSpaceSpiFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 331
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSwapSpaceSpi()Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpTime()J
    .locals 4

    .prologue
    .line 307
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getUpTimeFormatted()Ljava/lang/String;
    .locals 4

    .prologue
    .line 312
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->startTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->timeSpan2HMSM(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAttributesFormatted()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 453
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getUserAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/IgniteKernal$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/IgniteKernal$1;-><init>(Lorg/apache/ignite/internal/IgniteKernal;)V

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->transform(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getVmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/RuntimeMXBean;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hadoop()Lorg/apache/ignite/internal/processors/hadoop/Hadoop;
    .locals 1

    .prologue
    .line 2523
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2526
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->hadoop()Lorg/apache/ignite/internal/processors/hadoop/HadoopProcessorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/hadoop/HadoopProcessorAdapter;->hadoop()Lorg/apache/ignite/internal/processors/hadoop/Hadoop;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2529
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v0
.end method

.method public igfsx(Ljava/lang/String;)Lorg/apache/ignite/IgniteFileSystem;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2499
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2502
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->igfs()Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;->igfs(Ljava/lang/String;)Lorg/apache/ignite/IgniteFileSystem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2505
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v0
.end method

.method public internalCache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1899
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/IgniteKernal;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    return-object v0
.end method

.method public internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
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
            ")",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1912
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    return-object v0
.end method

.method public isJmxRemoteEnabled()Z
    .locals 1

    .prologue
    .line 1987
    const-string v0, "com.sun.management.jmxremote"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPeerClassLoadingEnabled()Z
    .locals 1

    .prologue
    .line 463
    sget-boolean v0, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 465
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v0

    return v0
.end method

.method public isRestartEnabled()Z
    .locals 1

    .prologue
    .line 1999
    const-string v0, "IGNITE_SUCCESS_FILE"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public latestVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2552
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 2555
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->verChecker:Lorg/apache/ignite/internal/GridUpdateNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->verChecker:Lorg/apache/ignite/internal/GridUpdateNotifier;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridUpdateNotifier;->latestVersion()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2558
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return-object v0

    .line 2555
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2558
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v0
.end method

.method public localNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cluster()Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;->get()Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public log()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 2135
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    return-object v0
.end method

.method public message()Lorg/apache/ignite/IgniteMessaging;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cluster()Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;->get()Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->message()Lorg/apache/ignite/IgniteMessaging;

    move-result-object v0

    return-object v0
.end method

.method public final message(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/IgniteMessaging;
    .locals 1
    .param p1, "prj"    # Lorg/apache/ignite/cluster/ClusterGroup;

    .prologue
    .line 267
    check-cast p1, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    .end local p1    # "prj":Lorg/apache/ignite/cluster/ClusterGroup;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->message()Lorg/apache/ignite/IgniteMessaging;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    return-object v0
.end method

.method public pingNode(Ljava/lang/String;)Z
    .locals 2
    .param p1, "nodeId"    # Ljava/lang/String;

    .prologue
    .line 2154
    const-string v0, "nodeId"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2156
    invoke-virtual {p0}, Lorg/apache/ignite/internal/IgniteKernal;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v0

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->pingNode(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public pingNodeByAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 2184
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2187
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/IgniteKernal;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->nodes()Ljava/util/Collection;

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

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 2188
    .local v1, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->addresses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2189
    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridKernalContextImpl;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->pingNode(Ljava/util/UUID;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2194
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    .end local v1    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :goto_0
    return v2

    .line 2191
    :cond_1
    const/4 v2, 0x0

    .line 2194
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v2
.end method

.method public plugin(Ljava/lang/String;)Lorg/apache/ignite/plugin/IgnitePlugin;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/plugin/IgnitePlugin;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/plugin/PluginNotFoundException;
        }
    .end annotation

    .prologue
    .line 2535
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2538
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->pluginProvider(Ljava/lang/String;)Lorg/apache/ignite/plugin/PluginProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/plugin/PluginProvider;->plugin()Lorg/apache/ignite/plugin/IgnitePlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2541
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v0
.end method

.method public printLastErrors()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->exceptionRegistry()Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->printErrors(Lorg/apache/ignite/IgniteLogger;)V

    .line 401
    return-void
.end method

.method public queue(Ljava/lang/String;ILorg/apache/ignite/configuration/CollectionConfiguration;)Lorg/apache/ignite/IgniteQueue;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cap"    # I
    .param p3, "cfg"    # Lorg/apache/ignite/configuration/CollectionConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Lorg/apache/ignite/configuration/CollectionConfiguration;",
            ")",
            "Lorg/apache/ignite/IgniteQueue",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2678
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2681
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->dataStructures()Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->queue(Ljava/lang/String;ILorg/apache/ignite/configuration/CollectionConfiguration;)Lorg/apache/ignite/IgniteQueue;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2687
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v1

    .line 2683
    :catch_0
    move-exception v0

    .line 2684
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2687
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v1
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
    .line 2790
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    .line 2791
    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 2805
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/ignite/internal/IgnitionEx;->gridx(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteKernal;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2807
    :catch_0
    move-exception v0

    .line 2808
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/io/InvalidObjectException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->withCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/InvalidObjectException;

    throw v1
.end method

.method public removeCheckpoint(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2140
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2142
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2145
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->checkpoint()Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->removeCheckpoint(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2148
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v0
.end method

.method public scheduler()Lorg/apache/ignite/IgniteScheduler;
    .locals 1

    .prologue
    .line 2564
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->scheduler:Lorg/apache/ignite/IgniteScheduler;

    return-object v0
.end method

.method public services()Lorg/apache/ignite/IgniteServices;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cluster()Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;->get()Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->services()Lorg/apache/ignite/IgniteServices;

    move-result-object v0

    return-object v0
.end method

.method public services(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/IgniteServices;
    .locals 1
    .param p1, "grp"    # Lorg/apache/ignite/cluster/ClusterGroup;

    .prologue
    .line 277
    check-cast p1, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    .end local p1    # "grp":Lorg/apache/ignite/cluster/ClusterGroup;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->services()Lorg/apache/ignite/IgniteServices;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Lorg/apache/ignite/configuration/CollectionConfiguration;)Lorg/apache/ignite/IgniteSet;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cfg"    # Lorg/apache/ignite/configuration/CollectionConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/configuration/CollectionConfiguration;",
            ")",
            "Lorg/apache/ignite/IgniteSet",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2695
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2698
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/GridKernalContextImpl;->dataStructures()Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->set(Ljava/lang/String;Lorg/apache/ignite/configuration/CollectionConfiguration;)Lorg/apache/ignite/IgniteSet;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2704
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v1

    .line 2700
    :catch_0
    move-exception v0

    .line 2701
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2704
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v1
.end method

.method public start(Lorg/apache/ignite/configuration/IgniteConfiguration;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lorg/apache/ignite/internal/util/lang/GridAbsClosure;)V
    .locals 36
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/IgniteConfiguration;
    .param p2, "utilityCachePool"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "marshCachePool"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "execSvc"    # Ljava/util/concurrent/ExecutorService;
    .param p5, "sysExecSvc"    # Ljava/util/concurrent/ExecutorService;
    .param p6, "p2pExecSvc"    # Ljava/util/concurrent/ExecutorService;
    .param p7, "mgmtExecSvc"    # Ljava/util/concurrent/ExecutorService;
    .param p8, "igfsExecSvc"    # Ljava/util/concurrent/ExecutorService;
    .param p9, "restExecSvc"    # Ljava/util/concurrent/ExecutorService;
    .param p10, "errHnd"    # Lorg/apache/ignite/internal/util/lang/GridAbsClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 557
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->gw:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    new-instance v6, Lorg/apache/ignite/internal/GridKernalGatewayImpl;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/GridKernalGatewayImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 559
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->gw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/GridKernalGateway;

    .line 561
    .local v8, "gw":Lorg/apache/ignite/internal/GridKernalGateway;
    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalGateway;->writeLock()V

    .line 564
    :try_start_0
    sget-object v4, Lorg/apache/ignite/internal/IgniteKernal$5;->$SwitchMap$org$apache$ignite$internal$GridKernalState:[I

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalGateway;->getState()Lorg/apache/ignite/internal/GridKernalState;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/GridKernalState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 586
    sget-object v4, Lorg/apache/ignite/internal/GridKernalState;->STARTING:Lorg/apache/ignite/internal/GridKernalState;

    invoke-interface {v8, v4}, Lorg/apache/ignite/internal/GridKernalGateway;->setState(Lorg/apache/ignite/internal/GridKernalState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalGateway;->writeUnlock()V

    .line 592
    sget-boolean v4, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 566
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    const-string v5, "Grid has already been started (ignored)."

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalGateway;->writeUnlock()V

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 572
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    const-string v5, "Grid is already in process of being started (ignored)."

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 589
    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalGateway;->writeUnlock()V

    goto :goto_0

    .line 578
    :pswitch_2
    :try_start_3
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    const-string v5, "Grid is in process of being stopped"

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 589
    :catchall_0
    move-exception v4

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalGateway;->writeUnlock()V

    throw v4

    .line 595
    :cond_1
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/IgniteKernal;->validateCommon(Lorg/apache/ignite/configuration/IgniteConfiguration;)V

    .line 597
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    .line 599
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/IgniteKernal;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    .line 601
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridLogger()Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x25

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/GridLoggerProxy;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    .line 604
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v32

    .line 607
    .local v32, "rtBean":Ljava/lang/management/RuntimeMXBean;
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->ackAsciiLogo()V

    .line 608
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->ackConfigUrl()V

    .line 609
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->ackDaemon()V

    .line 610
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->ackOsInfo()V

    .line 611
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->ackLanguageRuntime()V

    .line 612
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->ackRemoteManagement()V

    .line 613
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->ackVmArguments(Ljava/lang/management/RuntimeMXBean;)V

    .line 614
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->ackClassPaths(Ljava/lang/management/RuntimeMXBean;)V

    .line 615
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->ackSystemProperties()V

    .line 616
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->ackEnvironmentVariables()V

    .line 617
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->ackCacheConfiguration()V

    .line 618
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->ackP2pConfiguration()V

    .line 621
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    move-object/from16 v0, p4

    invoke-static {v4, v0, v5}, Lorg/apache/ignite/internal/GridDiagnostic;->runBackgroundCheck(Ljava/lang/String;Ljava/util/concurrent/Executor;Lorg/apache/ignite/IgniteLogger;)V

    .line 623
    const-string v4, "IGNITE_UPDATE_NOTIFIER"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/apache/ignite/IgniteSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    .line 625
    .local v29, "notifyEnabled":Z
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->verChecker:Lorg/apache/ignite/internal/GridUpdateNotifier;

    .line 627
    if-eqz v29, :cond_2

    .line 629
    :try_start_4
    new-instance v4, Lorg/apache/ignite/internal/GridUpdateNotifier;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    sget-object v6, Lorg/apache/ignite/internal/IgniteVersionUtils;->VER_STR:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v8, v7}, Lorg/apache/ignite/internal/GridUpdateNotifier;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/GridKernalGateway;Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->verChecker:Lorg/apache/ignite/internal/GridUpdateNotifier;

    .line 631
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->verChecker:Lorg/apache/ignite/internal/GridUpdateNotifier;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v5}, Lorg/apache/ignite/internal/GridUpdateNotifier;->checkForNewVersion(Ljava/util/concurrent/Executor;Lorg/apache/ignite/IgniteLogger;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 639
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal;->verChecker:Lorg/apache/ignite/internal/GridUpdateNotifier;

    move-object/from16 v35, v0

    .line 642
    .local v35, "verChecker0":Lorg/apache/ignite/internal/GridUpdateNotifier;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/GridLoggerProxy;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIgniteHome()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 643
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "3-rd party licenses can be found at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIgniteHome()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "libs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "licenses"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/GridLoggerProxy;->info(Ljava/lang/String;)V

    .line 648
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getUserAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 649
    .local v28, "name":Ljava/lang/String;
    const-string v4, "org.apache.ignite"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 650
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User attribute has illegal name: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'. Note that all names "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "starting with \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "org.apache.ignite"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' are reserved for internal use."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 601
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v28    # "name":Ljava/lang/String;
    .end local v29    # "notifyEnabled":Z
    .end local v32    # "rtBean":Ljava/lang/management/RuntimeMXBean;
    .end local v35    # "verChecker0":Lorg/apache/ignite/internal/GridUpdateNotifier;
    :cond_5
    const-string v4, ""

    goto/16 :goto_1

    .line 633
    .restart local v29    # "notifyEnabled":Z
    .restart local v32    # "rtBean":Ljava/lang/management/RuntimeMXBean;
    :catch_0
    move-exception v24

    .line 634
    .local v24, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/GridLoggerProxy;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 635
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create GridUpdateNotifier: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 654
    .end local v24    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v25    # "i$":Ljava/util/Iterator;
    .restart local v35    # "verChecker0":Lorg/apache/ignite/internal/GridUpdateNotifier;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->logNodeUserAttributes()V

    .line 657
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->ackSpis()V

    .line 661
    :try_start_5
    new-instance v4, Lorg/apache/ignite/internal/GridKernalContextImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    invoke-direct/range {v4 .. v16}, Lorg/apache/ignite/internal/GridKernalContextImpl;-><init>(Lorg/apache/ignite/internal/GridLoggerProxy;Lorg/apache/ignite/internal/IgniteEx;Lorg/apache/ignite/configuration/IgniteConfiguration;Lorg/apache/ignite/internal/GridKernalGateway;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    .line 674
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/GridKernalContextImpl;->marshallerContext()Lorg/apache/ignite/internal/MarshallerContextImpl;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/marshaller/Marshaller;->setContext(Lorg/apache/ignite/marshaller/MarshallerContext;)V

    .line 676
    new-instance v4, Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 678
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->fillNodeAttributes()V

    .line 680
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->onGridStart()V

    .line 684
    new-instance v31, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 686
    .local v31, "rsrcProc":Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->rsrcCtx:Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->setSpringContext(Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;)V

    .line 688
    new-instance v4, Lorg/apache/ignite/internal/IgniteSchedulerImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/IgniteSchedulerImpl;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->scheduler:Lorg/apache/ignite/IgniteScheduler;

    .line 690
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 693
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLifecycleBeans()[Lorg/apache/ignite/lifecycle/LifecycleBean;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 694
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLifecycleBeans()[Lorg/apache/ignite/lifecycle/LifecycleBean;

    move-result-object v20

    .local v20, "arr$":[Lorg/apache/ignite/lifecycle/LifecycleBean;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    .local v27, "len$":I
    const/16 v25, 0x0

    .local v25, "i$":I
    :goto_3
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    aget-object v21, v20, v25

    .line 695
    .local v21, "bean":Lorg/apache/ignite/lifecycle/LifecycleBean;
    if-eqz v21, :cond_7

    .line 696
    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->inject(Lorg/apache/ignite/lifecycle/LifecycleBean;)V

    .line 694
    :cond_7
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 701
    .end local v20    # "arr$":[Lorg/apache/ignite/lifecycle/LifecycleBean;
    .end local v21    # "bean":Lorg/apache/ignite/lifecycle/LifecycleBean;
    .end local v25    # "i$":I
    .end local v27    # "len$":I
    :cond_8
    sget-object v4, Lorg/apache/ignite/lifecycle/LifecycleEventType;->BEFORE_NODE_START:Lorg/apache/ignite/lifecycle/LifecycleEventType;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->notifyLifecycleBeans(Lorg/apache/ignite/lifecycle/LifecycleEventType;)V

    .line 704
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/IgniteKernal;->lifecycleAwares(Lorg/apache/ignite/configuration/IgniteConfiguration;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->startLifecycleAware(Ljava/lang/Iterable;)V

    .line 706
    sget-object v4, Lorg/apache/ignite/internal/IgniteComponentType;->IGFS_HELPER:Lorg/apache/ignite/internal/IgniteComponentType;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getFileSystemConfiguration()[Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/IgniteComponentType;->create(Z)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->addHelper(Ljava/lang/Object;)V

    .line 708
    new-instance v4, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0}, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/configuration/IgniteConfiguration;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 711
    new-instance v4, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 715
    new-instance v4, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 718
    new-instance v4, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 719
    new-instance v4, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 723
    new-instance v4, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 726
    const-class v4, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/IgniteKernal;->createComponent(Ljava/lang/Class;Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/GridComponent;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/GridProcessor;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 730
    new-instance v4, Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startManager(Lorg/apache/ignite/internal/managers/GridManager;)V

    .line 731
    new-instance v4, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startManager(Lorg/apache/ignite/internal/managers/GridManager;)V

    .line 733
    new-instance v4, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startManager(Lorg/apache/ignite/internal/managers/GridManager;)V

    .line 734
    new-instance v4, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startManager(Lorg/apache/ignite/internal/managers/GridManager;)V

    .line 735
    new-instance v4, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startManager(Lorg/apache/ignite/internal/managers/GridManager;)V

    .line 736
    new-instance v4, Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startManager(Lorg/apache/ignite/internal/managers/GridManager;)V

    .line 737
    new-instance v4, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startManager(Lorg/apache/ignite/internal/managers/GridManager;)V

    .line 738
    new-instance v4, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startManager(Lorg/apache/ignite/internal/managers/GridManager;)V

    .line 739
    new-instance v4, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startManager(Lorg/apache/ignite/internal/managers/GridManager;)V

    .line 741
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->ackSecurity()V

    .line 745
    new-instance v23, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 747
    .local v23, "discoMgr":Lorg/apache/ignite/internal/managers/GridManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v5}, Lorg/apache/ignite/internal/GridKernalContextImpl;->add(Lorg/apache/ignite/internal/GridComponent;Z)V

    .line 751
    new-instance v4, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 752
    new-instance v4, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 753
    const-class v4, Lorg/apache/ignite/internal/processors/segmentation/GridSegmentationProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/IgniteKernal;->createComponent(Ljava/lang/Class;Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/GridComponent;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/GridProcessor;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 754
    const-class v4, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/IgniteKernal;->createComponent(Ljava/lang/Class;Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/GridComponent;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/GridProcessor;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 755
    new-instance v4, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 756
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 757
    new-instance v4, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 758
    new-instance v4, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 759
    new-instance v4, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 760
    sget-object v4, Lorg/apache/ignite/internal/IgniteComponentType;->SCHEDULE:Lorg/apache/ignite/internal/IgniteComponentType;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/IgniteComponentType;->createOptional(Lorg/apache/ignite/internal/GridKernalContext;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/GridProcessor;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 761
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 762
    new-instance v4, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 763
    sget-object v4, Lorg/apache/ignite/internal/IgniteComponentType;->IGFS:Lorg/apache/ignite/internal/IgniteComponentType;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getFileSystemConfiguration()[Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/IgniteComponentType;->create(Lorg/apache/ignite/internal/GridKernalContext;Z)Lorg/apache/ignite/internal/GridComponent;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/GridProcessor;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 764
    new-instance v4, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 765
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lorg/apache/ignite/internal/IgniteComponentType;->HADOOP:Lorg/apache/ignite/internal/IgniteComponentType;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/IgniteComponentType;->create(Lorg/apache/ignite/internal/GridKernalContext;Z)Lorg/apache/ignite/internal/GridComponent;

    move-result-object v4

    :goto_4
    check-cast v4, Lorg/apache/ignite/internal/processors/GridProcessor;

    check-cast v4, Lorg/apache/ignite/internal/processors/GridProcessor;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 768
    new-instance v4, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 769
    new-instance v4, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->startProcessor(Lorg/apache/ignite/internal/processors/GridProcessor;)V

    .line 772
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/GridKernalContextImpl;->plugins()Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->allProviders()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/ignite/plugin/PluginProvider;

    .line 773
    .local v30, "provider":Lorg/apache/ignite/plugin/PluginProvider;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    new-instance v5, Lorg/apache/ignite/internal/GridPluginComponent;

    move-object/from16 v0, v30

    invoke-direct {v5, v0}, Lorg/apache/ignite/internal/GridPluginComponent;-><init>(Lorg/apache/ignite/plugin/PluginProvider;)V

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/GridKernalContextImpl;->add(Lorg/apache/ignite/internal/GridComponent;)V

    .line 775
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/GridKernalContextImpl;->plugins()Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->pluginContextForProvider(Lorg/apache/ignite/plugin/PluginProvider;)Lorg/apache/ignite/plugin/PluginContext;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Lorg/apache/ignite/plugin/PluginProvider;->start(Lorg/apache/ignite/plugin/PluginContext;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    .line 824
    .end local v23    # "discoMgr":Lorg/apache/ignite/internal/managers/GridManager;
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v30    # "provider":Lorg/apache/ignite/plugin/PluginProvider;
    .end local v31    # "rsrcProc":Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;
    :catch_1
    move-exception v24

    .line 825
    .local v24, "e":Ljava/lang/Throwable;
    const-class v4, Lorg/apache/ignite/spi/IgniteSpiVersionCheckException;

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/typedef/X;->cause(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v34

    check-cast v34, Lorg/apache/ignite/spi/IgniteSpiVersionCheckException;

    .line 827
    .local v34, "verCheckErr":Lorg/apache/ignite/spi/IgniteSpiVersionCheckException;
    if-eqz v34, :cond_f

    .line 828
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    invoke-virtual/range {v34 .. v34}, Lorg/apache/ignite/spi/IgniteSpiVersionCheckException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 834
    :goto_6
    invoke-virtual/range {p10 .. p10}, Lorg/apache/ignite/internal/util/lang/GridAbsClosure;->apply()V

    .line 836
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->stop(Z)V

    .line 838
    move-object/from16 v0, v24

    instance-of v4, v0, Lorg/apache/ignite/IgniteCheckedException;

    if-eqz v4, :cond_11

    .line 839
    check-cast v24, Lorg/apache/ignite/IgniteCheckedException;

    .end local v24    # "e":Ljava/lang/Throwable;
    throw v24

    .line 765
    .end local v34    # "verCheckErr":Lorg/apache/ignite/spi/IgniteSpiVersionCheckException;
    .restart local v23    # "discoMgr":Lorg/apache/ignite/internal/managers/GridManager;
    .restart local v31    # "rsrcProc":Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;
    :cond_9
    :try_start_6
    sget-object v5, Lorg/apache/ignite/internal/IgniteComponentType;->HADOOP:Lorg/apache/ignite/internal/IgniteComponentType;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getHadoopConfiguration()Lorg/apache/ignite/configuration/HadoopConfiguration;

    move-result-object v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    :goto_7
    invoke-virtual {v5, v6, v4}, Lorg/apache/ignite/internal/IgniteComponentType;->createIfInClassPath(Lorg/apache/ignite/internal/GridKernalContext;Z)Lorg/apache/ignite/internal/GridComponent;

    move-result-object v4

    goto/16 :goto_4

    :cond_a
    const/4 v4, 0x0

    goto :goto_7

    .line 778
    .restart local v25    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalGateway;->writeLock()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 781
    :try_start_7
    sget-object v4, Lorg/apache/ignite/internal/GridKernalState;->STARTED:Lorg/apache/ignite/internal/GridKernalState;

    invoke-interface {v8, v4}, Lorg/apache/ignite/internal/GridKernalGateway;->setState(Lorg/apache/ignite/internal/GridKernalState;)V

    .line 784
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->startManager(Lorg/apache/ignite/internal/managers/GridManager;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 787
    :try_start_8
    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalGateway;->writeUnlock()V

    .line 791
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->checkPhysicalRam()V

    .line 794
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/IgniteKernal;->suggestOptimizations(Lorg/apache/ignite/configuration/IgniteConfiguration;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/GridKernalContextImpl;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->onKernalStart()V

    .line 800
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/GridKernalContextImpl;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->onKernalStart()V

    .line 803
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/GridKernalContextImpl;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_c
    :goto_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/ignite/internal/GridComponent;

    .line 805
    .local v22, "comp":Lorg/apache/ignite/internal/GridComponent;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    if-nez v4, :cond_c

    .line 809
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    if-nez v4, :cond_c

    .line 812
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->skipDaemon(Lorg/apache/ignite/internal/GridComponent;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 813
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/internal/GridComponent;->onKernalStart()V

    goto :goto_8

    .line 787
    .end local v22    # "comp":Lorg/apache/ignite/internal/GridComponent;
    :catchall_1
    move-exception v4

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalGateway;->writeUnlock()V

    throw v4

    .line 817
    :cond_d
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->registerKernalMBean()V

    .line 818
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->registerLocalNodeMBean()V

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p9

    .line 819
    invoke-direct/range {v9 .. v14}, Lorg/apache/ignite/internal/IgniteKernal;->registerExecutorMBeans(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    .line 822
    sget-object v4, Lorg/apache/ignite/lifecycle/LifecycleEventType;->AFTER_NODE_START:Lorg/apache/ignite/lifecycle/LifecycleEventType;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/IgniteKernal;->notifyLifecycleBeans(Lorg/apache/ignite/lifecycle/LifecycleEventType;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 845
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->startTime:J

    .line 848
    if-eqz v35, :cond_e

    .line 849
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/GridUpdateNotifier;->reportStatus(Lorg/apache/ignite/IgniteLogger;)V

    .line 851
    :cond_e
    if-eqz v29, :cond_13

    .line 852
    sget-boolean v4, Lorg/apache/ignite/internal/IgniteKernal;->$assertionsDisabled:Z

    if-nez v4, :cond_12

    if-nez v35, :cond_12

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 829
    .end local v23    # "discoMgr":Lorg/apache/ignite/internal/managers/GridManager;
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v31    # "rsrcProc":Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;
    .restart local v24    # "e":Ljava/lang/Throwable;
    .restart local v34    # "verCheckErr":Lorg/apache/ignite/spi/IgniteSpiVersionCheckException;
    :cond_f
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/InterruptedException;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    aput-object v6, v4, v5

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 830
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    const-string v5, "Grid startup routine has been interrupted (will rollback)."

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 832
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    const-string v5, "Got exception while starting (will rollback startup routine)."

    move-object/from16 v0, v24

    invoke-static {v4, v5, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 841
    :cond_11
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 854
    .end local v24    # "e":Ljava/lang/Throwable;
    .end local v34    # "verCheckErr":Lorg/apache/ignite/spi/IgniteSpiVersionCheckException;
    .restart local v23    # "discoMgr":Lorg/apache/ignite/internal/managers/GridManager;
    .restart local v25    # "i$":Ljava/util/Iterator;
    .restart local v31    # "rsrcProc":Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;
    :cond_12
    const/4 v4, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/GridUpdateNotifier;->reportOnlyNew(Z)V

    .line 856
    new-instance v4, Ljava/util/Timer;

    const-string v5, "ignite-update-notifier-timer"

    invoke-direct {v4, v5}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->updateNtfTimer:Ljava/util/Timer;

    .line 859
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/IgniteKernal;->updateNtfTimer:Ljava/util/Timer;

    new-instance v11, Lorg/apache/ignite/internal/IgniteKernal$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, p4

    invoke-direct {v11, v0, v1, v2}, Lorg/apache/ignite/internal/IgniteKernal$2;-><init>(Lorg/apache/ignite/internal/IgniteKernal;Lorg/apache/ignite/internal/GridUpdateNotifier;Ljava/util/concurrent/ExecutorService;)V

    const-wide/32 v12, 0x36ee80

    const-wide/32 v14, 0x36ee80

    invoke-virtual/range {v10 .. v15}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 875
    :cond_13
    const-string v4, "IGNITE_STARVATION_CHECK_INTERVAL"

    invoke-static {v4}, Lorg/apache/ignite/IgniteSystemProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 878
    .local v26, "intervalStr":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->isDaemon()Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, "0"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    const/16 v33, 0x1

    .line 880
    .local v33, "starveCheck":Z
    :goto_9
    if-eqz v33, :cond_14

    .line 881
    invoke-static/range {v26 .. v26}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-wide/16 v12, 0x7530

    .line 883
    .local v12, "interval":J
    :goto_a
    new-instance v4, Ljava/util/Timer;

    const-string v5, "ignite-starvation-checker"

    invoke-direct {v4, v5}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->starveTimer:Ljava/util/Timer;

    .line 885
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/IgniteKernal;->starveTimer:Ljava/util/Timer;

    new-instance v11, Lorg/apache/ignite/internal/IgniteKernal$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v11, v0, v1, v12, v13}, Lorg/apache/ignite/internal/IgniteKernal$3;-><init>(Lorg/apache/ignite/internal/IgniteKernal;Ljava/util/concurrent/ExecutorService;J)V

    move-wide v14, v12

    invoke-virtual/range {v10 .. v15}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 909
    .end local v12    # "interval":J
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMetricsLogFrequency()J

    move-result-wide v16

    .line 911
    .local v16, "metricsLogFreq":J
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-lez v4, :cond_15

    .line 912
    new-instance v4, Ljava/util/Timer;

    const-string v5, "ignite-metrics-logger"

    invoke-direct {v4, v5}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->metricsLogTimer:Ljava/util/Timer;

    .line 914
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/IgniteKernal;->metricsLogTimer:Ljava/util/Timer;

    new-instance v15, Lorg/apache/ignite/internal/IgniteKernal$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v15, v0, v1, v2}, Lorg/apache/ignite/internal/IgniteKernal$4;-><init>(Lorg/apache/ignite/internal/IgniteKernal;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    move-wide/from16 v18, v16

    invoke-virtual/range {v14 .. v19}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 998
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/GridKernalContextImpl;->performance()Lorg/apache/ignite/internal/GridPerformanceSuggestions;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->logSuggestions(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->log:Lorg/apache/ignite/internal/GridLoggerProxy;

    const-string v5, "To start Console Management & Monitoring run ignitevisorcmd.{sh|bat}"

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndInfo(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;)V

    .line 1002
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->ackStart(Ljava/lang/management/RuntimeMXBean;)V

    .line 1004
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/IgniteKernal;->isDaemon()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1005
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/GridKernalContextImpl;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ackTopology()V

    goto/16 :goto_0

    .line 878
    .end local v16    # "metricsLogFreq":J
    .end local v33    # "starveCheck":Z
    :cond_16
    const/16 v33, 0x0

    goto/16 :goto_9

    .line 881
    .restart local v33    # "starveCheck":Z
    :cond_17
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    goto/16 :goto_a

    .line 564
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public stop(Z)V
    .locals 3
    .param p1, "cancel"    # Z

    .prologue
    .line 1662
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    .line 1665
    .local v0, "interrupted":Z
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/IgniteKernal;->stop0(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1668
    if-eqz v0, :cond_0

    .line 1669
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1671
    :cond_0
    return-void

    .line 1668
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 1669
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2822
    const-class v0, Lorg/apache/ignite/internal/IgniteKernal;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transactions()Lorg/apache/ignite/IgniteTransactions;
    .locals 1

    .prologue
    .line 2226
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2229
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->transactions()Lorg/apache/ignite/internal/IgniteTransactionsEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2232
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v0
.end method

.method public undeployTaskFromGrid(Ljava/lang/String;)V
    .locals 2
    .param p1, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/JMException;
        }
    .end annotation

    .prologue
    .line 2161
    const-string/jumbo v1, "taskName"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2164
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/IgniteKernal;->compute()Lorg/apache/ignite/IgniteCompute;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/ignite/IgniteCompute;->undeployTask(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2169
    return-void

    .line 2166
    :catch_0
    move-exception v0

    .line 2167
    .local v0, "e":Lorg/apache/ignite/IgniteException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->jmException(Ljava/lang/Throwable;)Ljavax/management/JMException;

    move-result-object v1

    throw v1
.end method

.method public utilityCache(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheUtilityKey;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2422
    .local p1, "keyCls":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valCls":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->guard()V

    .line 2425
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->ctx:Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->utilityCache(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2428
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteKernal;->unguard()V

    throw v0
.end method

.method public version()Lorg/apache/ignite/lang/IgniteProductVersion;
    .locals 1

    .prologue
    .line 2547
    sget-object v0, Lorg/apache/ignite/internal/IgniteVersionUtils;->VER:Lorg/apache/ignite/lang/IgniteProductVersion;

    return-object v0
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
    .line 2795
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal;->gridName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 2796
    return-void
.end method
