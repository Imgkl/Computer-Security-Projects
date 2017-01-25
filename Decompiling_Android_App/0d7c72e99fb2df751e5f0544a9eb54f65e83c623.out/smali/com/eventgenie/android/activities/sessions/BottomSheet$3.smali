.class Lcom/eventgenie/android/activities/sessions/BottomSheet$3;
.super Ljava/lang/Object;
.source "BottomSheet.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/sessions/BottomSheet;->slideAnimator(Landroid/widget/LinearLayout;II)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/sessions/BottomSheet;

.field final synthetic val$view:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/sessions/BottomSheet;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet$3;->this$0:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    iput-object p2, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet$3;->val$view:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 195
    .local v1, "value":I
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet$3;->val$view:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 196
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 197
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet$3;->val$view:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    return-void
.end method
