.class Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeListener;
.super Ljava/lang/Object;
.source "CalendarManager.java"

# interfaces
.implements Lcom/eventgenie/android/ui/SwipeView$OnPageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/managers/CalendarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwipeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/managers/CalendarManager;


# direct methods
.method private constructor <init>(Lcom/eventgenie/android/utils/managers/CalendarManager;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeListener;->this$0:Lcom/eventgenie/android/utils/managers/CalendarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eventgenie/android/utils/managers/CalendarManager;Lcom/eventgenie/android/utils/managers/CalendarManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/eventgenie/android/utils/managers/CalendarManager;
    .param p2, "x1"    # Lcom/eventgenie/android/utils/managers/CalendarManager$1;

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeListener;-><init>(Lcom/eventgenie/android/utils/managers/CalendarManager;)V

    return-void
.end method


# virtual methods
.method public onPageChanged(II)V
    .locals 2
    .param p1, "oldPage"    # I
    .param p2, "newPage"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeListener;->this$0:Lcom/eventgenie/android/utils/managers/CalendarManager;

    # getter for: Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanels:Ljava/util/List;
    invoke-static {v0}, Lcom/eventgenie/android/utils/managers/CalendarManager;->access$400(Lcom/eventgenie/android/utils/managers/CalendarManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->getScrollView()Lcom/eventgenie/android/ui/ObservableScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/ObservableScrollView;->setScrollViewListener(Lcom/eventgenie/android/ui/ScrollViewListener;)V

    .line 374
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeListener;->this$0:Lcom/eventgenie/android/utils/managers/CalendarManager;

    # getter for: Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanels:Ljava/util/List;
    invoke-static {v0}, Lcom/eventgenie/android/utils/managers/CalendarManager;->access$400(Lcom/eventgenie/android/utils/managers/CalendarManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->getScrollView()Lcom/eventgenie/android/ui/ObservableScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeListener;->this$0:Lcom/eventgenie/android/utils/managers/CalendarManager;

    # getter for: Lcom/eventgenie/android/utils/managers/CalendarManager;->mScrollSync:Lcom/eventgenie/android/utils/managers/CalendarManager$ScrollSync;
    invoke-static {v1}, Lcom/eventgenie/android/utils/managers/CalendarManager;->access$900(Lcom/eventgenie/android/utils/managers/CalendarManager;)Lcom/eventgenie/android/utils/managers/CalendarManager$ScrollSync;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/ObservableScrollView;->setScrollViewListener(Lcom/eventgenie/android/ui/ScrollViewListener;)V

    .line 375
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeListener;->this$0:Lcom/eventgenie/android/utils/managers/CalendarManager;

    # invokes: Lcom/eventgenie/android/utils/managers/CalendarManager;->updateIndicators(I)V
    invoke-static {v0, p2}, Lcom/eventgenie/android/utils/managers/CalendarManager;->access$1000(Lcom/eventgenie/android/utils/managers/CalendarManager;I)V

    .line 376
    return-void
.end method
