.class Lcom/urbanairship/LifeCycleCallbacks$1;
.super Ljava/lang/Object;
.source "LifeCycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/LifeCycleCallbacks;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/LifeCycleCallbacks;


# direct methods
.method constructor <init>(Lcom/urbanairship/LifeCycleCallbacks;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/urbanairship/LifeCycleCallbacks$1;->this$0:Lcom/urbanairship/LifeCycleCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/urbanairship/LifeCycleCallbacks$1;->this$0:Lcom/urbanairship/LifeCycleCallbacks;

    invoke-virtual {v0, p1}, Lcom/urbanairship/LifeCycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 52
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/urbanairship/LifeCycleCallbacks$1;->this$0:Lcom/urbanairship/LifeCycleCallbacks;

    invoke-virtual {v0, p1}, Lcom/urbanairship/LifeCycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 57
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/urbanairship/LifeCycleCallbacks$1;->this$0:Lcom/urbanairship/LifeCycleCallbacks;

    invoke-virtual {v0, p1}, Lcom/urbanairship/LifeCycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 71
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/urbanairship/LifeCycleCallbacks$1;->this$0:Lcom/urbanairship/LifeCycleCallbacks;

    invoke-virtual {v0, p1}, Lcom/urbanairship/LifeCycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 76
    return-void
.end method
