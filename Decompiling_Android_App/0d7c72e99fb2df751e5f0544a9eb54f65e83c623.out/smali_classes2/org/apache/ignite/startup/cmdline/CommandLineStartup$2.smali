.class final Lorg/apache/ignite/startup/cmdline/CommandLineStartup$2;
.super Ljava/lang/Object;
.source "CommandLineStartup.java"

# interfaces
.implements Lorg/apache/ignite/IgnitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/startup/cmdline/CommandLineStartup;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$gridName:Ljava/lang/String;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lorg/apache/ignite/startup/cmdline/CommandLineStartup$2;->val$gridName:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/ignite/startup/cmdline/CommandLineStartup$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Ljava/lang/String;Lorg/apache/ignite/IgniteState;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Lorg/apache/ignite/IgniteState;

    .prologue
    .line 308
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/CommandLineStartup$2;->val$gridName:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    sget-object v0, Lorg/apache/ignite/IgniteState;->STOPPED:Lorg/apache/ignite/IgniteState;

    if-eq p2, v0, :cond_2

    sget-object v0, Lorg/apache/ignite/IgniteState;->STOPPED_ON_SEGMENTATION:Lorg/apache/ignite/IgniteState;

    if-ne p2, v0, :cond_0

    .line 312
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/CommandLineStartup$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method
