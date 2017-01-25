.class public Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;
.super Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;
.source "MeetingFinaliseV2Activity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;
    }
.end annotation


# static fields
.field public static final MEETING_DATE_STRING_TO_DISPLAY:Ljava/lang/String; = "meeting_date_label"

.field public static final MEETING_DATE_VALUE:Ljava/lang/String; = "meeting_date_value"

.field public static final MEETING_LOCATION_DEFAULT:Ljava/lang/String; = "meeting_location"

.field public static final MEETING_LOCATION_KEY_LIST:Ljava/lang/String; = "meeting_location_keys"

.field public static final MEETING_LOCATION_LABEL_LIST:Ljava/lang/String; = "meeting_location_labels"

.field public static final MEETING_RESCHEDULE_ID_EXTRA:Ljava/lang/String; = "meeting_reschedule_id"

.field public static final MEETING_SUBJECT_DEFAULT:Ljava/lang/String; = "meeting_subject"

.field public static final MEETING_TIMESLOT:Ljava/lang/String; = "meeting_timeslot"

.field public static final MEETING_TIME_STRING_TO_DISPLAY:Ljava/lang/String; = "meeting_time_label"

.field public static final MEETING_TIME_VALUE:Ljava/lang/String; = "meeting_time_value"

.field public static final MEETING_TYPE_EXTRA:Ljava/lang/String; = "meeting_type"

.field public static final MESSAGE_TO_ID_EXTRA:Ljava/lang/String; = "message_to_id"

.field public static final VISITOR_PROFILE:Ljava/lang/String; = "visitor_profile"


# instance fields
.field public dateValid:Z

.field private db:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mEditCustomLocation:Landroid/widget/EditText;

.field private mEditMeetingDescription:Landroid/widget/EditText;

.field private mEditMeetingName:Landroid/widget/EditText;

.field private mFixedLocationKey:Ljava/lang/String;

.field private mLocationSpinner:Landroid/widget/Spinner;

.field private mMeetingDateValue:Ljava/lang/String;

.field private mMeetingRescheduleId:Ljava/lang/Long;

.field private mMeetingTimeValue:Ljava/lang/String;

.field private mMeetingType:I

.field private mSpinnerAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinnerKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinnerLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mToId:J

.field private mVisitorProfile:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->dateValid:Z

    .line 95
    iput-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mFixedLocationKey:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mMeetingTimeValue:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mMeetingDateValue:Ljava/lang/String;

    .line 239
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    .prologue
    .line 68
    iget v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mMeetingType:I

    return v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;)J
    .locals 2
    .param p0, "x0"    # Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mToId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mEditMeetingName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mEditMeetingDescription:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mFixedLocationKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mEditCustomLocation:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mMeetingTimeValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mMeetingDateValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mMeetingRescheduleId:Ljava/lang/Long;

    return-object v0
.end method

.method private toggleCustomLocationSelector(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 230
    if-eqz p1, :cond_0

    .line 231
    sget v0, Lcom/eventgenie/android/R$id;->rowLocationCustom:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    sget v0, Lcom/eventgenie/android/R$id;->disclaimer:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    sget v0, Lcom/eventgenie/android/R$id;->rowLocationCustom:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 235
    sget v0, Lcom/eventgenie/android/R$id;->disclaimer:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 358
    const-string v0, "^ MeetingFinalise. Visitor onClick: "

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mVisitorProfile:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mVisitorProfile:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->openVisitorDetailsActivity(Lorg/json/JSONObject;)V

    .line 361
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    .line 109
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    sget v3, Lcom/eventgenie/android/R$layout;->activity_meeting_finalise_v2:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->setContentView(I)V

    .line 111
    sget v3, Lcom/eventgenie/android/R$id;->header_meeting_date_and_time:I

    sget v4, Lcom/eventgenie/android/R$string;->header_meeting_date_and_time:I

    invoke-static {v3, v4, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(IILandroid/app/Activity;)V

    .line 112
    sget v3, Lcom/eventgenie/android/R$id;->header_meeting_location:I

    sget v4, Lcom/eventgenie/android/R$string;->header_meeting_location:I

    invoke-static {v3, v4, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(IILandroid/app/Activity;)V

    .line 113
    sget v3, Lcom/eventgenie/android/R$id;->header_meeting_name:I

    sget v4, Lcom/eventgenie/android/R$string;->header_meeting_name:I

    invoke-static {v3, v4, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(IILandroid/app/Activity;)V

    .line 114
    sget v3, Lcom/eventgenie/android/R$id;->header_meeting_with:I

    sget v4, Lcom/eventgenie/android/R$string;->header_meeting_with:I

    invoke-static {v3, v4, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(IILandroid/app/Activity;)V

    .line 115
    sget v3, Lcom/eventgenie/android/R$id;->header_meeting_notes:I

    sget v4, Lcom/eventgenie/android/R$string;->header_meeting_notes:I

    invoke-static {v3, v4, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(IILandroid/app/Activity;)V

    .line 117
    sget v3, Lcom/eventgenie/android/R$id;->fixedLocations:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mLocationSpinner:Landroid/widget/Spinner;

    .line 119
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->meeting_new:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->db:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 121
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_8

    .line 123
    const-string v3, "message_to_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mToId:J

    .line 124
    const-string v3, "meeting_location_labels"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mSpinnerLabels:Ljava/util/List;

    .line 125
    const-string v3, "meeting_location_keys"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mSpinnerKeys:Ljava/util/List;

    .line 126
    const-string v3, "meeting_time_value"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mMeetingTimeValue:Ljava/lang/String;

    .line 127
    const-string v3, "meeting_date_value"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mMeetingDateValue:Ljava/lang/String;

    .line 128
    const-string v3, "meeting_reschedule_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mMeetingRescheduleId:Ljava/lang/Long;

    .line 129
    const-string v3, "meeting_type"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mMeetingType:I

    .line 131
    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mMeetingRescheduleId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->meeting_reschedule:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    :cond_0
    iget v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mMeetingType:I

    if-nez v3, :cond_5

    .line 136
    const-string/jumbo v3, "visitor_profile"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 138
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    const-string/jumbo v4, "visitor_profile"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mVisitorProfile:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mVisitorProfile:Lorg/json/JSONObject;

    sget v4, Lcom/eventgenie/android/R$id;->visitorProfileBlock:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->populateVisitorDetailsBlock(Lorg/json/JSONObject;Landroid/view/View;)V

    .line 143
    sget v3, Lcom/eventgenie/android/R$id;->visitorProfileBlock:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    :cond_1
    :goto_1
    sget v3, Lcom/eventgenie/android/R$id;->time:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "meeting_time_label"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    sget v3, Lcom/eventgenie/android/R$id;->date:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "meeting_date_label"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    sget v3, Lcom/eventgenie/android/R$id;->customLocation:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mEditCustomLocation:Landroid/widget/EditText;

    .line 155
    sget v3, Lcom/eventgenie/android/R$id;->meetingName:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mEditMeetingName:Landroid/widget/EditText;

    .line 156
    sget v3, Lcom/eventgenie/android/R$id;->notes:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mEditMeetingDescription:Landroid/widget/EditText;

    .line 158
    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mEditMeetingName:Landroid/widget/EditText;

    sget v4, Lcom/eventgenie/android/R$string;->meeting_request_title:I

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(I)V

    .line 161
    const/4 v2, 0x1

    .line 162
    .local v2, "isSpinnerVisible":Z
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isAllowAdHocMeetings()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mSpinnerKeys:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mSpinnerKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v8, :cond_6

    .line 164
    :cond_2
    invoke-direct {p0, v8}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->toggleCustomLocationSelector(Z)V

    .line 165
    const/4 v2, 0x0

    .line 171
    :cond_3
    :goto_2
    if-eqz v2, :cond_7

    .line 172
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    iget-object v5, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mSpinnerLabels:Ljava/util/List;

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    .line 173
    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 175
    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mLocationSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 176
    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mLocationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 181
    :goto_3
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_action_light_accept:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->meetings_button_label_arrange_meeting:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton1(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton1(Z)V

    .line 186
    .end local v2    # "isSpinnerVisible":Z
    :goto_4
    return-void

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Lorg/json/JSONException;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mVisitorProfile:Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 145
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_4
    sget v3, Lcom/eventgenie/android/R$id;->visitorProfileBlock:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 147
    :cond_5
    iget v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mMeetingType:I

    if-ne v3, v8, :cond_1

    .line 148
    iget-wide v4, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mToId:J

    sget v3, Lcom/eventgenie/android/R$id;->visitorProfileBlock:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v4, v5, v3}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->populateExhibitorDetailsBlock(JLandroid/view/View;)V

    goto/16 :goto_1

    .line 167
    .restart local v2    # "isSpinnerVisible":Z
    :cond_6
    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mSpinnerLabels:Ljava/util/List;

    sget v4, Lcom/eventgenie/android/R$string;->other:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 178
    :cond_7
    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mLocationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v9}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_3

    .line 184
    .end local v2    # "isSpinnerVisible":Z
    :cond_8
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->finish()V

    goto :goto_4
.end method

.method public onCustomButton1Click(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mEditMeetingName:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mEditMeetingName:Landroid/widget/EditText;

    sget v1, Lcom/eventgenie/android/R$string;->meeting_request_title:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mFixedLocationKey:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mEditCustomLocation:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mEditCustomLocation:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEETINGS2: Meeting is valid!: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mFixedLocationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',  Custom Location: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mEditCustomLocation:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 198
    new-instance v0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity$SendMeetingTask;-><init>(Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_2
    sget v0, Lcom/eventgenie/android/R$string;->meeting_user_message_you_need_to_select_location:I

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;I)V

    .line 201
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mEditCustomLocation:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "position"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 210
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mSpinnerKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    cmp-long v1, p4, v2

    if-ltz v1, :cond_0

    .line 211
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->toggleCustomLocationSelector(Z)V

    .line 217
    :goto_0
    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mFixedLocationKey:Ljava/lang/String;

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEETINGS2: Location selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 219
    return-void

    .line 213
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->toggleCustomLocationSelector(Z)V

    .line 214
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mLocationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onVisitorNameClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mToId:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-wide v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->mToId:J

    const/4 v1, 0x0

    invoke-static {p0, v0, v2, v3, v1}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0
.end method
