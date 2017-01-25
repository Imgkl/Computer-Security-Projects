.class public Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
.super Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;
.source "GridDeployment.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final anns:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lorg/apache/ignite/internal/util/lang/GridTuple",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final clsLdr:Ljava/lang/ClassLoader;

.field private final clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

.field private final clss:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final depMode:Lorg/apache/ignite/configuration/DeploymentMode;

.field private final dfltCtorsCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/ignite/internal/util/lang/GridTuple",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final fieldCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final internalTasks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final loc:Z

.field private final mtdCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private volatile pendingUndeploy:Z

.field private final sampleClsName:Ljava/lang/String;

.field private final ts:J

.field private final usage:Ljava/util/concurrent/atomic/AtomicStampedReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicStampedReference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final userVer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/ClassLoader;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "depMode"    # Lorg/apache/ignite/configuration/DeploymentMode;
    .param p2, "clsLdr"    # Ljava/lang/ClassLoader;
    .param p3, "clsLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "userVer"    # Ljava/lang/String;
    .param p5, "sampleClsName"    # Ljava/lang/String;
    .param p6, "loc"    # Z

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;-><init>()V

    .line 44
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->ts:J

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicStampedReference;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->usage:Ljava/util/concurrent/atomic/AtomicStampedReference;

    .line 72
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->anns:Ljava/util/concurrent/ConcurrentMap;

    .line 78
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clss:Ljava/util/concurrent/ConcurrentMap;

    .line 82
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->internalTasks:Ljava/util/concurrent/ConcurrentMap;

    .line 86
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    .line 91
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->mtdCache:Ljava/util/concurrent/ConcurrentMap;

    .line 96
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->dfltCtorsCache:Ljava/util/concurrent/ConcurrentMap;

    .line 110
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 112
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 113
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 114
    :cond_3
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 116
    :cond_4
    iput-object p2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clsLdr:Ljava/lang/ClassLoader;

    .line 117
    iput-object p3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 118
    iput-object p4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->userVer:Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 120
    iput-object p5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->sampleClsName:Ljava/lang/String;

    .line 121
    iput-boolean p6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->loc:Z

    .line 122
    return-void
.end method

.method private annotatedValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/util/Set;Z)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 11
    .param p1, "target"    # Ljava/lang/Object;
    .param p3    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "annFound"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p2, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p3, "visited":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    const/4 v9, 0x1

    .line 545
    sget-boolean v8, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p1, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 548
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 549
    const/4 v8, 0x0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v8

    .line 616
    :goto_0
    return-object v8

    .line 551
    :cond_1
    const/4 v7, 0x0

    .line 553
    .local v7, "val":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .end local v7    # "val":Ljava/lang/Object;
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    const-class v8, Ljava/lang/Object;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 555
    invoke-direct {p0, v0, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->fieldsWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 556
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 561
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 568
    .local v3, "fieldVal":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->needsRecursion(Ljava/lang/reflect/Field;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 569
    if-eqz v3, :cond_2

    .line 570
    if-nez p3, :cond_3

    .line 571
    new-instance p3, Lorg/apache/ignite/internal/util/GridLeanSet;

    .end local p3    # "visited":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-direct {p3}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    .line 573
    .restart local p3    # "visited":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :cond_3
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-direct {p0, v3, p2, p3, p4}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->annotatedValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/util/Set;Z)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v6

    .line 578
    .local v6, "tup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    if-nez p4, :cond_4

    invoke-virtual {v6}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 580
    invoke-virtual {v6}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v7

    .line 582
    :cond_4
    invoke-virtual {v6}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    .line 583
    goto :goto_2

    .line 563
    .end local v3    # "fieldVal":Ljava/lang/Object;
    .end local v6    # "tup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v1

    .line 564
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get annotated field value [cls="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ann="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 586
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .restart local v3    # "fieldVal":Ljava/lang/Object;
    :cond_5
    if-eqz p4, :cond_6

    .line 587
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Multiple annotations have been found [cls="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ann="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 590
    :cond_6
    move-object v7, v3

    .line 592
    .restart local v7    # "val":Ljava/lang/Object;
    const/4 p4, 0x1

    goto/16 :goto_2

    .line 597
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "fieldVal":Ljava/lang/Object;
    .end local v7    # "val":Ljava/lang/Object;
    :cond_7
    invoke-direct {p0, v0, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->methodsWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    .line 598
    .local v5, "m":Ljava/lang/reflect/Method;
    if-eqz p4, :cond_8

    .line 599
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Multiple annotations have been found [cls="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ann="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 602
    :cond_8
    invoke-virtual {v5, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 605
    const/4 v8, 0x0

    :try_start_1
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 612
    .restart local v7    # "val":Ljava/lang/Object;
    const/4 p4, 0x1

    .line 613
    goto :goto_3

    .line 607
    .end local v7    # "val":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 608
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get annotated method value [cls="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ann="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 553
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto/16 :goto_1

    .line 616
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v8

    goto/16 :goto_0
.end method

.method private cacheFields(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 714
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p3, "fields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Field;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 715
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 716
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez p3, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 718
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->newCMap()Lorg/apache/ignite/lang/IgniteCallable;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 721
    .local v0, "annFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Ljava/util/Collection<Ljava/lang/reflect/Field;>;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 723
    :cond_3
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    return-void
.end method

.method private cacheMethods(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 751
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p3, "mtds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Method;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 752
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 753
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez p3, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 755
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->mtdCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->newCMap()Lorg/apache/ignite/lang/IgniteCallable;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 758
    .local v0, "annMtds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Ljava/util/Collection<Ljava/lang/reflect/Method;>;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 760
    :cond_3
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    return-void
.end method

.method private fieldsFromCache(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 698
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 699
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 701
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 703
    .local v0, "annCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Ljava/util/Collection<Ljava/lang/reflect/Field;>;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private fieldsWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Iterable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    sget-boolean v6, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 629
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    if-nez p2, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 631
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->fieldsFromCache(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v3

    .line 633
    .local v3, "fields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Field;>;"
    if-nez v3, :cond_5

    .line 634
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "fields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Field;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 636
    .restart local v3    # "fields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v2, v1, v4

    .line 637
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 639
    .local v0, "ann":Ljava/lang/annotation/Annotation;
    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->needsRecursion(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 640
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 636
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 643
    .end local v0    # "ann":Ljava/lang/annotation/Annotation;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_4
    invoke-direct {p0, p1, p2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->cacheFields(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 646
    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_5
    return-object v3
.end method

.method private methodsFromCache(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 734
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 735
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 737
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->mtdCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 739
    .local v0, "annCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Ljava/util/Collection<Ljava/lang/reflect/Method;>;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private methodsWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Iterable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 657
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    sget-boolean v6, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 658
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    if-nez p2, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 660
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->methodsFromCache(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v5

    .line 662
    .local v5, "mtds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Method;>;"
    if-nez v5, :cond_4

    .line 663
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "mtds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Method;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 665
    .restart local v5    # "mtds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    .line 666
    .local v4, "mtd":Ljava/lang/reflect/Method;
    invoke-virtual {v4, p2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 668
    .local v0, "ann":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_2

    .line 669
    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 665
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 672
    .end local v0    # "ann":Ljava/lang/annotation/Annotation;
    .end local v4    # "mtd":Ljava/lang/reflect/Method;
    :cond_3
    invoke-direct {p0, p1, p2, v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->cacheMethods(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 675
    .end local v1    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_4
    return-object v5
.end method

.method private needsRecursion(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    .line 683
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 686
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "this$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "val$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/concurrent/Callable;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Runnable;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

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


# virtual methods
.method public acquire()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 255
    new-array v1, v5, [I

    .line 258
    .local v1, "stamp":[I
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->usage:Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicStampedReference;->get([I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 260
    .local v2, "undeployed":Z
    aget v0, v1, v4

    .line 262
    .local v0, "r":I
    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    move v3, v4

    .line 267
    :goto_0
    return v3

    .line 266
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->usage:Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v3, v6, v7, v0, v8}, Ljava/util/concurrent/atomic/AtomicStampedReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    .line 267
    goto :goto_0
.end method

.method public varargs addDeployedClass(Ljava/lang/Class;[Ljava/lang/String;)Z
    .locals 8
    .param p2, "aliases"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 489
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 491
    .local v5, "res":Z
    if-eqz p1, :cond_2

    .line 492
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clss:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 494
    .local v2, "cur":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_0

    .line 495
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->onDeployed(Ljava/lang/Class;)V

    .line 497
    const/4 v5, 0x1

    .line 500
    :cond_0
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 501
    .local v0, "alias":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 502
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clss:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v0, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 506
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "cur":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    return v5
.end method

.method public annotatedValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/Object;"
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
    .line 532
    .local p2, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->annotatedValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/util/Set;Z)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public annotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->anns:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    .line 331
    .local v1, "clsAnns":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Lorg/apache/ignite/internal/util/lang/GridTuple<Ljava/lang/annotation/Annotation;>;>;"
    if-nez v1, :cond_0

    .line 332
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->anns:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lorg/jsr166/ConcurrentHashMap8;

    .end local v1    # "clsAnns":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Lorg/apache/ignite/internal/util/lang/GridTuple<Ljava/lang/annotation/Annotation;>;>;"
    invoke-direct {v1}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    .restart local v1    # "clsAnns":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Lorg/apache/ignite/internal/util/lang/GridTuple<Ljava/lang/annotation/Annotation;>;>;"
    invoke-interface {v3, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentMap;

    .line 335
    .local v2, "old":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Lorg/apache/ignite/internal/util/lang/GridTuple<Ljava/lang/annotation/Annotation;>;>;"
    if-eqz v2, :cond_0

    .line 336
    move-object v1, v2

    .line 339
    .end local v2    # "old":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Lorg/apache/ignite/internal/util/lang/GridTuple<Ljava/lang/annotation/Annotation;>;>;"
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/lang/GridTuple;

    .line 341
    .local v0, "ann":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<TT;>;"
    if-nez v0, :cond_1

    .line 342
    invoke-static {p1, p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v0

    .line 344
    invoke-interface {v1, p2, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/annotation/Annotation;

    return-object v3
.end method

.method public classLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clsLdr:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public deployMode()Lorg/apache/ignite/configuration/DeploymentMode;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    return-object v0
.end method

.method public varargs deployedClass(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;
    .locals 12
    .param p1, "clsName"    # Ljava/lang/String;
    .param p2, "alias"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 428
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clss:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v10, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 430
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v3, :cond_1

    .line 432
    const/4 v10, 0x1

    :try_start_0
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clsLdr:Ljava/lang/ClassLoader;

    invoke-static {p1, v10, v11}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 434
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clss:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v10, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 436
    .local v5, "cur":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v5, :cond_1

    .line 437
    move-object v2, p2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v0, v2, v6

    .line 438
    .local v0, "a":Ljava/lang/String;
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clss:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v10, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 441
    .end local v0    # "a":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->onDeployed(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "cur":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    :cond_1
    move-object v4, v3

    .line 478
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return-object v4

    .line 444
    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v7

    .line 446
    .local v7, "ignored":Ljava/lang/ClassNotFoundException;
    move-object v2, p2

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v9, v2

    .restart local v9    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_2
    if-ge v6, v9, :cond_1

    aget-object v0, v2, v6

    .line 447
    .restart local v0    # "a":Ljava/lang/String;
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clss:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v10, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v3, Ljava/lang/Class;

    .line 449
    .restart local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_2

    move-object v4, v3

    .line 450
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 451
    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 453
    const/4 v10, 0x1

    :try_start_1
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clsLdr:Ljava/lang/ClassLoader;

    invoke-static {v0, v10, v11}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 459
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clss:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v10, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 461
    .restart local v5    # "cur":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v5, :cond_6

    .line 462
    move-object v2, p2

    array-length v9, v2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v9, :cond_5

    aget-object v1, v2, v6

    .line 465
    .local v1, "a1":Ljava/lang/String;
    if-eq v1, v0, :cond_3

    .line 466
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clss:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v10, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 455
    .end local v1    # "a1":Ljava/lang/String;
    .end local v5    # "cur":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v8

    .line 446
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 469
    .restart local v5    # "cur":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->onDeployed(Ljava/lang/Class;)V

    :cond_6
    move-object v4, v3

    .line 472
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1
.end method

.method public deployedClassMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clss:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public deployedClasses()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 513
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clss:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public existingDeployedClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "clsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clss:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public hasName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 189
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clss:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public internalTask(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Class;)Z
    .locals 3
    .param p1, "task"    # Lorg/apache/ignite/compute/ComputeTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/compute/ComputeTask;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 359
    .local p2, "taskCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 361
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->internalTasks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 363
    .local v0, "res":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 364
    instance-of v1, p1, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    if-eqz v1, :cond_2

    check-cast p1, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    .end local p1    # "task":Lorg/apache/ignite/compute/ComputeTask;
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->deployClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const-class v2, Lorg/apache/ignite/internal/processors/task/GridInternal;

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->annotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->internalTasks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .restart local p1    # "task":Lorg/apache/ignite/compute/ComputeTask;
    :cond_2
    move-object v1, p2

    .line 364
    goto :goto_0

    .end local p1    # "task":Lorg/apache/ignite/compute/ComputeTask;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public local()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->loc:Z

    return v0
.end method

.method public localDeploymentOwner()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
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
    .line 380
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-boolean v4, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 382
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->dfltCtorsCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/util/lang/GridTuple;

    .line 384
    .local v3, "t":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Ljava/lang/reflect/Constructor<*>;>;"
    if-nez v3, :cond_2

    .line 386
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 388
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_1

    .line 389
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 391
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->dfltCtorsCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v3

    invoke-interface {v4, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :cond_2
    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 400
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v0, :cond_3

    .line 401
    const/4 v4, 0x0

    .line 404
    :goto_0
    return-object v4

    .line 393
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v2

    .line 394
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find empty constructor for class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 404
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_3
    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    goto :goto_0

    .line 406
    :catch_1
    move-exception v2

    .line 407
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create new instance for class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 406
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method public obsolete()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 295
    new-array v0, v3, [I

    .line 297
    .local v0, "stamp":[I
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->usage:Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicStampedReference;->get([I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 299
    .local v1, "undeployed":Z
    if-eqz v1, :cond_0

    aget v2, v0, v4

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method public onDeployed(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public onUndeployScheduled()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->pendingUndeploy:Z

    .line 246
    return-void
.end method

.method public participants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clsLdr:Ljava/lang/ClassLoader;

    instance-of v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clsLdr:Ljava/lang/ClassLoader;

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    invoke-interface {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->participants()Ljava/util/Map;

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pendingUndeploy()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->pendingUndeploy:Z

    return v0
.end method

.method public release()V
    .locals 7

    .prologue
    .line 275
    const/4 v3, 0x1

    new-array v1, v3, [I

    .line 278
    .local v1, "stamp":[I
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->usage:Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicStampedReference;->get([I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 280
    .local v2, "undeployed":Z
    const/4 v3, 0x0

    aget v0, v1, v3

    .line 282
    .local v0, "r":I
    sget-boolean v3, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-gtz v0, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid usages count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 284
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->usage:Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v3, v4, v5, v0, v6}, Ljava/util/concurrent/atomic/AtomicStampedReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    return-void
.end method

.method public sampleClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->sampleClsName:Ljava/lang/String;

    return-object v0
.end method

.method public sequenceNumber()J
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteUuid;->localId()J

    move-result-wide v0

    return-wide v0
.end method

.method public timestamp()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->ts:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 765
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 767
    .local v6, "stamp":[I
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->usage:Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicStampedReference;->get([I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 769
    .local v7, "undeployed":Z
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    const-string/jumbo v2, "undeployed"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v4, "usage"

    const/4 v1, 0x0

    aget v1, v6, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public undeploy()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 216
    new-array v1, v7, [I

    .line 219
    .local v1, "stamp":[I
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->usage:Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicStampedReference;->get([I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 221
    .local v2, "undeployed":Z
    if-eqz v2, :cond_1

    .line 227
    :goto_0
    return-void

    .line 224
    :cond_1
    aget v0, v1, v6

    .line 226
    .local v0, "r":I
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->usage:Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0, v0}, Ljava/util/concurrent/atomic/AtomicStampedReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public undeployed()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->usage:Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicStampedReference;->getReference()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public userVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->userVer:Ljava/lang/String;

    return-object v0
.end method
