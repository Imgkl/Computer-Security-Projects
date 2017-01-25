.class Lcom/eventgenie/android/utils/managers/CalendarManager$ScrollSync;
.super Ljava/lang/Object;
.source "CalendarManager.java"

# interfaces
.implements Lcom/eventgenie/android/ui/ScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/managers/CalendarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollSync"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/managers/CalendarManager;


# direct methods
.method private constructor <init>(Lcom/eventgenie/android/utils/managers/CalendarManager;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/eventgenie/android/utils/managers/CalendarManager$ScrollSync;->this$0:Lcom/eventgenie/android/utils/managers/CalendarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eventgenie/android/utils/managers/CalendarManager;Lcom/eventgenie/android/utils/managers/CalendarManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/eventgenie/android/utils/managers/CalendarManager;
    .param p2, "x1"    # Lcom/eventgenie/android/utils/managers/CalendarManager$1;

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/managers/CalendarManager$ScrollSync;-><init>(Lcom/eventgenie/android/utils/managers/CalendarManager;)V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Landroid/view/View;IIII)V
    .locals 3
    .param p1, "scrollView"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "oldx"    # I
    .param p5, "oldy"    # I

    .prologue
    .line 335
    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/CalendarManager$ScrollSync;->this$0:Lcom/eventgenie/android/utils/managers/CalendarManager;

    # getter for: Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanels:Ljava/util/List;
    invoke-static {v2}, Lcom/eventgenie/android/utils/managers/CalendarManager;->access$400(Lcom/eventgenie/android/utils/managers/CalendarManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;

    .line 336
    .local v1, "panel":Lcom/eventgenie/android/ui/calendar/CalendarPanelView;
    invoke-virtual {v1}, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->getScrollView()Lcom/eventgenie/android/ui/ObservableScrollView;

    move-result-object v2

    if-eq v2, p1, :cond_1

    .line 337
    invoke-virtual {v1}, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->getScrollView()Lcom/eventgenie/android/ui/ObservableScrollView;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/eventgenie/android/ui/ObservableScrollView;->scrollTo(II)V

    .line 339
    :cond_1
    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/CalendarManager$ScrollSync;->this$0:Lcom/eventgenie/android/utils/managers/CalendarManager;

    # getter for: Lcom/eventgenie/android/utils/managers/CalendarManager;->mMarginScrollView:Lcom/eventgenie/android/ui/ObservableScrollView;
    invoke-static {v2}, Lcom/eventgenie/android/utils/managers/CalendarManager;->access$500(Lcom/eventgenie/android/utils/managers/CalendarManager;)Lcom/eventgenie/android/ui/ObservableScrollView;

    move-result-object v2

    if-eq v2, p1, :cond_0

    .line 340
    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/CalendarManager$ScrollSync;->this$0:Lcom/eventgenie/android/utils/managers/CalendarManager;

    # getter for: Lcom/eventgenie/android/utils/managers/CalendarManager;->mMarginScrollView:Lcom/eventgenie/android/ui/ObservableScrollView;
    invoke-static {v2}, Lcom/eventgenie/android/utils/managers/CalendarManager;->access$500(Lcom/eventgenie/android/utils/managers/CalendarManager;)Lcom/eventgenie/android/ui/ObservableScrollView;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/eventgenie/android/ui/ObservableScrollView;->scrollTo(II)V

    goto :goto_0

    .line 345
    .end local v1    # "panel":Lcom/eventgenie/android/ui/calendar/CalendarPanelView;
    :cond_2
    return-void
.end method
