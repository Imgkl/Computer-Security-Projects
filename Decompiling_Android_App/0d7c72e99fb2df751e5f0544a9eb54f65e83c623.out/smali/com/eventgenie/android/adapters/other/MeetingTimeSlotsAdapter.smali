.class public Lcom/eventgenie/android/adapters/other/MeetingTimeSlotsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MeetingTimeSlotsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/genie_connect/android/net/container/gson/objects/TimeSlotGsonModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .param p1, "c"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/objects/TimeSlotGsonModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/TimeSlotGsonModel;>;"
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_meeting_timeslot:I

    const v1, 0x1020014

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 54
    .local v1, "row":Landroid/view/View;
    const v3, 0x1020014

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 55
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/other/MeetingTimeSlotsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/objects/TimeSlotGsonModel;

    .line 57
    .local v0, "item":Lcom/genie_connect/android/net/container/gson/objects/TimeSlotGsonModel;
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/other/MeetingTimeSlotsAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->formatTime(Landroid/content/Context;Lcom/genie_connect/android/net/container/gson/objects/TimeSlotGsonModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-object v1
.end method
