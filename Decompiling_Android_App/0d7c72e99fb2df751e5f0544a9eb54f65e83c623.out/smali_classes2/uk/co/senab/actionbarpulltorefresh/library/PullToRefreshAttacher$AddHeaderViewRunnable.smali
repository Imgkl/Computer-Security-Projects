.class Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;
.super Ljava/lang/Object;
.source "PullToRefreshAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddHeaderViewRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;


# direct methods
.method private constructor <init>(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$1;)V
    .locals 0
    .param p1, "x0"    # Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;
    .param p2, "x1"    # Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$1;

    .prologue
    .line 646
    invoke-direct {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;-><init>(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)V

    return-void
.end method

.method private getDecorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->getAttachedActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 665
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 666
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    # invokes: Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->isDestroyed()Z
    invoke-static {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->access$100(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    :goto_0
    return-void

    .line 651
    :cond_0
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    iget-object v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    # getter for: Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;
    invoke-static {v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->access$200(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->addHeaderViewToActivity(Landroid/view/View;)V

    goto :goto_0

    .line 656
    :cond_1
    invoke-virtual {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;->start()V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 661
    invoke-direct {p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher$AddHeaderViewRunnable;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 662
    return-void
.end method
