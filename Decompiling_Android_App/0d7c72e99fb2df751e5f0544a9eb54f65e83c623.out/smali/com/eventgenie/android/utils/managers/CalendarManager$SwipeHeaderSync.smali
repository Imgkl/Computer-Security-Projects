.class Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderSync;
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
    name = "SwipeHeaderSync"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/managers/CalendarManager;


# direct methods
.method private constructor <init>(Lcom/eventgenie/android/utils/managers/CalendarManager;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderSync;->this$0:Lcom/eventgenie/android/utils/managers/CalendarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eventgenie/android/utils/managers/CalendarManager;Lcom/eventgenie/android/utils/managers/CalendarManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/eventgenie/android/utils/managers/CalendarManager;
    .param p2, "x1"    # Lcom/eventgenie/android/utils/managers/CalendarManager$1;

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderSync;-><init>(Lcom/eventgenie/android/utils/managers/CalendarManager;)V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "oldx"    # I
    .param p5, "oldy"    # I

    .prologue
    .line 361
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderSync;->this$0:Lcom/eventgenie/android/utils/managers/CalendarManager;

    # getter for: Lcom/eventgenie/android/utils/managers/CalendarManager;->mSwipeViewHeader:Lcom/eventgenie/android/ui/SwipeView;
    invoke-static {v0}, Lcom/eventgenie/android/utils/managers/CalendarManager;->access$800(Lcom/eventgenie/android/utils/managers/CalendarManager;)Lcom/eventgenie/android/ui/SwipeView;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderSync;->this$0:Lcom/eventgenie/android/utils/managers/CalendarManager;

    # getter for: Lcom/eventgenie/android/utils/managers/CalendarManager;->mSwipeViewHeader:Lcom/eventgenie/android/ui/SwipeView;
    invoke-static {v0}, Lcom/eventgenie/android/utils/managers/CalendarManager;->access$800(Lcom/eventgenie/android/utils/managers/CalendarManager;)Lcom/eventgenie/android/ui/SwipeView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/eventgenie/android/ui/SwipeView;->scrollTo(II)V

    .line 367
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderSync;->this$0:Lcom/eventgenie/android/utils/managers/CalendarManager;

    # getter for: Lcom/eventgenie/android/utils/managers/CalendarManager;->mSwipeView:Lcom/eventgenie/android/ui/SwipeView;
    invoke-static {v0}, Lcom/eventgenie/android/utils/managers/CalendarManager;->access$600(Lcom/eventgenie/android/utils/managers/CalendarManager;)Lcom/eventgenie/android/ui/SwipeView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/eventgenie/android/ui/SwipeView;->scrollTo(II)V

    goto :goto_0
.end method
