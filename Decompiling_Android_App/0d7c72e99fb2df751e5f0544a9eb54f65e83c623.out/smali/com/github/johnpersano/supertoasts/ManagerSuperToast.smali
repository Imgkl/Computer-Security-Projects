.class public Lcom/github/johnpersano/supertoasts/ManagerSuperToast;
.super Landroid/os/Handler;
.source "ManagerSuperToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/johnpersano/supertoasts/ManagerSuperToast$Messages;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ManagerSuperToast"

.field private static mManagerSuperToast:Lcom/github/johnpersano/supertoasts/ManagerSuperToast;


# instance fields
.field private final mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/github/johnpersano/supertoasts/SuperToast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->mQueue:Ljava/util/Queue;

    .line 53
    return-void
.end method

.method private displaySuperToast(Lcom/github/johnpersano/supertoasts/SuperToast;)V
    .locals 6
    .param p1, "superToast"    # Lcom/github/johnpersano/supertoasts/SuperToast;

    .prologue
    .line 171
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperToast;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperToast;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 182
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperToast;->getView()Landroid/view/View;

    move-result-object v1

    .line 184
    .local v1, "toastView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperToast;->getWindowManagerParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 187
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz v2, :cond_1

    .line 189
    invoke-interface {v2, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    :cond_1
    const v3, 0x525354

    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperToast;->getDuration()I

    move-result v4

    add-int/lit16 v4, v4, 0x1f4

    int-to-long v4, v4

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->sendMessageDelayed(Lcom/github/johnpersano/supertoasts/SuperToast;IJ)V

    goto :goto_0
.end method

.method private getDuration(Lcom/github/johnpersano/supertoasts/SuperToast;)J
    .locals 4
    .param p1, "superToast"    # Lcom/github/johnpersano/supertoasts/SuperToast;

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperToast;->getDuration()I

    move-result v2

    int-to-long v0, v2

    .line 124
    .local v0, "duration":J
    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 126
    return-wide v0
.end method

.method protected static declared-synchronized getInstance()Lcom/github/johnpersano/supertoasts/ManagerSuperToast;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->mManagerSuperToast:Lcom/github/johnpersano/supertoasts/ManagerSuperToast;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->mManagerSuperToast:Lcom/github/johnpersano/supertoasts/ManagerSuperToast;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_0
    monitor-exit v1

    return-object v0

    .line 64
    :cond_0
    :try_start_1
    new-instance v0, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;

    invoke-direct {v0}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;-><init>()V

    sput-object v0, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->mManagerSuperToast:Lcom/github/johnpersano/supertoasts/ManagerSuperToast;

    .line 66
    sget-object v0, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->mManagerSuperToast:Lcom/github/johnpersano/supertoasts/ManagerSuperToast;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendMessageDelayed(Lcom/github/johnpersano/supertoasts/SuperToast;IJ)V
    .locals 1
    .param p1, "superToast"    # Lcom/github/johnpersano/supertoasts/SuperToast;
    .param p2, "messageId"    # I
    .param p3, "delay"    # J

    .prologue
    .line 114
    invoke-virtual {p0, p2}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 115
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    invoke-virtual {p0, v0, p3, p4}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 118
    return-void
.end method

.method private showNextSuperToast()V
    .locals 6

    .prologue
    .line 84
    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/johnpersano/supertoasts/SuperToast;

    .line 96
    .local v1, "superToast":Lcom/github/johnpersano/supertoasts/SuperToast;
    invoke-virtual {v1}, Lcom/github/johnpersano/supertoasts/SuperToast;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    const v2, 0x415354    # 5.9992E-39f

    invoke-virtual {p0, v2}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 99
    .local v0, "message":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    invoke-virtual {p0, v0}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 104
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    const v2, 0x445354

    invoke-direct {p0, v1}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->getDuration(Lcom/github/johnpersano/supertoasts/SuperToast;)J

    move-result-wide v4

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->sendMessageDelayed(Lcom/github/johnpersano/supertoasts/SuperToast;IJ)V

    goto :goto_0
.end method


# virtual methods
.method protected add(Lcom/github/johnpersano/supertoasts/SuperToast;)V
    .locals 1
    .param p1, "superToast"    # Lcom/github/johnpersano/supertoasts/SuperToast;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-direct {p0}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->showNextSuperToast()V

    .line 79
    return-void
.end method

.method protected cancelAllSuperToasts()V
    .locals 4

    .prologue
    .line 228
    const v2, 0x415354    # 5.9992E-39f

    invoke-virtual {p0, v2}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->removeMessages(I)V

    .line 229
    const v2, 0x445354

    invoke-virtual {p0, v2}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->removeMessages(I)V

    .line 230
    const v2, 0x525354

    invoke-virtual {p0, v2}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->removeMessages(I)V

    .line 232
    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/johnpersano/supertoasts/SuperToast;

    .line 234
    .local v1, "superToast":Lcom/github/johnpersano/supertoasts/SuperToast;
    invoke-virtual {v1}, Lcom/github/johnpersano/supertoasts/SuperToast;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {v1}, Lcom/github/johnpersano/supertoasts/SuperToast;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/johnpersano/supertoasts/SuperToast;->getView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 243
    .end local v1    # "superToast":Lcom/github/johnpersano/supertoasts/SuperToast;
    :cond_1
    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 245
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 133
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/github/johnpersano/supertoasts/SuperToast;

    .line 136
    .local v0, "superToast":Lcom/github/johnpersano/supertoasts/SuperToast;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 158
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 166
    :goto_0
    return-void

    .line 140
    :sswitch_0
    invoke-direct {p0}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->showNextSuperToast()V

    goto :goto_0

    .line 146
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->displaySuperToast(Lcom/github/johnpersano/supertoasts/SuperToast;)V

    goto :goto_0

    .line 152
    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->removeSuperToast(Lcom/github/johnpersano/supertoasts/SuperToast;)V

    goto :goto_0

    .line 136
    nop

    :sswitch_data_0
    .sparse-switch
        0x415354 -> :sswitch_1
        0x445354 -> :sswitch_0
        0x525354 -> :sswitch_2
    .end sparse-switch
.end method

.method protected removeSuperToast(Lcom/github/johnpersano/supertoasts/SuperToast;)V
    .locals 6
    .param p1, "superToast"    # Lcom/github/johnpersano/supertoasts/SuperToast;

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperToast;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 204
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperToast;->getView()Landroid/view/View;

    move-result-object v0

    .line 206
    .local v0, "toastView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 208
    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 210
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 212
    const v2, 0x445354

    const-wide/16 v4, 0x1f4

    invoke-direct {p0, p1, v2, v4, v5}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->sendMessageDelayed(Lcom/github/johnpersano/supertoasts/SuperToast;IJ)V

    .line 215
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperToast;->getOnDismissListener()Lcom/github/johnpersano/supertoasts/SuperToast$OnDismissListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 217
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperToast;->getOnDismissListener()Lcom/github/johnpersano/supertoasts/SuperToast$OnDismissListener;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperToast;->getView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/johnpersano/supertoasts/SuperToast$OnDismissListener;->onDismiss(Landroid/view/View;)V

    .line 223
    :cond_0
    return-void
.end method
