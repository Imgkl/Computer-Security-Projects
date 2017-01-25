.class Lcom/eventgenie/android/ui/PageControl$1;
.super Ljava/lang/Object;
.source "PageControl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/ui/PageControl;->initPageControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/ui/PageControl;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/ui/PageControl;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/eventgenie/android/ui/PageControl$1;->this$0:Lcom/eventgenie/android/ui/PageControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/eventgenie/android/ui/PageControl$1;->this$0:Lcom/eventgenie/android/ui/PageControl;

    # getter for: Lcom/eventgenie/android/ui/PageControl;->mOnPageControlClickListener:Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;
    invoke-static {v0}, Lcom/eventgenie/android/ui/PageControl;->access$000(Lcom/eventgenie/android/ui/PageControl;)Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 164
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 125
    :pswitch_0
    iget-object v0, p0, Lcom/eventgenie/android/ui/PageControl$1;->this$0:Lcom/eventgenie/android/ui/PageControl;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/PageControl;->getOrientation()I

    move-result v0

    if-nez v0, :cond_3

    .line 127
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/PageControl$1;->this$0:Lcom/eventgenie/android/ui/PageControl;

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/PageControl;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/eventgenie/android/ui/PageControl$1;->this$0:Lcom/eventgenie/android/ui/PageControl;

    # getter for: Lcom/eventgenie/android/ui/PageControl;->mCurrentPage:I
    invoke-static {v0}, Lcom/eventgenie/android/ui/PageControl;->access$100(Lcom/eventgenie/android/ui/PageControl;)I

    move-result v0

    if-lez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/eventgenie/android/ui/PageControl$1;->this$0:Lcom/eventgenie/android/ui/PageControl;

    # getter for: Lcom/eventgenie/android/ui/PageControl;->mOnPageControlClickListener:Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;
    invoke-static {v0}, Lcom/eventgenie/android/ui/PageControl;->access$000(Lcom/eventgenie/android/ui/PageControl;)Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;->goBackwards()V

    .line 161
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/eventgenie/android/ui/PageControl$1;->this$0:Lcom/eventgenie/android/ui/PageControl;

    # getter for: Lcom/eventgenie/android/ui/PageControl;->mCurrentPage:I
    invoke-static {v0}, Lcom/eventgenie/android/ui/PageControl;->access$100(Lcom/eventgenie/android/ui/PageControl;)I

    move-result v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/PageControl$1;->this$0:Lcom/eventgenie/android/ui/PageControl;

    # getter for: Lcom/eventgenie/android/ui/PageControl;->mPageCount:I
    invoke-static {v1}, Lcom/eventgenie/android/ui/PageControl;->access$200(Lcom/eventgenie/android/ui/PageControl;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/eventgenie/android/ui/PageControl$1;->this$0:Lcom/eventgenie/android/ui/PageControl;

    # getter for: Lcom/eventgenie/android/ui/PageControl;->mOnPageControlClickListener:Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;
    invoke-static {v0}, Lcom/eventgenie/android/ui/PageControl;->access$000(Lcom/eventgenie/android/ui/PageControl;)Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;->goForwards()V

    goto :goto_1

    .line 144
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/PageControl$1;->this$0:Lcom/eventgenie/android/ui/PageControl;

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/PageControl;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 146
    iget-object v0, p0, Lcom/eventgenie/android/ui/PageControl$1;->this$0:Lcom/eventgenie/android/ui/PageControl;

    # getter for: Lcom/eventgenie/android/ui/PageControl;->mCurrentPage:I
    invoke-static {v0}, Lcom/eventgenie/android/ui/PageControl;->access$100(Lcom/eventgenie/android/ui/PageControl;)I

    move-result v0

    if-lez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/eventgenie/android/ui/PageControl$1;->this$0:Lcom/eventgenie/android/ui/PageControl;

    # getter for: Lcom/eventgenie/android/ui/PageControl;->mOnPageControlClickListener:Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;
    invoke-static {v0}, Lcom/eventgenie/android/ui/PageControl;->access$000(Lcom/eventgenie/android/ui/PageControl;)Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;->goBackwards()V

    goto :goto_1

    .line 153
    :cond_4
    iget-object v0, p0, Lcom/eventgenie/android/ui/PageControl$1;->this$0:Lcom/eventgenie/android/ui/PageControl;

    # getter for: Lcom/eventgenie/android/ui/PageControl;->mCurrentPage:I
    invoke-static {v0}, Lcom/eventgenie/android/ui/PageControl;->access$100(Lcom/eventgenie/android/ui/PageControl;)I

    move-result v0

    iget-object v1, p0, Lcom/eventgenie/android/ui/PageControl$1;->this$0:Lcom/eventgenie/android/ui/PageControl;

    # getter for: Lcom/eventgenie/android/ui/PageControl;->mPageCount:I
    invoke-static {v1}, Lcom/eventgenie/android/ui/PageControl;->access$200(Lcom/eventgenie/android/ui/PageControl;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/eventgenie/android/ui/PageControl$1;->this$0:Lcom/eventgenie/android/ui/PageControl;

    # getter for: Lcom/eventgenie/android/ui/PageControl;->mOnPageControlClickListener:Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;
    invoke-static {v0}, Lcom/eventgenie/android/ui/PageControl;->access$000(Lcom/eventgenie/android/ui/PageControl;)Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/eventgenie/android/ui/PageControl$OnPageControlClickListener;->goForwards()V

    goto :goto_1

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
