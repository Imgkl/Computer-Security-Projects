.class final Lcom/urbanairship/push/iam/InAppMessageManager$5;
.super Lcom/urbanairship/LifeCycleCallbacks;
.source "InAppMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/InAppMessageManager;->registerLifeCycleCallbacks(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/Application;

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/urbanairship/LifeCycleCallbacks;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 688
    invoke-static {}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$900()Lcom/urbanairship/Cancelable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$900()Lcom/urbanairship/Cancelable;

    move-result-object v0

    invoke-interface {v0}, Lcom/urbanairship/Cancelable;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    invoke-static {}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$900()Lcom/urbanairship/Cancelable;

    move-result-object v0

    invoke-interface {v0}, Lcom/urbanairship/Cancelable;->cancel()V

    .line 694
    :goto_0
    return-void

    .line 693
    :cond_0
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getInAppMessageManager()Lcom/urbanairship/push/iam/InAppMessageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/iam/InAppMessageManager;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 678
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessageManager$5$3;

    invoke-direct {v0, p0, p1}, Lcom/urbanairship/push/iam/InAppMessageManager$5$3;-><init>(Lcom/urbanairship/push/iam/InAppMessageManager$5;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/urbanairship/UAirship;->shared(Lcom/urbanairship/UAirship$OnReadyCallback;)Lcom/urbanairship/Cancelable;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$902(Lcom/urbanairship/Cancelable;)Lcom/urbanairship/Cancelable;

    .line 684
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 643
    invoke-static {}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$608()I

    .line 645
    invoke-static {}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$700()Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$702(Z)Z

    .line 647
    invoke-static {}, Lcom/urbanairship/UAirship;->isFlying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getInAppMessageManager()Lcom/urbanairship/push/iam/InAppMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->onForeground()V

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessageManager$5$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/iam/InAppMessageManager$5$1;-><init>(Lcom/urbanairship/push/iam/InAppMessageManager$5;)V

    invoke-static {v0}, Lcom/urbanairship/UAirship;->shared(Lcom/urbanairship/UAirship$OnReadyCallback;)Lcom/urbanairship/Cancelable;

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 662
    invoke-static {}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$610()I

    .line 664
    invoke-static {}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$600()I

    move-result v0

    if-nez v0, :cond_0

    .line 665
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/urbanairship/push/iam/InAppMessageManager$5$2;

    invoke-direct {v1, p0}, Lcom/urbanairship/push/iam/InAppMessageManager$5$2;-><init>(Lcom/urbanairship/push/iam/InAppMessageManager$5;)V

    invoke-static {}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$800()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 674
    :cond_0
    return-void
.end method
