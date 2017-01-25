.class Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$2;
.super Ljava/lang/Object;
.source "MakeUnavailableActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$2;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$2;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    # getter for: Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;
    invoke-static {v0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->access$200(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;)Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->setHour(I)V

    .line 108
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$2;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    # getter for: Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;
    invoke-static {v0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->access$200(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;)Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->setMinute(I)V

    .line 109
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$2;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    # getter for: Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->mSelectedTimeUntil:Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;
    invoke-static {v0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->access$200(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;)Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->setReady(Z)V

    .line 110
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$2;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    const/4 v1, 0x2

    # invokes: Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->updateDisplay(I)V
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->access$100(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;I)V

    .line 111
    return-void
.end method
