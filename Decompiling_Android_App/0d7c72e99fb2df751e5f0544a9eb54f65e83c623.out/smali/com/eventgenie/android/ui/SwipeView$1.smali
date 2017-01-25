.class Lcom/eventgenie/android/ui/SwipeView$1;
.super Ljava/lang/Object;
.source "SwipeView.java"

# interfaces
.implements Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/ui/SwipeView;->setPageControl(Lcom/eventgenie/android/ui/PageControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/ui/SwipeView;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/ui/SwipeView;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/eventgenie/android/ui/SwipeView$1;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public goBackwards()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/eventgenie/android/ui/SwipeView$1;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    iget-object v1, p0, Lcom/eventgenie/android/ui/SwipeView$1;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mCurrentPage:I
    invoke-static {v1}, Lcom/eventgenie/android/ui/SwipeView;->access$100(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/SwipeView;->smoothScrollToPage(I)V

    return-void
.end method

.method public goForwards()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/eventgenie/android/ui/SwipeView$1;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    iget-object v1, p0, Lcom/eventgenie/android/ui/SwipeView$1;->this$0:Lcom/eventgenie/android/ui/SwipeView;

    # getter for: Lcom/eventgenie/android/ui/SwipeView;->mCurrentPage:I
    invoke-static {v1}, Lcom/eventgenie/android/ui/SwipeView;->access$100(Lcom/eventgenie/android/ui/SwipeView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/SwipeView;->smoothScrollToPage(I)V

    return-void
.end method
