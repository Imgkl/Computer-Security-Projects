.class public Lorg/apache/ignite/spi/IgniteSpiThreadFactory;
.super Ljava/lang/Object;
.source "IgniteSpiThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final gridName:Ljava/lang/String;

.field private final log:Lorg/apache/ignite/IgniteLogger;

.field private final threadName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/spi/IgniteSpiThreadFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/IgniteSpiThreadFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V
    .locals 1
    .param p1, "gridName"    # Ljava/lang/String;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-boolean v0, Lorg/apache/ignite/spi/IgniteSpiThreadFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 45
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/IgniteSpiThreadFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/spi/IgniteSpiThreadFactory;->gridName:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lorg/apache/ignite/spi/IgniteSpiThreadFactory;->threadName:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lorg/apache/ignite/spi/IgniteSpiThreadFactory;->log:Lorg/apache/ignite/IgniteLogger;

    .line 50
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 6
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 54
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiThreadFactory$1;

    iget-object v2, p0, Lorg/apache/ignite/spi/IgniteSpiThreadFactory;->gridName:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ignite/spi/IgniteSpiThreadFactory;->threadName:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/ignite/spi/IgniteSpiThreadFactory;->log:Lorg/apache/ignite/IgniteLogger;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/spi/IgniteSpiThreadFactory$1;-><init>(Lorg/apache/ignite/spi/IgniteSpiThreadFactory;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Ljava/lang/Runnable;)V

    return-object v0
.end method
