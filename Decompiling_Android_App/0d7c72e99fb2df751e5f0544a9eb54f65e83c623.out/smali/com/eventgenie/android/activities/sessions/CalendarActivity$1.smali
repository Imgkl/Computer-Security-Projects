.class Lcom/eventgenie/android/activities/sessions/CalendarActivity$1;
.super Ljava/lang/Object;
.source "CalendarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/sessions/CalendarActivity;->populateSchedule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/sessions/CalendarActivity;

.field final synthetic val$eventTimeZone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/sessions/CalendarActivity;Ljava/util/TimeZone;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/eventgenie/android/activities/sessions/CalendarActivity$1;->this$0:Lcom/eventgenie/android/activities/sessions/CalendarActivity;

    iput-object p2, p0, Lcom/eventgenie/android/activities/sessions/CalendarActivity$1;->val$eventTimeZone:Ljava/util/TimeZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 314
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/CalendarActivity$1;->val$eventTimeZone:Ljava/util/TimeZone;

    invoke-static {v2}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->getNowTime(Ljava/util/TimeZone;)Landroid/text/format/Time;

    move-result-object v1

    .line 315
    .local v1, "timeNowDay":Landroid/text/format/Time;
    iget v0, v1, Landroid/text/format/Time;->hour:I

    .line 317
    .local v0, "hourOfDay":I
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/CalendarActivity$1;->this$0:Lcom/eventgenie/android/activities/sessions/CalendarActivity;

    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/CalendarActivity$1;->this$0:Lcom/eventgenie/android/activities/sessions/CalendarActivity;

    sget v4, Lcom/eventgenie/android/R$id;->margin_time_scroll:I

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    # setter for: Lcom/eventgenie/android/activities/sessions/CalendarActivity;->visibleGantHeightPixels:I
    invoke-static {v2, v3}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->access$002(Lcom/eventgenie/android/activities/sessions/CalendarActivity;I)I

    .line 319
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/CalendarActivity$1;->this$0:Lcom/eventgenie/android/activities/sessions/CalendarActivity;

    # getter for: Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mMarginScrollView:Lcom/eventgenie/android/ui/ObservableScrollView;
    invoke-static {v2}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->access$100(Lcom/eventgenie/android/activities/sessions/CalendarActivity;)Lcom/eventgenie/android/ui/ObservableScrollView;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/CalendarActivity$1;->this$0:Lcom/eventgenie/android/activities/sessions/CalendarActivity;

    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/CalendarActivity$1;->this$0:Lcom/eventgenie/android/activities/sessions/CalendarActivity;

    # getter for: Lcom/eventgenie/android/activities/sessions/CalendarActivity;->visibleGantHeightPixels:I
    invoke-static {v4}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->access$000(Lcom/eventgenie/android/activities/sessions/CalendarActivity;)I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->scrollToTime(II)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v5, v3}, Lcom/eventgenie/android/ui/ObservableScrollView;->smoothScrollTo(II)V

    .line 321
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/CalendarActivity$1;->this$0:Lcom/eventgenie/android/activities/sessions/CalendarActivity;

    # setter for: Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mFirstRun:Z
    invoke-static {v2, v5}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->access$202(Lcom/eventgenie/android/activities/sessions/CalendarActivity;Z)Z

    .line 323
    return-void
.end method
