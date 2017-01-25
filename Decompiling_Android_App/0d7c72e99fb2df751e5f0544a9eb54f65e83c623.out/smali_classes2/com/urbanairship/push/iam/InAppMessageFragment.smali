.class public Lcom/urbanairship/push/iam/InAppMessageFragment;
.super Landroid/app/Fragment;
.source "InAppMessageFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;
    }
.end annotation


# static fields
.field public static final DEFAULT_DURATION:J = 0x3a98L

.field private static final DISMISSED:Ljava/lang/String; = "dismissed"

.field private static final DISMISS_ANIMATION:Ljava/lang/String; = "dismiss_animation"

.field private static final DISMISS_ON_RECREATE:Ljava/lang/String; = "dismiss_on_recreate"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static isCardViewAvailable:Ljava/lang/Boolean;


# instance fields
.field private dismissOnRecreate:Z

.field private isDismissed:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private message:Lcom/urbanairship/push/iam/InAppMessage;

.field private timer:Lcom/urbanairship/push/iam/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/InAppMessage;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->timer:Lcom/urbanairship/push/iam/Timer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/urbanairship/push/iam/InAppMessageFragment;Ljava/util/Map;Lcom/urbanairship/actions/Situation;)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageFragment;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Lcom/urbanairship/actions/Situation;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/push/iam/InAppMessageFragment;->runActions(Ljava/util/Map;Lcom/urbanairship/actions/Situation;)V

    return-void
.end method

.method private static checkCardViewDependencyAvailable()Z
    .locals 2

    .prologue
    .line 380
    sget-object v1, Lcom/urbanairship/push/iam/InAppMessageFragment;->isCardViewAvailable:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 382
    :try_start_0
    const-string v1, "android.support.v7.widget.CardView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 383
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/push/iam/InAppMessageFragment;->isCardViewAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    sget-object v1, Lcom/urbanairship/push/iam/InAppMessageFragment;->isCardViewAvailable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 384
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 385
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/push/iam/InAppMessageFragment;->isCardViewAvailable:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static createArgs(Lcom/urbanairship/push/iam/InAppMessage;I)Landroid/os/Bundle;
    .locals 2
    .param p0, "message"    # Lcom/urbanairship/push/iam/InAppMessage;
    .param p1, "dismissAnimation"    # I

    .prologue
    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "message"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 117
    const-string v1, "dismiss_animation"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    return-object v0
.end method

.method private runActions(Ljava/util/Map;Lcom/urbanairship/actions/Situation;)V
    .locals 4
    .param p2, "situation"    # Lcom/urbanairship/actions/Situation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;",
            "Lcom/urbanairship/actions/Situation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, "actionValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    if-nez p1, :cond_1

    .line 409
    :cond_0
    return-void

    .line 403
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 404
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/urbanairship/actions/ActionRunRequest;->createRequest(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/urbanairship/actions/ActionValue;

    invoke-virtual {v3, v2}, Lcom/urbanairship/actions/ActionRunRequest;->setValue(Lcom/urbanairship/actions/ActionValue;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/urbanairship/actions/ActionRunRequest;->setSituation(Lcom/urbanairship/actions/Situation;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/actions/ActionRunRequest;->run()V

    goto :goto_0
.end method


# virtual methods
.method public final addListener(Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;

    .prologue
    .line 128
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    monitor-exit v1

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dismiss(Z)V
    .locals 6
    .param p1, "animate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 313
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->timer:Lcom/urbanairship/push/iam/Timer;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/Timer;->stop()V

    .line 315
    iget-boolean v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->isDismissed:Z

    if-eqz v2, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    monitor-enter v4

    .line 320
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;

    .line 321
    .local v1, "listener":Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;
    invoke-interface {v1, p0}, Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;->onFinish(Lcom/urbanairship/push/iam/InAppMessageFragment;)V

    goto :goto_1

    .line 323
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->isDismissed:Z

    .line 327
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "dismiss_animation"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_2
    invoke-virtual {v4, v3, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method public getDismissAnimation()I
    .locals 3

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dismiss_animation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMessage()Lcom/urbanairship/push/iam/InAppMessage;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    return-object v0
.end method

.method public isDismissed()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->isDismissed:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 147
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0, v3}, Lcom/urbanairship/push/iam/InAppMessageFragment;->setRetainInstance(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "message"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/urbanairship/push/iam/InAppMessage;

    iput-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    .line 152
    if-eqz p1, :cond_1

    const-string v2, "dismissed"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->isDismissed:Z

    .line 154
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->getDuration()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_2

    const-wide/16 v0, 0x3a98

    .line 155
    .local v0, "duration":J
    :goto_1
    new-instance v2, Lcom/urbanairship/push/iam/InAppMessageFragment$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/urbanairship/push/iam/InAppMessageFragment$1;-><init>(Lcom/urbanairship/push/iam/InAppMessageFragment;J)V

    iput-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->timer:Lcom/urbanairship/push/iam/Timer;

    .line 168
    if-eqz p1, :cond_0

    const-string v2, "dismiss_on_recreate"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-boolean v4, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->dismissOnRecreate:Z

    if-eq v2, v4, :cond_0

    .line 169
    const-string v2, "InAppMessageFragment - Dismissing on recreate."

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, v3}, Lcom/urbanairship/push/iam/InAppMessageFragment;->dismiss(Z)V

    .line 172
    :cond_0
    return-void

    .end local v0    # "duration":J
    :cond_1
    move v2, v4

    .line 152
    goto :goto_0

    .line 154
    :cond_2
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->getDuration()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewAPI"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 208
    iget-object v6, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v6}, Lcom/urbanairship/push/iam/InAppMessage;->getAlert()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 209
    :cond_0
    invoke-virtual {p0, v9}, Lcom/urbanairship/push/iam/InAppMessageFragment;->dismiss(Z)V

    move-object v5, v7

    .line 304
    :goto_0
    return-object v5

    .line 213
    :cond_1
    invoke-static {}, Lcom/urbanairship/push/iam/InAppMessageFragment;->checkCardViewDependencyAvailable()Z

    move-result v6

    if-eqz v6, :cond_4

    sget v3, Lcom/urbanairship/R$layout;->ua_fragment_iam_card:I

    .line 215
    .local v3, "layout":I
    :goto_1
    invoke-virtual {p1, v3, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    .line 218
    .local v5, "view":Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;
    invoke-virtual {v5}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 219
    .local v4, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v6}, Lcom/urbanairship/push/iam/InAppMessage;->getPosition()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_5

    const/16 v6, 0x30

    :goto_2
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 220
    invoke-virtual {v5, v4}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    new-instance v6, Lcom/urbanairship/push/iam/InAppMessageFragment$2;

    invoke-direct {v6, p0}, Lcom/urbanairship/push/iam/InAppMessageFragment$2;-><init>(Lcom/urbanairship/push/iam/InAppMessageFragment;)V

    invoke-virtual {v5, v6}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->setListener(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;)V

    .line 245
    sget v6, Lcom/urbanairship/R$id;->in_app_message:I

    invoke-virtual {v5, v6}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 247
    .local v1, "bannerView":Landroid/widget/FrameLayout;
    iget-object v6, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v6}, Lcom/urbanairship/push/iam/InAppMessage;->getClickActionValues()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 248
    new-instance v6, Lcom/urbanairship/push/iam/InAppMessageFragment$3;

    invoke-direct {v6, p0}, Lcom/urbanairship/push/iam/InAppMessageFragment$3;-><init>(Lcom/urbanairship/push/iam/InAppMessageFragment;)V

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    move-object v0, v1

    .line 264
    check-cast v0, Lcom/urbanairship/push/iam/view/Banner;

    .line 265
    .local v0, "banner":Lcom/urbanairship/push/iam/view/Banner;
    new-instance v6, Lcom/urbanairship/push/iam/InAppMessageFragment$4;

    invoke-direct {v6, p0}, Lcom/urbanairship/push/iam/InAppMessageFragment$4;-><init>(Lcom/urbanairship/push/iam/InAppMessageFragment;)V

    invoke-interface {v0, v6}, Lcom/urbanairship/push/iam/view/Banner;->setOnDismissClickListener(Lcom/urbanairship/push/iam/view/Banner$OnDismissClickListener;)V

    .line 275
    new-instance v6, Lcom/urbanairship/push/iam/InAppMessageFragment$5;

    invoke-direct {v6, p0}, Lcom/urbanairship/push/iam/InAppMessageFragment$5;-><init>(Lcom/urbanairship/push/iam/InAppMessageFragment;)V

    invoke-interface {v0, v6}, Lcom/urbanairship/push/iam/view/Banner;->setOnActionClickListener(Lcom/urbanairship/push/iam/view/Banner$OnActionClickListener;)V

    .line 291
    iget-object v6, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v6}, Lcom/urbanairship/push/iam/InAppMessage;->getPrimaryColor()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 292
    iget-object v6, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v6}, Lcom/urbanairship/push/iam/InAppMessage;->getPrimaryColor()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v0, v6}, Lcom/urbanairship/push/iam/view/Banner;->setPrimaryColor(I)V

    .line 295
    :cond_2
    iget-object v6, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v6}, Lcom/urbanairship/push/iam/InAppMessage;->getSecondaryColor()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 296
    iget-object v6, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v6}, Lcom/urbanairship/push/iam/InAppMessage;->getSecondaryColor()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v0, v6}, Lcom/urbanairship/push/iam/view/Banner;->setSecondaryColor(I)V

    .line 299
    :cond_3
    iget-object v6, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v6}, Lcom/urbanairship/push/iam/InAppMessage;->getAlert()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/urbanairship/push/iam/view/Banner;->setText(Ljava/lang/CharSequence;)V

    .line 301
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v6

    invoke-virtual {v6}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v6

    iget-object v7, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v7}, Lcom/urbanairship/push/iam/InAppMessage;->getButtonGroupId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/urbanairship/push/PushManager;->getNotificationActionGroup(Ljava/lang/String;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    .line 302
    .local v2, "group":Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;
    invoke-interface {v0, v2}, Lcom/urbanairship/push/iam/view/Banner;->setNotificationActionButtonGroup(Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;)V

    goto/16 :goto_0

    .line 213
    .end local v0    # "banner":Lcom/urbanairship/push/iam/view/Banner;
    .end local v1    # "bannerView":Landroid/widget/FrameLayout;
    .end local v2    # "group":Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;
    .end local v3    # "layout":I
    .end local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "view":Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;
    :cond_4
    sget v3, Lcom/urbanairship/R$layout;->ua_fragment_iam:I

    goto/16 :goto_1

    .line 219
    .restart local v3    # "layout":I
    .restart local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v5    # "view":Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;
    :cond_5
    const/16 v6, 0x50

    goto/16 :goto_2

    .line 260
    .restart local v1    # "bannerView":Landroid/widget/FrameLayout;
    :cond_6
    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 261
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 196
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->timer:Lcom/urbanairship/push/iam/Timer;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/Timer;->stop()V

    .line 198
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    monitor-enter v3

    .line 199
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;

    .line 200
    .local v1, "listener":Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;
    invoke-interface {v1, p0}, Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;->onPause(Lcom/urbanairship/push/iam/InAppMessageFragment;)V

    goto :goto_0

    .line 202
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 184
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->timer:Lcom/urbanairship/push/iam/Timer;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/Timer;->start()V

    .line 186
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    monitor-enter v3

    .line 187
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;

    .line 188
    .local v1, "listener":Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;
    invoke-interface {v1, p0}, Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;->onResume(Lcom/urbanairship/push/iam/InAppMessageFragment;)V

    goto :goto_0

    .line 190
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 177
    const-string v0, "dismissed"

    iget-boolean v1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->isDismissed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    const-string v0, "dismiss_on_recreate"

    iget-boolean v1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->dismissOnRecreate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 179
    return-void
.end method

.method public final removeListener(Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDismissOnRecreate(Z)V
    .locals 0
    .param p1, "dismissOnRecreate"    # Z

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment;->dismissOnRecreate:Z

    .line 373
    return-void
.end method
