.class Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderListener;
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
    name = "SwipeHeaderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/managers/CalendarManager;


# direct methods
.method private constructor <init>(Lcom/eventgenie/android/utils/managers/CalendarManager;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderListener;->this$0:Lcom/eventgenie/android/utils/managers/CalendarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eventgenie/android/utils/managers/CalendarManager;Lcom/eventgenie/android/utils/managers/CalendarManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/eventgenie/android/utils/managers/CalendarManager;
    .param p2, "x1"    # Lcom/eventgenie/android/utils/managers/CalendarManager$1;

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderListener;-><init>(Lcom/eventgenie/android/utils/managers/CalendarManager;)V

    return-void
.end method


# virtual methods
.method public onPageChanged(II)V
    .locals 1
    .param p1, "oldPage"    # I
    .param p2, "newPage"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderListener;->this$0:Lcom/eventgenie/android/utils/managers/CalendarManager;

    # getter for: Lcom/eventgenie/android/utils/managers/CalendarManager;->mSwipeView:Lcom/eventgenie/android/ui/SwipeView;
    invoke-static {v0}, Lcom/eventgenie/android/utils/managers/CalendarManager;->access$600(Lcom/eventgenie/android/utils/managers/CalendarManager;)Lcom/eventgenie/android/ui/SwipeView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/eventgenie/android/ui/SwipeView;->scrollToPage(I)V

    .line 352
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderListener;->this$0:Lcom/eventgenie/android/utils/managers/CalendarManager;

    # getter for: Lcom/eventgenie/android/utils/managers/CalendarManager;->mPageControl:Lcom/eventgenie/android/ui/PageControl;
    invoke-static {v0}, Lcom/eventgenie/android/utils/managers/CalendarManager;->access$700(Lcom/eventgenie/android/utils/managers/CalendarManager;)Lcom/eventgenie/android/ui/PageControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/eventgenie/android/ui/PageControl;->setCurrentPage(I)V

    .line 353
    return-void
.end method
