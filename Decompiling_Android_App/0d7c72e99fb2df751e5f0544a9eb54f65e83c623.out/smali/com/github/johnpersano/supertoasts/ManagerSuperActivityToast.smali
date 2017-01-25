.class Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;
.super Landroid/os/Handler;
.source "ManagerSuperActivityToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast$Messages;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ManagerSuperActivityToast"

.field private static mManagerSuperActivityToast:Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;


# instance fields
.field private final mList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/github/johnpersano/supertoasts/SuperActivityToast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->mList:Ljava/util/LinkedList;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->showNextSuperToast()V

    return-void
.end method

.method private displaySuperToast(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)V
    .locals 8
    .param p1, "superActivityToast"    # Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v3

    .line 160
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getView()Landroid/view/View;

    move-result-object v2

    .line 162
    .local v2, "toastView":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 166
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 168
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getShowImmediate()Z

    move-result v4

    if-nez v4, :cond_2

    .line 170
    invoke-direct {p0, p1}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->getShowAnimation(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->isIndeterminate()Z

    move-result v4

    if-nez v4, :cond_0

    .line 185
    const v4, 0x52534154

    invoke-virtual {p0, v4}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 186
    .local v1, "message":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 187
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, p1}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->getShowAnimation(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {p0, v1, v4, v5}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 174
    .end local v1    # "message":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->cancelAllSuperActivityToastsForActivity(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method private getDismissAnimation(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)Landroid/view/animation/Animation;
    .locals 13
    .param p1, "superActivityToast"    # Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    .prologue
    .line 397
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getAnimations()Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    move-result-object v2

    sget-object v3, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FLYIN:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    if-ne v2, v3, :cond_0

    .line 399
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 403
    .local v0, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 405
    .local v11, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 406
    .local v12, "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 407
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 408
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 409
    const-wide/16 v2, 0xfa

    invoke-virtual {v12, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 450
    .end local v0    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v12    # "animationSet":Landroid/view/animation/AnimationSet;
    :goto_0
    return-object v12

    .line 413
    .end local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    :cond_0
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getAnimations()Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    move-result-object v2

    sget-object v3, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->SCALE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    if-ne v2, v3, :cond_1

    .line 415
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f666666    # 0.9f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 418
    .local v1, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 420
    .restart local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 421
    .restart local v12    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 422
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 423
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 424
    const-wide/16 v2, 0xfa

    invoke-virtual {v12, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    goto :goto_0

    .line 428
    .end local v1    # "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    .end local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v12    # "animationSet":Landroid/view/animation/AnimationSet;
    :cond_1
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getAnimations()Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    move-result-object v2

    sget-object v3, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->POPUP:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    if-ne v2, v3, :cond_2

    .line 430
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const v10, 0x3dcccccd    # 0.1f

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 434
    .restart local v0    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 436
    .restart local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 437
    .restart local v12    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 438
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 439
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 440
    const-wide/16 v2, 0xfa

    invoke-virtual {v12, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    goto :goto_0

    .line 446
    .end local v0    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v12    # "animationSet":Landroid/view/animation/AnimationSet;
    :cond_2
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 447
    .restart local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 448
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v11, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object v12, v11

    .line 450
    goto/16 :goto_0
.end method

.method protected static declared-synchronized getInstance()Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;
    .locals 2

    .prologue
    .line 63
    const-class v1, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->mManagerSuperActivityToast:Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->mManagerSuperActivityToast:Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :goto_0
    monitor-exit v1

    return-object v0

    .line 69
    :cond_0
    :try_start_1
    new-instance v0, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;

    invoke-direct {v0}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;-><init>()V

    sput-object v0, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->mManagerSuperActivityToast:Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;

    .line 71
    sget-object v0, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->mManagerSuperActivityToast:Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getShowAnimation(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)Landroid/view/animation/Animation;
    .locals 14
    .param p1, "superActivityToast"    # Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    .prologue
    .line 333
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getAnimations()Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    move-result-object v2

    sget-object v3, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FLYIN:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    if-ne v2, v3, :cond_0

    .line 335
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 339
    .local v0, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 341
    .local v11, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v13, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 342
    .local v13, "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 343
    invoke-virtual {v13, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 344
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v13, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 345
    const-wide/16 v2, 0xfa

    invoke-virtual {v13, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 386
    .end local v0    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v13    # "animationSet":Landroid/view/animation/AnimationSet;
    :goto_0
    return-object v13

    .line 349
    :cond_0
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getAnimations()Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    move-result-object v2

    sget-object v3, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->SCALE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    if-ne v2, v3, :cond_1

    .line 351
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 354
    .local v1, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 356
    .restart local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v13, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 357
    .restart local v13    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 358
    invoke-virtual {v13, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 359
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v13, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 360
    const-wide/16 v2, 0xfa

    invoke-virtual {v13, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    goto :goto_0

    .line 364
    .end local v1    # "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    .end local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v13    # "animationSet":Landroid/view/animation/AnimationSet;
    :cond_1
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getAnimations()Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    move-result-object v2

    sget-object v3, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->POPUP:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    if-ne v2, v3, :cond_2

    .line 366
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0x3dcccccd    # 0.1f

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 370
    .restart local v0    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 372
    .restart local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v13, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 373
    .restart local v13    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 374
    invoke-virtual {v13, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 375
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v13, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 376
    const-wide/16 v2, 0xfa

    invoke-virtual {v13, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    goto :goto_0

    .line 382
    .end local v0    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v13    # "animationSet":Landroid/view/animation/AnimationSet;
    :cond_2
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v12, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 383
    .local v12, "animation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v12, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 384
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object v13, v12

    .line 386
    goto/16 :goto_0
.end method

.method private showNextSuperToast()V
    .locals 3

    .prologue
    .line 95
    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    .line 97
    .local v1, "superActivityToast":Lcom/github/johnpersano/supertoasts/SuperActivityToast;
    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-virtual {v1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    const v2, 0x44534154

    invoke-virtual {p0, v2}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 106
    .local v0, "message":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    invoke-virtual {p0, v0}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method add(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)V
    .locals 1
    .param p1, "superActivityToast"    # Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-direct {p0}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->showNextSuperToast()V

    .line 87
    return-void
.end method

.method cancelAllSuperActivityToasts()V
    .locals 4

    .prologue
    .line 265
    const v2, 0x44534154

    invoke-virtual {p0, v2}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->removeMessages(I)V

    .line 266
    const v2, 0x52534154

    invoke-virtual {p0, v2}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->removeMessages(I)V

    .line 268
    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    .line 270
    .local v1, "superActivityToast":Lcom/github/johnpersano/supertoasts/SuperActivityToast;
    invoke-virtual {v1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    invoke-virtual {v1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 275
    invoke-virtual {v1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    .line 281
    .end local v1    # "superActivityToast":Lcom/github/johnpersano/supertoasts/SuperActivityToast;
    :cond_1
    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 283
    return-void
.end method

.method cancelAllSuperActivityToastsForActivity(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 290
    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 293
    .local v1, "superActivityToastIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/github/johnpersano/supertoasts/SuperActivityToast;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    .line 298
    .local v0, "superActivityToast":Lcom/github/johnpersano/supertoasts/SuperActivityToast;
    invoke-virtual {v0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    invoke-virtual {v0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    invoke-virtual {v0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 308
    :cond_1
    const v2, 0x44534154

    invoke-virtual {p0, v2, v0}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->removeMessages(ILjava/lang/Object;)V

    .line 309
    const v2, 0x52534154

    invoke-virtual {p0, v2, v0}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->removeMessages(ILjava/lang/Object;)V

    .line 311
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 317
    .end local v0    # "superActivityToast":Lcom/github/johnpersano/supertoasts/SuperActivityToast;
    :cond_2
    return-void
.end method

.method getList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/github/johnpersano/supertoasts/SuperActivityToast;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->mList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 117
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    .line 120
    .local v0, "superActivityToast":Lcom/github/johnpersano/supertoasts/SuperActivityToast;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 136
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 144
    :goto_0
    return-void

    .line 124
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->displaySuperToast(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)V

    goto :goto_0

    .line 130
    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->removeSuperToast(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)V

    goto :goto_0

    .line 120
    nop

    :sswitch_data_0
    .sparse-switch
        0x44534154 -> :sswitch_0
        0x52534154 -> :sswitch_1
    .end sparse-switch
.end method

.method removeSuperToast(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)V
    .locals 4
    .param p1, "superActivityToast"    # Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 202
    iget-object v3, p0, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->mList:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const v3, 0x52534154

    invoke-virtual {p0, v3, p1}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->removeMessages(ILjava/lang/Object;)V

    .line 211
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    .line 213
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getView()Landroid/view/View;

    move-result-object v1

    .line 215
    .local v1, "toastView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 217
    invoke-direct {p0, p1}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->getDismissAnimation(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 219
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v3, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast$1;

    invoke-direct {v3, p0, p1}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast$1;-><init>(Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;Lcom/github/johnpersano/supertoasts/SuperActivityToast;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 250
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 252
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 254
    iget-object v3, p0, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->mList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    goto :goto_0
.end method
