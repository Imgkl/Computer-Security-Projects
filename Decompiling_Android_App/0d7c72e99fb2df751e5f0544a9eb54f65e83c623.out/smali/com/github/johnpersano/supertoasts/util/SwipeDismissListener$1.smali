.class Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;


# direct methods
.method constructor <init>(Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$1;->this$0:Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$1;->this$0:Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;

    # invokes: Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->performDismiss()V
    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->access$000(Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;)V

    .line 138
    return-void
.end method
