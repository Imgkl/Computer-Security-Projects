.class Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;
.super Ljava/lang/Object;
.source "GridContinuousProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalRoutineInfo"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final bufSize:I

.field private final hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

.field private final interval:J

.field private final prjPred:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1233
    const-class v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;IJ)V
    .locals 2
    .param p1    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "hnd"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    .param p3, "bufSize"    # I
    .param p4, "interval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1254
    .local p1, "prjPred":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1255
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1256
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gtz p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1257
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1259
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->prjPred:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 1260
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    .line 1261
    iput p3, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->bufSize:I

    .line 1262
    iput-wide p4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->interval:J

    .line 1263
    return-void
.end method

.method static synthetic access$2300(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;

    .prologue
    .line 1234
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->prjPred:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;

    .prologue
    .line 1234
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;

    .prologue
    .line 1234
    iget v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->bufSize:I

    return v0
.end method

.method static synthetic access$2600(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;

    .prologue
    .line 1234
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->interval:J

    return-wide v0
.end method


# virtual methods
.method handler()Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$LocalRoutineInfo;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    return-object v0
.end method
