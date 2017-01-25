.class Lcom/eventgenie/android/activities/sessions/BottomSheet$1;
.super Ljava/lang/Object;
.source "BottomSheet.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/sessions/BottomSheet;-><init>(Lcom/genie_connect/android/db/config/AppConfig;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/sessions/BottomSheet;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/sessions/BottomSheet;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet$1;->this$0:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 80
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet$1;->this$0:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    # getter for: Lcom/eventgenie/android/activities/sessions/BottomSheet;->mBottomSheetRootLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->access$000(Lcom/eventgenie/android/activities/sessions/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 81
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet$1;->this$0:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    # getter for: Lcom/eventgenie/android/activities/sessions/BottomSheet;->mBottomSheetRootLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->access$000(Lcom/eventgenie/android/activities/sessions/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 83
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 84
    .local v1, "widthSpec":I
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 85
    .local v0, "heightSpec":I
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/BottomSheet$1;->this$0:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    # getter for: Lcom/eventgenie/android/activities/sessions/BottomSheet;->mBottomSheetRootLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->access$000(Lcom/eventgenie/android/activities/sessions/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 87
    const/4 v2, 0x1

    return v2
.end method
