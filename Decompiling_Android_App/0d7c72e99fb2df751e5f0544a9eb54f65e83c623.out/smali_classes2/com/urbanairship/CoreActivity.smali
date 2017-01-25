.class public Lcom/urbanairship/CoreActivity;
.super Landroid/app/Activity;
.source "CoreActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/urbanairship/CoreActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/app/Application;)V

    .line 44
    invoke-virtual {p0}, Lcom/urbanairship/CoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CoreActivity - Received intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 49
    const-string v1, "com.urbanairship.ACTION_NOTIFICATION_OPENED_PROXY"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-static {p0, v0}, Lcom/urbanairship/CoreReceiver;->handleNotificationOpenedProxy(Landroid/content/Context;Landroid/content/Intent;)V

    .line 56
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/urbanairship/CoreActivity;->finish()V

    .line 57
    return-void

    .line 51
    :cond_1
    const-string v1, "com.urbanairship.ACTION_NOTIFICATION_BUTTON_OPENED_PROXY"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-static {p0, v0}, Lcom/urbanairship/CoreReceiver;->handleNotificationButtonOpenedProxy(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
