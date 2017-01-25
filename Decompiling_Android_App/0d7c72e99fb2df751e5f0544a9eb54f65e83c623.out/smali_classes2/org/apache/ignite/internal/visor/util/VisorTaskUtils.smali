.class public Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;
.super Ljava/lang/Object;
.source "VisorTaskUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEBUG_DATE_FMT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final DFLT_EMPTY_NAME:Ljava/lang/String; = "<default>"

.field private static final EMPTY_FILE_BUF:[B

.field private static final EVENTS_COLLECT_TIME_WINDOW:I = 0x927c0

.field private static final EVENTS_LOST_THROTTLE:I = 0xa

.field private static final EVTS_ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/ignite/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVT_MAPPER:Lorg/apache/ignite/internal/visor/util/VisorEventMapper;

.field private static final LAST_MODIFIED:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/ignite/internal/visor/log/VisorLogFile;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOG_FILES_COUNT_LIMIT:I = 0x1388

.field public static final MAX_FOLDER_DEPTH:I = 0x4

.field private static final TEXT_MIME_TYPE:[Ljava/lang/String;

.field public static final VISOR_ALL_EVTS:[I

.field public static final VISOR_NON_TASK_EVTS:[I

.field public static final VISOR_TASK_EVTS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    const-class v0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->$assertionsDisabled:Z

    .line 66
    new-array v0, v2, [B

    sput-object v0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->EMPTY_FILE_BUF:[B

    .line 72
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->VISOR_TASK_EVTS:[I

    .line 88
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->VISOR_NON_TASK_EVTS:[I

    .line 94
    new-array v0, v4, [[I

    sget-object v3, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->VISOR_TASK_EVTS:[I

    aput-object v3, v0, v2

    sget-object v3, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->VISOR_NON_TASK_EVTS:[I

    aput-object v3, v0, v1

    invoke-static {v0}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->concat([[I)[I

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->VISOR_ALL_EVTS:[I

    .line 100
    new-instance v0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->LAST_MODIFIED:Ljava/util/Comparator;

    .line 107
    new-instance v0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$2;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$2;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->DEBUG_DATE_FMT:Ljava/lang/ThreadLocal;

    .line 327
    new-instance v0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$3;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$3;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->EVTS_ORDER_COMPARATOR:Ljava/util/Comparator;

    .line 334
    new-instance v0, Lorg/apache/ignite/internal/visor/util/VisorEventMapper;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/util/VisorEventMapper;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->EVT_MAPPER:Lorg/apache/ignite/internal/visor/util/VisorEventMapper;

    .line 469
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "text/plain"

    aput-object v3, v0, v2

    const-string v2, "application/xml"

    aput-object v2, v0, v1

    const-string v1, "text/html"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "x-sh"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->TEXT_MIME_TYPE:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 55
    goto :goto_0

    .line 72
    nop

    :array_0
    .array-data 4
        0x2c
        0x2d
        0x2e
        0x30
        0x2b
        0x2f
        0x32
        0x14
        0x15
        0x16
        0x17
    .end array-data

    .line 88
    :array_1
    .array-data 4
        0x20
        0x23
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boolValue(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "propName"    # Ljava/lang/String;
    .param p1, "dflt"    # Z

    .prologue
    .line 283
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "sysProp":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .end local p1    # "dflt":Z
    :cond_0
    return p1
.end method

.method public static checkExplicitTaskMonitoring(Lorg/apache/ignite/Ignite;)Z
    .locals 7
    .param p0, "ignite"    # Lorg/apache/ignite/Ignite;

    .prologue
    const/4 v5, 0x0

    .line 313
    invoke-interface {p0}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIncludeEventTypes()[I

    move-result-object v2

    .line 315
    .local v2, "evts":[I
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v5

    .line 318
    :cond_1
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->VISOR_TASK_EVTS:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget v1, v0, v3

    .line 319
    .local v1, "evt":I
    invoke-static {v2, v1}, Lorg/apache/ignite/internal/util/typedef/F;->contains([II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 318
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 323
    .end local v1    # "evt":I
    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static collectEvents(Lorg/apache/ignite/Ignite;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Collection;
    .locals 2
    .param p0, "ignite"    # Lorg/apache/ignite/Ignite;
    .param p1, "evtOrderKey"    # Ljava/lang/String;
    .param p2, "evtThrottleCntrKey"    # Ljava/lang/String;
    .param p3, "all"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/Ignite;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/event/VisorGridEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    if-eqz p3, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->VISOR_ALL_EVTS:[I

    :goto_0
    sget-object v1, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->EVT_MAPPER:Lorg/apache/ignite/internal/visor/util/VisorEventMapper;

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->collectEvents(Lorg/apache/ignite/Ignite;Ljava/lang/String;Ljava/lang/String;[ILorg/apache/ignite/lang/IgniteClosure;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->VISOR_NON_TASK_EVTS:[I

    goto :goto_0
.end method

.method public static collectEvents(Lorg/apache/ignite/Ignite;Ljava/lang/String;Ljava/lang/String;[ILorg/apache/ignite/lang/IgniteClosure;)Ljava/util/Collection;
    .locals 24
    .param p0, "ignite"    # Lorg/apache/ignite/Ignite;
    .param p1, "evtOrderKey"    # Ljava/lang/String;
    .param p2, "evtThrottleCntrKey"    # Ljava/lang/String;
    .param p3, "evtTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/Ignite;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Lorg/apache/ignite/events/Event;",
            "Lorg/apache/ignite/internal/visor/event/VisorGridEvent;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/event/VisorGridEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    .local p4, "evtMapper":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Lorg/apache/ignite/events/Event;Lorg/apache/ignite/internal/visor/event/VisorGridEvent;>;"
    sget-boolean v8, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p0, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 364
    :cond_0
    sget-boolean v8, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->$assertionsDisabled:Z

    if-nez v8, :cond_2

    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v8, v0

    if-gtz v8, :cond_2

    :cond_1
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 366
    :cond_2
    invoke-interface/range {p0 .. p0}, Lorg/apache/ignite/Ignite;->cluster()Lorg/apache/ignite/IgniteCluster;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/IgniteCluster;->nodeLocalMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v14

    .line 368
    .local v14, "nl":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v20, -0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-static {v14, v0, v8}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->getOrElse(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 369
    .local v4, "lastOrder":J
    const-wide/16 v20, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-static {v14, v0, v8}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->getOrElse(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 374
    .local v16, "throttle":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/32 v22, 0x927c0

    sub-long v6, v20, v22

    .line 377
    .local v6, "notOlderThan":J
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v20, 0x0

    cmp-long v8, v4, v20

    if-gez v8, :cond_7

    const/4 v8, 0x1

    :goto_0
    invoke-direct {v3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 379
    .local v3, "lastFound":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$4;

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$4;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;JJ[I)V

    .line 390
    .local v2, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/events/Event;>;"
    invoke-interface/range {p0 .. p0}, Lorg/apache/ignite/Ignite;->events()Lorg/apache/ignite/IgniteEvents;

    move-result-object v8

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v8, v2, v0}, Lorg/apache/ignite/IgniteEvents;->localQuery(Lorg/apache/ignite/lang/IgnitePredicate;[I)Ljava/util/Collection;

    move-result-object v10

    .line 393
    .local v10, "evts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/events/Event;>;"
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 394
    sget-object v8, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->EVTS_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v10, v8}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/events/Event;

    .line 396
    .local v13, "maxEvt":Lorg/apache/ignite/events/Event;
    invoke-interface {v13}, Lorg/apache/ignite/events/Event;->localOrder()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-interface {v14, v0, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .end local v13    # "maxEvt":Lorg/apache/ignite/events/Event;
    :cond_3
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_4

    .line 401
    const-wide/16 v20, 0x0

    cmp-long v8, v16, v20

    if-nez v8, :cond_8

    const-wide/16 v20, 0xa

    :goto_1
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-interface {v14, v0, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_4
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_9

    const-wide/16 v20, 0x0

    cmp-long v8, v16, v20

    if-nez v8, :cond_9

    const/4 v12, 0x1

    .line 405
    .local v12, "lost":Z
    :goto_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v19

    if-eqz v12, :cond_a

    const/4 v8, 0x1

    :goto_3
    add-int v8, v8, v19

    invoke-direct {v15, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 407
    .local v15, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/event/VisorGridEvent;>;"
    if-eqz v12, :cond_5

    .line 408
    new-instance v8, Lorg/apache/ignite/internal/visor/event/VisorGridEventsLost;

    invoke-interface/range {p0 .. p0}, Lorg/apache/ignite/Ignite;->cluster()Lorg/apache/ignite/IgniteCluster;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/IgniteCluster;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Lorg/apache/ignite/internal/visor/event/VisorGridEventsLost;-><init>(Ljava/util/UUID;)V

    invoke-interface {v15, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_5
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/events/Event;

    .line 411
    .local v9, "e":Lorg/apache/ignite/events/Event;
    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;

    .line 413
    .local v18, "visorEvt":Lorg/apache/ignite/internal/visor/event/VisorGridEvent;
    if-eqz v18, :cond_6

    .line 414
    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 377
    .end local v2    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/events/Event;>;"
    .end local v3    # "lastFound":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v9    # "e":Lorg/apache/ignite/events/Event;
    .end local v10    # "evts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/events/Event;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "lost":Z
    .end local v15    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/event/VisorGridEvent;>;"
    .end local v18    # "visorEvt":Lorg/apache/ignite/internal/visor/event/VisorGridEvent;
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 401
    .restart local v2    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/events/Event;>;"
    .restart local v3    # "lastFound":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v10    # "evts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/events/Event;>;"
    :cond_8
    const-wide/16 v20, 0x1

    sub-long v20, v16, v20

    goto :goto_1

    .line 403
    :cond_9
    const/4 v12, 0x0

    goto :goto_2

    .line 405
    .restart local v12    # "lost":Z
    :cond_a
    const/4 v8, 0x0

    goto :goto_3

    .line 417
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v15    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/event/VisorGridEvent;>;"
    :cond_b
    return-object v15
.end method

.method public static compactArray([Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "arr"    # [Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 246
    if-eqz p0, :cond_0

    array-length v6, p0

    if-nez v6, :cond_1

    .line 247
    :cond_0
    const/4 v6, 0x0

    .line 259
    :goto_0
    return-object v6

    .line 249
    :cond_1
    const-string v5, ", "

    .line 251
    .local v5, "sep":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 254
    .local v3, "s":Ljava/lang/Object;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 256
    .end local v3    # "s":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 257
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 259
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static compactClass(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 233
    if-nez p0, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 236
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static compactObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 163
    if-nez p0, :cond_1

    .line 164
    const/4 v8, 0x0

    .line 223
    .end local p0    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v8

    .line 166
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v10, p0, Ljava/lang/Enum;

    if-eqz v10, :cond_2

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 169
    :cond_2
    instance-of v10, p0, Ljava/lang/String;

    if-nez v10, :cond_3

    instance-of v10, p0, Ljava/lang/Boolean;

    if-nez v10, :cond_3

    instance-of v10, p0, Ljava/lang/Number;

    if-eqz v10, :cond_4

    :cond_3
    move-object v8, p0

    .line 170
    goto :goto_0

    .line 172
    :cond_4
    instance-of v10, p0, Ljava/util/Collection;

    if-eqz v10, :cond_5

    move-object v2, p0

    .line 173
    check-cast v2, Ljava/util/Collection;

    .line 175
    .local v2, "col":Ljava/util/Collection;
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v10

    new-array v8, v10, [Ljava/lang/Object;

    .line 177
    .local v8, "res":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 179
    .local v4, "i":I
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 180
    .local v3, "elm":Ljava/lang/Object;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    invoke-static {v3}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v4

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 185
    .end local v2    # "col":Ljava/util/Collection;
    .end local v3    # "elm":Ljava/lang/Object;
    .end local v4    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "res":[Ljava/lang/Object;
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 188
    .local v1, "arrType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 189
    instance-of v10, p0, [Z

    if-eqz v10, :cond_6

    .line 190
    check-cast p0, [Z

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 191
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_6
    instance-of v10, p0, [B

    if-eqz v10, :cond_7

    .line 192
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 193
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_7
    instance-of v10, p0, [S

    if-eqz v10, :cond_8

    .line 194
    check-cast p0, [S

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 195
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    instance-of v10, p0, [I

    if-eqz v10, :cond_9

    .line 196
    check-cast p0, [I

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 197
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_9
    instance-of v10, p0, [J

    if-eqz v10, :cond_a

    .line 198
    check-cast p0, [J

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 199
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_a
    instance-of v10, p0, [F

    if-eqz v10, :cond_b

    .line 200
    check-cast p0, [F

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 201
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_b
    instance-of v10, p0, [D

    if-eqz v10, :cond_c

    .line 202
    check-cast p0, [D

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 205
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_c
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "obj":Ljava/lang/Object;
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    .line 207
    .local v0, "arr":[Ljava/lang/Object;
    array-length v10, v0

    add-int/lit8 v7, v10, -0x1

    .line 209
    .local v7, "iMax":I
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .local v9, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-gt v4, v7, :cond_e

    .line 212
    aget-object v10, v0, v4

    invoke-static {v10}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    if-eq v4, v7, :cond_d

    .line 215
    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 218
    :cond_e
    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 223
    .end local v0    # "arr":[Ljava/lang/Object;
    .end local v1    # "arrType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "i":I
    .end local v7    # "iMax":I
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public static varargs concat([[I)[I
    .locals 11
    .param p0, "arrays"    # [[I

    .prologue
    const/4 v10, 0x0

    .line 138
    sget-boolean v8, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p0, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 139
    :cond_0
    sget-boolean v8, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    array-length v8, p0

    const/4 v9, 0x1

    if-gt v8, v9, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 141
    :cond_1
    const/4 v4, 0x0

    .line 143
    .local v4, "len":I
    move-object v1, p0

    .local v1, "arr$":[[I
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, v1, v3

    .line 144
    .local v0, "a":[I
    array-length v8, v0

    add-int/2addr v4, v8

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "a":[I
    :cond_2
    aget-object v8, p0, v10

    invoke-static {v8, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 148
    .local v6, "r":[I
    const/4 v2, 0x1

    .local v2, "i":I
    const/4 v7, 0x0

    .local v7, "shift":I
    :goto_1
    array-length v8, p0

    if-ge v2, v8, :cond_3

    .line 149
    add-int/lit8 v8, v2, -0x1

    aget-object v8, p0, v8

    array-length v8, v8

    add-int/2addr v7, v8

    .line 150
    aget-object v8, p0, v2

    aget-object v9, p0, v2

    array-length v9, v9

    invoke-static {v8, v10, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 153
    :cond_3
    return-object v6
.end method

.method public static decode(Ljava/io/File;)Ljava/nio/charset/Charset;
    .locals 17
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-static {}, Ljava/nio/charset/Charset;->availableCharsets()Ljava/util/SortedMap;

    move-result-object v6

    .line 501
    .local v6, "charsets":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    const/4 v14, 0x5

    new-array v8, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v14

    const/4 v14, 0x1

    const-string v15, "US-ASCII"

    aput-object v15, v8, v14

    const/4 v14, 0x2

    const-string v15, "UTF-8"

    aput-object v15, v8, v14

    const/4 v14, 0x3

    const-string v15, "UTF-16BE"

    aput-object v15, v8, v14

    const/4 v14, 0x4

    const-string v15, "UTF-16LE"

    aput-object v15, v8, v14

    .line 503
    .local v8, "firstCharsets":[Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/SortedMap;->size()I

    move-result v14

    invoke-static {v14}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newLinkedHashSet(I)Ljava/util/LinkedHashSet;

    move-result-object v11

    .line 505
    .local v11, "orderedCharsets":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/nio/charset/Charset;>;"
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/String;
    array-length v10, v1

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v3, v1, v9

    .line 506
    .local v3, "c":Ljava/lang/String;
    invoke-interface {v6, v3}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 507
    invoke-interface {v6, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 509
    .end local v3    # "c":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 511
    new-instance v12, Ljava/io/RandomAccessFile;

    const-string v14, "r"

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v12, "raf":Ljava/io/RandomAccessFile;
    const/4 v15, 0x0

    .line 512
    :try_start_0
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 514
    .local v4, "ch":Ljava/nio/channels/FileChannel;
    const/16 v14, 0x1000

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 516
    .local v2, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 518
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 520
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/charset/Charset;

    .line 521
    .local v5, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v7

    .line 523
    .local v7, "decoder":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {v7}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 526
    :try_start_1
    invoke-virtual {v7, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 533
    if-eqz v12, :cond_2

    if-eqz v15, :cond_3

    :try_start_2
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 535
    .end local v5    # "charset":Ljava/nio/charset/Charset;
    .end local v7    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :cond_2
    :goto_2
    return-object v5

    .line 533
    .restart local v5    # "charset":Ljava/nio/charset/Charset;
    .restart local v7    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :catch_0
    move-exception v13

    .local v13, "x2":Ljava/lang/Throwable;
    invoke-virtual {v15, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v13    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_2

    .end local v5    # "charset":Ljava/nio/charset/Charset;
    .end local v7    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :cond_4
    if-eqz v12, :cond_5

    if-eqz v15, :cond_6

    :try_start_3
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 535
    :cond_5
    :goto_3
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    goto :goto_2

    .line 533
    :catch_1
    move-exception v13

    .restart local v13    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v15, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v13    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_3

    .line 511
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v4    # "ch":Ljava/nio/channels/FileChannel;
    .end local v9    # "i$":Ljava/util/Iterator;
    :catch_2
    move-exception v14

    :try_start_4
    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 533
    :catchall_0
    move-exception v15

    move-object/from16 v16, v15

    move-object v15, v14

    move-object/from16 v14, v16

    :goto_4
    if-eqz v12, :cond_7

    if-eqz v15, :cond_8

    :try_start_5
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_7
    :goto_5
    throw v14

    :catch_3
    move-exception v13

    .restart local v13    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v15, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v13    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_5

    .line 530
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    .restart local v4    # "ch":Ljava/nio/channels/FileChannel;
    .restart local v5    # "charset":Ljava/nio/charset/Charset;
    .restart local v7    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .restart local v9    # "i$":Ljava/util/Iterator;
    :catch_4
    move-exception v14

    goto :goto_1

    .line 533
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v4    # "ch":Ljava/nio/channels/FileChannel;
    .end local v5    # "charset":Ljava/nio/charset/Charset;
    .end local v7    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local v9    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v14

    goto :goto_4
.end method

.method public static escapeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 119
    if-nez p0, :cond_0

    const-string p0, "<default>"

    .end local p0    # "name":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static evictionPolicyMaxSize(Lorg/apache/ignite/cache/eviction/EvictionPolicy;)Ljava/lang/Integer;
    .locals 1
    .param p0, "plc"    # Lorg/apache/ignite/cache/eviction/EvictionPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 617
    instance-of v0, p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicyMBean;

    if-eqz v0, :cond_0

    .line 618
    check-cast p0, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicyMBean;

    .end local p0    # "plc":Lorg/apache/ignite/cache/eviction/EvictionPolicy;
    invoke-interface {p0}, Lorg/apache/ignite/cache/eviction/lru/LruEvictionPolicyMBean;->getMaxSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 626
    :goto_0
    return-object v0

    .line 620
    .restart local p0    # "plc":Lorg/apache/ignite/cache/eviction/EvictionPolicy;
    :cond_0
    instance-of v0, p0, Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicyMBean;

    if-eqz v0, :cond_1

    .line 621
    check-cast p0, Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicyMBean;

    .end local p0    # "plc":Lorg/apache/ignite/cache/eviction/EvictionPolicy;
    invoke-interface {p0}, Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicyMBean;->getMaxSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 623
    .restart local p0    # "plc":Lorg/apache/ignite/cache/eviction/EvictionPolicy;
    :cond_1
    instance-of v0, p0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicyMBean;

    if-eqz v0, :cond_2

    .line 624
    check-cast p0, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicyMBean;

    .end local p0    # "plc":Lorg/apache/ignite/cache/eviction/EvictionPolicy;
    invoke-interface {p0}, Lorg/apache/ignite/cache/eviction/fifo/FifoEvictionPolicyMBean;->getMaxSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 626
    .restart local p0    # "plc":Lorg/apache/ignite/cache/eviction/EvictionPolicy;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fileTree(Ljava/io/File;ILjava/io/FileFilter;)Ljava/util/List;
    .locals 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "maxDepth"    # I
    .param p2, "filter"    # Ljava/io/FileFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/visor/log/VisorLogFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 429
    if-nez p2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 431
    .local v2, "files":[Ljava/io/File;
    :goto_0
    if-nez v2, :cond_2

    .line 432
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 446
    .end local v2    # "files":[Ljava/io/File;
    :cond_0
    :goto_1
    return-object v5

    .line 429
    :cond_1
    invoke-virtual {p0, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 434
    .restart local v2    # "files":[Ljava/io/File;
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 436
    .local v5, "res":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/log/VisorLogFile;>;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 437
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 438
    new-instance v6, Lorg/apache/ignite/internal/visor/log/VisorLogFile;

    invoke-direct {v6, v1}, Lorg/apache/ignite/internal/visor/log/VisorLogFile;-><init>(Ljava/io/File;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 439
    :cond_4
    const/4 v6, 0x1

    if-le p1, v6, :cond_3

    .line 440
    add-int/lit8 v6, p1, -0x1

    invoke-static {v1, v6, p2}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->fileTree(Ljava/io/File;ILjava/io/FileFilter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 446
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "res":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/log/VisorLogFile;>;"
    :cond_5
    new-instance v6, Lorg/apache/ignite/internal/visor/log/VisorLogFile;

    invoke-direct {v6, p0}, Lorg/apache/ignite/internal/visor/log/VisorLogFile;-><init>(Ljava/io/File;)V

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_1
.end method

.method private static formatDuration(J)Ljava/lang/String;
    .locals 12
    .param p0, "ms"    # J

    .prologue
    .line 636
    sget-boolean v7, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v7, p0, v8

    if-gez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 638
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v7, p0, v8

    if-nez v7, :cond_1

    .line 639
    const-string v7, "< 1 ms"

    .line 665
    :goto_0
    return-object v7

    .line 641
    :cond_1
    new-instance v6, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v6}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    .line 643
    .local v6, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    const-wide/32 v8, 0x15f900

    div-long v0, p0, v8

    .line 645
    .local v0, "dd":J
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-lez v7, :cond_2

    .line 646
    invoke-virtual {v6, v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(J)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v8

    const-wide/16 v10, 0x1

    cmp-long v7, v0, v10

    if-nez v7, :cond_6

    const-string v7, " day "

    :goto_1
    invoke-virtual {v8, v7}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 648
    :cond_2
    const-wide/32 v8, 0x15f900

    rem-long/2addr p0, v8

    .line 650
    const-wide/32 v8, 0xea60

    div-long v2, p0, v8

    .line 652
    .local v2, "hh":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_3

    .line 653
    invoke-virtual {v6, v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(J)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v8

    const-wide/16 v10, 0x1

    cmp-long v7, v2, v10

    if-nez v7, :cond_7

    const-string v7, " hour "

    :goto_2
    invoke-virtual {v8, v7}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 655
    :cond_3
    const-wide/32 v8, 0xea60

    div-long v4, p0, v8

    .line 657
    .local v4, "min":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_4

    .line 658
    invoke-virtual {v6, v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(J)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v8

    const-wide/16 v10, 0x1

    cmp-long v7, v4, v10

    if-nez v7, :cond_8

    const-string v7, " min "

    :goto_3
    invoke-virtual {v8, v7}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 660
    :cond_4
    const-wide/32 v8, 0xea60

    rem-long/2addr p0, v8

    .line 662
    const-wide/16 v8, 0x0

    cmp-long v7, p0, v8

    if-lez v7, :cond_5

    .line 663
    invoke-virtual {v6, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(J)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v7

    const-string v8, " ms "

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 665
    :cond_5
    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 646
    .end local v2    # "hh":J
    .end local v4    # "min":J
    :cond_6
    const-string v7, " days "

    goto :goto_1

    .line 653
    .restart local v2    # "hh":J
    :cond_7
    const-string v7, " hours "

    goto :goto_2

    .line 658
    .restart local v4    # "min":J
    :cond_8
    const-string v7, " mins "

    goto :goto_3
.end method

.method public static getOrElse(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "ifNull":Ljava/lang/Object;, "TV;"
    sget-boolean v1, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 301
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 303
    .local v0, "res":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_1

    .end local v0    # "res":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v0

    .restart local v0    # "res":Ljava/lang/Object;, "TV;"
    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public static intValue(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p0, "propName"    # Ljava/lang/String;
    .param p1, "dflt"    # Ljava/lang/Integer;

    .prologue
    .line 270
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "sysProp":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .end local p1    # "dflt":Ljava/lang/Integer;
    :cond_0
    return-object p1
.end method

.method public static log(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/lang/Class;J)J
    .locals 9
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "msg"    # Ljava/lang/String;
    .param p3, "start"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/IgniteLogger;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;J)J"
        }
    .end annotation

    .prologue
    .line 729
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    .line 731
    .local v0, "end":J
    const-string v2, "[%s]: %s, duration: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    sub-long v6, v0, p3

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->log0(Lorg/apache/ignite/IgniteLogger;JLjava/lang/String;)V

    .line 733
    return-wide v0
.end method

.method private static log0(Lorg/apache/ignite/IgniteLogger;JLjava/lang/String;)V
    .locals 7
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "time"    # J
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 674
    if-eqz p0, :cond_1

    .line 675
    invoke-interface {p0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    invoke-interface {p0, p3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 683
    :goto_0
    return-void

    .line 678
    :cond_0
    invoke-interface {p0, p3}, Lorg/apache/ignite/IgniteLogger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 681
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->DEBUG_DATE_FMT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%30s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static logFinish(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Class;J)V
    .locals 8
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "start"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/IgniteLogger;",
            "Ljava/lang/Class",
            "<*>;J)V"
        }
    .end annotation

    .prologue
    .line 704
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    .line 706
    .local v0, "end":J
    const-string v2, "[%s]: FINISHED, duration: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sub-long v6, v0, p2

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->log0(Lorg/apache/ignite/IgniteLogger;JLjava/lang/String;)V

    .line 707
    return-void
.end method

.method public static logMapped(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 6
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/IgniteLogger;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 717
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "[%s]: MAPPED: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->log0(Lorg/apache/ignite/IgniteLogger;JLjava/lang/String;)V

    .line 719
    return-void
.end method

.method public static logStart(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Class;J)V
    .locals 2
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "start"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/IgniteLogger;",
            "Ljava/lang/Class",
            "<*>;J)V"
        }
    .end annotation

    .prologue
    .line 693
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, p3, v0}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->log0(Lorg/apache/ignite/IgniteLogger;JLjava/lang/String;)V

    .line 694
    return-void
.end method

.method public static matchedFiles(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "fld"    # Ljava/io/File;
    .param p1, "ptrn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/visor/log/VisorLogFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    const/4 v1, 0x4

    new-instance v2, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$5;

    invoke-direct {v2, p1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$5;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v2}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->fileTree(Ljava/io/File;ILjava/io/FileFilter;)Ljava/util/List;

    move-result-object v0

    .line 463
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/log/VisorLogFile;>;"
    sget-object v1, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->LAST_MODIFIED:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 465
    return-object v0
.end method

.method public static varargs openInConsole(Ljava/io/File;[Ljava/lang/String;)Ljava/lang/Process;
    .locals 10
    .param p0, "workFolder"    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 786
    move-object v1, p1

    .line 788
    .local v1, "commands":[Ljava/lang/String;
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, " "

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->concat(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isWindows()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 791
    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "cmd"

    aput-object v4, v3, v6

    const-string v4, "/c"

    aput-object v4, v3, v7

    const-string v4, "start %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->asArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "commands":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 793
    .restart local v1    # "commands":[Ljava/lang/String;
    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isMacOs()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 794
    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "osascript"

    aput-object v4, v3, v6

    const-string v4, "-e"

    aput-object v4, v3, v7

    const-string v4, "tell application \"Terminal\" to do script \"%s\""

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->asArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "commands":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 797
    .restart local v1    # "commands":[Ljava/lang/String;
    :cond_1
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isUnix()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 798
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "xterm"

    aput-object v4, v3, v6

    const-string v4, "-sl"

    aput-object v4, v3, v7

    const-string v4, "1024"

    aput-object v4, v3, v8

    const-string v4, "-geometry"

    aput-object v4, v3, v9

    const/4 v4, 0x4

    const-string v5, "200x50"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "-e"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object v0, v3, v4

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->asArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "commands":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 800
    .restart local v1    # "commands":[Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 802
    .local v2, "pb":Ljava/lang/ProcessBuilder;
    if-eqz p0, :cond_3

    .line 803
    invoke-virtual {v2, p0}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 805
    :cond_3
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    return-object v3
.end method

.method public static varargs openInConsole([Ljava/lang/String;)Ljava/lang/Process;
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 773
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->openInConsole(Ljava/io/File;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public static reachableByPing(Ljava/net/InetAddress;I)Z
    .locals 10
    .param p0, "addr"    # Ljava/net/InetAddress;
    .param p1, "reachTimeout"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 745
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 762
    :cond_0
    :goto_0
    return v4

    .line 748
    :cond_1
    const-string v7, "ping -%s 1 %s"

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isWindows()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "n"

    :goto_1
    aput-object v6, v8, v9

    const/4 v6, 0x1

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 752
    .local v3, "myProc":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 754
    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 748
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v3    # "myProc":Ljava/lang/Process;
    :cond_2
    const-string v6, "c"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 756
    :catch_0
    move-exception v1

    .local v1, "ignore":Ljava/io/IOException;
    move v4, v5

    .line 757
    goto :goto_0

    .line 759
    .end local v1    # "ignore":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 760
    .local v2, "ignored":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    move v4, v5

    .line 762
    goto :goto_0
.end method

.method public static readBlock(Ljava/io/File;JIJ)Lorg/apache/ignite/internal/visor/file/VisorFileBlock;
    .locals 25
    .param p0, "file"    # Ljava/io/File;
    .param p1, "off"    # J
    .param p3, "blockSz"    # I
    .param p4, "lastModified"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 549
    const/16 v22, 0x0

    .line 552
    .local v22, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 553
    .local v14, "fSz":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 555
    .local v8, "fLastModified":J
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-ltz v4, :cond_0

    move-wide/from16 v6, p1

    .line 558
    .local v6, "pos":J
    :goto_0
    cmp-long v4, v8, p4

    if-nez v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-eqz v4, :cond_1

    cmp-long v4, v6, v14

    if-ltz v4, :cond_1

    .line 559
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Trying to read file block with wrong offset: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " while file size: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    .end local v6    # "pos":J
    .end local v8    # "fLastModified":J
    .end local v14    # "fSz":J
    :catchall_0
    move-exception v4

    :goto_1
    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    throw v4

    .line 555
    .restart local v8    # "fLastModified":J
    .restart local v14    # "fSz":J
    :cond_0
    move/from16 v0, p3

    int-to-long v4, v0

    sub-long v4, v14, v4

    const-wide/16 v10, 0x0

    :try_start_1
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_0

    .line 561
    .restart local v6    # "pos":J
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-nez v4, :cond_2

    .line 562
    new-instance v4, Lorg/apache/ignite/internal/visor/file/VisorFileBlock;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    sget-object v13, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->EMPTY_FILE_BUF:[B

    invoke-direct/range {v4 .. v13}, Lorg/apache/ignite/internal/visor/file/VisorFileBlock;-><init>(Ljava/lang/String;JJJZ[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 584
    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    :goto_2
    return-object v4

    .line 564
    :cond_2
    sub-long v4, v14, v6

    long-to-int v4, v4

    :try_start_2
    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 566
    .local v24, "toRead":I
    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 568
    .local v20, "buf":[B
    new-instance v23, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 570
    .end local v22    # "raf":Ljava/io/RandomAccessFile;
    .local v23, "raf":Ljava/io/RandomAccessFile;
    :try_start_3
    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 572
    const/4 v4, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v21

    .line 574
    .local v21, "cntRead":I
    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 575
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Count of requested and actually read bytes does not match [cntRead="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", toRead="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v10, 0x5d

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 584
    .end local v21    # "cntRead":I
    :catchall_1
    move-exception v4

    move-object/from16 v22, v23

    .end local v23    # "raf":Ljava/io/RandomAccessFile;
    .restart local v22    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_1

    .line 578
    .end local v22    # "raf":Ljava/io/RandomAccessFile;
    .restart local v21    # "cntRead":I
    .restart local v23    # "raf":Ljava/io/RandomAccessFile;
    :cond_3
    move-object/from16 v0, v20

    array-length v4, v0

    const/16 v5, 0x200

    if-le v4, v5, :cond_4

    const/16 v18, 0x1

    .line 580
    .local v18, "zipped":Z
    :goto_3
    new-instance v10, Lorg/apache/ignite/internal/visor/file/VisorFileBlock;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    if-eqz v18, :cond_5

    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->zipBytes([B)[B

    move-result-object v19

    :goto_4
    move-wide v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v10 .. v19}, Lorg/apache/ignite/internal/visor/file/VisorFileBlock;-><init>(Ljava/lang/String;JJJZ[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 584
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    move-object/from16 v22, v23

    .end local v23    # "raf":Ljava/io/RandomAccessFile;
    .restart local v22    # "raf":Ljava/io/RandomAccessFile;
    move-object v4, v10

    goto/16 :goto_2

    .line 578
    .end local v18    # "zipped":Z
    .end local v22    # "raf":Ljava/io/RandomAccessFile;
    .restart local v23    # "raf":Ljava/io/RandomAccessFile;
    :cond_4
    const/16 v18, 0x0

    goto :goto_3

    .restart local v18    # "zipped":Z
    :cond_5
    move-object/from16 v19, v20

    .line 580
    goto :goto_4
.end method

.method public static resolveIgfsProfilerLogsDir(Lorg/apache/ignite/IgniteFileSystem;)Ljava/nio/file/Path;
    .locals 4
    .param p0, "igfs"    # Lorg/apache/ignite/IgniteFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 598
    instance-of v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    if-eqz v2, :cond_0

    .line 599
    check-cast p0, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    .end local p0    # "igfs":Lorg/apache/ignite/IgniteFileSystem;
    invoke-interface {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->clientLogDirectory()Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, "logsDir":Ljava/lang/String;
    if-eqz v0, :cond_2

    .end local v0    # "logsDir":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveIgniteUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 607
    .local v1, "logsDirUrl":Ljava/net/URL;
    if-eqz v1, :cond_3

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    :goto_1
    return-object v2

    .line 600
    .end local v1    # "logsDirUrl":Ljava/net/URL;
    .restart local p0    # "igfs":Lorg/apache/ignite/IgniteFileSystem;
    :cond_0
    if-nez p0, :cond_1

    .line 601
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "Failed to get profiler log folder (IGFS instance not found)"

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 603
    :cond_1
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "Failed to get profiler log folder (unexpected IGFS instance type)"

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 605
    .end local p0    # "igfs":Lorg/apache/ignite/IgniteFileSystem;
    .restart local v0    # "logsDir":Ljava/lang/String;
    :cond_2
    const-string v0, "work/igfs/log"

    goto :goto_0

    .line 607
    .end local v0    # "logsDir":Ljava/lang/String;
    .restart local v1    # "logsDirUrl":Ljava/net/URL;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "b"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 128
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static textFile(Ljava/io/File;Z)Z
    .locals 10
    .param p0, "f"    # Ljava/io/File;
    .param p1, "emptyOk"    # Z

    .prologue
    .line 479
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 488
    .end local p1    # "emptyOk":Z
    :goto_0
    return p1

    .line 482
    .restart local p1    # "emptyOk":Z
    :cond_0
    invoke-static {p0}, Lorg/apache/ignite/internal/visor/util/VisorMimeTypes;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "detected":Ljava/lang/String;
    sget-object v0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->TEXT_MIME_TYPE:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 485
    .local v4, "mime":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 486
    const/4 p1, 0x1

    goto :goto_0

    .line 484
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 488
    .end local v4    # "mime":Ljava/lang/String;
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static zipBytes([B)[B
    .locals 1
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 816
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->zipBytes([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static zipBytes([BI)[B
    .locals 9
    .param p0, "input"    # [B
    .param p1, "initBufSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 828
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 830
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v3, "zos":Ljava/util/zip/ZipOutputStream;
    const/4 v5, 0x0

    .line 831
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipEntry;

    const-string v4, ""

    invoke-direct {v1, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 834
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    :try_start_1
    array-length v4, p0

    int-to-long v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 836
    invoke-virtual {v3, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 838
    invoke-virtual {v3, p0}, Ljava/util/zip/ZipOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 840
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 842
    if-eqz v3, :cond_0

    if-eqz v5, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 844
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 840
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    throw v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 830
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 842
    :catchall_1
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_1
    if-eqz v3, :cond_1

    if-eqz v5, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :cond_1
    :goto_2
    throw v4

    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v2

    .local v2, "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    goto :goto_0

    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    :catch_2
    move-exception v2

    .restart local v2    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v2    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    goto :goto_2

    :catchall_2
    move-exception v4

    goto :goto_1
.end method
