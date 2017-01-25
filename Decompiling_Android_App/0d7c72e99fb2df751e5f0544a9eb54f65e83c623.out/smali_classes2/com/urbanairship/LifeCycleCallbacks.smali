.class public abstract Lcom/urbanairship/LifeCycleCallbacks;
.super Ljava/lang/Object;
.source "LifeCycleCallbacks.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final application:Landroid/app/Application;

.field private isRegistered:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/LifeCycleCallbacks;->isRegistered:Z

    .line 47
    iput-object p1, p0, Lcom/urbanairship/LifeCycleCallbacks;->application:Landroid/app/Application;

    .line 48
    new-instance v0, Lcom/urbanairship/LifeCycleCallbacks$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/LifeCycleCallbacks$1;-><init>(Lcom/urbanairship/LifeCycleCallbacks;)V

    iput-object v0, p0, Lcom/urbanairship/LifeCycleCallbacks;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 78
    return-void
.end method


# virtual methods
.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 120
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 127
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 113
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 106
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/urbanairship/LifeCycleCallbacks;->isRegistered:Z

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/urbanairship/LifeCycleCallbacks;->application:Landroid/app/Application;

    iget-object v1, p0, Lcom/urbanairship/LifeCycleCallbacks;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/LifeCycleCallbacks;->isRegistered:Z

    .line 89
    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/urbanairship/LifeCycleCallbacks;->isRegistered:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/urbanairship/LifeCycleCallbacks;->application:Landroid/app/Application;

    iget-object v1, p0, Lcom/urbanairship/LifeCycleCallbacks;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/LifeCycleCallbacks;->isRegistered:Z

    .line 99
    :cond_0
    return-void
.end method
