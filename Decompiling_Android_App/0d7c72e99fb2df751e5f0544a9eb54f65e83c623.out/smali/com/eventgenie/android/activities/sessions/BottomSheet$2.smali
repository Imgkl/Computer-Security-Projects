.class Lcom/eventgenie/android/activities/sessions/BottomSheet$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/sessions/BottomSheet;->collapse(Landroid/widget/LinearLayout;)V
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
    .line 166
    iput-object p1, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet$2;->this$0:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    iput-object p2, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet$2;->val$view:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet$2;->val$view:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    return-void
.end method
