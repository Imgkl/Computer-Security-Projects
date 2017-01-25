.class public Lcom/eventgenie/android/activities/others/ProgressBarBlockingActivity;
.super Landroid/app/Activity;
.source "ProgressBarBlockingActivity.java"


# static fields
.field public static final DISMISS_KEY:Ljava/lang/String; = "dismissProgressBar"

.field public static instance:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isDismissAction(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    const-string v0, "dismissProgressBar"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProgressBarBlockingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/others/ProgressBarBlockingActivity;->isDismissAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProgressBarBlockingActivity;->finish()V

    .line 22
    sget-object v0, Lcom/eventgenie/android/activities/others/ProgressBarBlockingActivity;->instance:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/eventgenie/android/activities/others/ProgressBarBlockingActivity;->instance:Landroid/app/Activity;

    if-eq v0, p0, :cond_0

    .line 23
    sget-object v0, Lcom/eventgenie/android/activities/others/ProgressBarBlockingActivity;->instance:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/eventgenie/android/activities/others/ProgressBarBlockingActivity;->instance:Landroid/app/Activity;

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    sget-object v0, Lcom/eventgenie/android/activities/others/ProgressBarBlockingActivity;->instance:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProgressBarBlockingActivity;->finish()V

    goto :goto_0

    .line 33
    :cond_2
    sget v0, Lcom/eventgenie/android/R$layout;->activity_progresbar_blocking:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/ProgressBarBlockingActivity;->setContentView(I)V

    .line 34
    sput-object p0, Lcom/eventgenie/android/activities/others/ProgressBarBlockingActivity;->instance:Landroid/app/Activity;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 49
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/others/ProgressBarBlockingActivity;->isDismissAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProgressBarBlockingActivity;->finish()V

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/eventgenie/android/activities/others/ProgressBarBlockingActivity;->instance:Landroid/app/Activity;

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method
