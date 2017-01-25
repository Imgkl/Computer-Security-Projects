.class Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;
.super Ljava/lang/Object;
.source "JobStealingCollisionSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageInfo"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private jobsToSteal:I

.field final synthetic this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

.field private ts:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 983
    const-class v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)V
    .locals 2

    .prologue
    .line 983
    iput-object p1, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 988
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->ts:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;
    .param p2, "x1"    # Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;

    .prologue
    .line 983
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;-><init>(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)V

    return-void
.end method


# virtual methods
.method expired()Z
    .locals 4

    .prologue
    .line 1003
    sget-boolean v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1005
    :cond_0
    iget v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->jobsToSteal:I

    if-lez v0, :cond_1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->ts:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->access$800(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method jobsToSteal()I
    .locals 1

    .prologue
    .line 994
    sget-boolean v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 996
    :cond_0
    iget v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->jobsToSteal:I

    return v0
.end method

.method reset(I)V
    .locals 2
    .param p1, "jobsToSteal"    # I

    .prologue
    .line 1012
    sget-boolean v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1014
    :cond_0
    iput p1, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->jobsToSteal:I

    .line 1016
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->ts:J

    .line 1017
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1021
    const-class v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
