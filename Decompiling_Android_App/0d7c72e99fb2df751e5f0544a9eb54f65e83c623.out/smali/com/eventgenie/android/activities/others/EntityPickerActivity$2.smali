.class Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;
.super Ljava/util/TimerTask;
.source "EntityPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/others/EntityPickerActivity;->onFilterTextChanged(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/EntityPickerActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/EntityPickerActivity;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;->this$0:Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;->this$0:Lcom/eventgenie/android/activities/others/EntityPickerActivity;

    new-instance v1, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2$1;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity$2$1;-><init>(Lcom/eventgenie/android/activities/others/EntityPickerActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method
